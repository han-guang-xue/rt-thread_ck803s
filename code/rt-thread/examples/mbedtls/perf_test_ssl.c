#if !defined(MBEDTLS_CONFIG_FILE)
#include "mbedtls/config.h"
#else
#include MBEDTLS_CONFIG_FILE
#endif

#if defined(MBEDTLS_PLATFORM_C)
#include "mbedtls/platform.h"
#else
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define mbedtls_time       time 
#define mbedtls_time_t     time_t
#define mbedtls_fprintf    fprintf
#define mbedtls_printf     printf
#define mbedtls_malloc	   malloc
#endif

#include "mbedtls/threading.h"
#include "mbedtls/entropy_poll.h"

#if defined(RT_USING_LWIP) || defined(MBEDTLS_NET_C)
#define NETWORK_C
#endif

#define DEBUG_LEVEL 0

#define PERF_TEST_SSL_BUFFER_SIZE (8192)

typedef struct PERF_TEST_SSL_t{
    unsigned char *p;

    int mode;
    char ip[32];
    char port[16];

    int isreset;

    int nossl;
    
}PERF_TEST_SSL_t;

static PERF_TEST_SSL_t params;

static void my_debug( void *ctx, int level,
                      const char *file, int line,
                      const char *str )
{
    ((void) level);
    mbedtls_printf("%s:%d:%s",file,line,str);
    //mbedtls_printf( (FILE *) ctx, "%s:%04d: %s", file, line, str );
    //fflush(  (FILE *) ctx  );
}

#if !defined(MBEDTLS_BIGNUM_C) || !defined(MBEDTLS_ENTROPY_C) ||  \
    !defined(MBEDTLS_SSL_TLS_C) || !defined(MBEDTLS_SSL_CLI_C) || \
    !defined(NETWORK_C) || !defined(MBEDTLS_RSA_C) ||         \
    !defined(MBEDTLS_CERTS_C) || !defined(MBEDTLS_PEM_PARSE_C) || \
    !defined(MBEDTLS_CTR_DRBG_C) || !defined(MBEDTLS_X509_CRT_PARSE_C)
int ssl_test_client_main( s_and_r_info *sc,int f )

{
    mbedtls_printf("MBEDTLS_BIGNUM_C and/or MBEDTLS_ENTROPY_C and/or "
           "MBEDTLS_SSL_TLS_C and/or MBEDTLS_SSL_CLI_C and/or "
           "NETWORK_C and/or MBEDTLS_RSA_C and/or "
           "MBEDTLS_CTR_DRBG_C and/or MBEDTLS_X509_CRT_PARSE_C "
           "not defined.\n");
    return( 0 );
}
#else

#include "mbedtls/net_sockets.h"
#include "mbedtls/debug.h"
#include "mbedtls/ssl.h"
#include "mbedtls/entropy.h"
#include "mbedtls/ctr_drbg.h"
#include "mbedtls/error.h"
#include "mbedtls/certs.h"

static int ssl_test_client_main( PERF_TEST_SSL_t *c )
{  
    int ret;
    mbedtls_net_context server_fd;
    uint32_t flags;
    const char *pers = "ssl_client1";
    mbedtls_entropy_context entropy;
    mbedtls_ctr_drbg_context ctr_drbg;
    mbedtls_ssl_context ssl;
    mbedtls_ssl_config conf;
    mbedtls_x509_crt cacert;

#if defined(MBEDTLS_DEBUG_C)
    mbedtls_debug_set_threshold( DEBUG_LEVEL );
#endif

    /*
     * 0. Initialize the RNG and the session data
     */
    mbedtls_net_init( &server_fd );
    mbedtls_ssl_init( &ssl );
    mbedtls_ssl_config_init( &conf );
    mbedtls_x509_crt_init( &cacert );
    mbedtls_ctr_drbg_init( &ctr_drbg );

    //mbedtls_printf( "\n  . Seeding the random number generator..." );
    //fflush( stdout );

    mbedtls_entropy_init( &entropy );
    if( ( ret = mbedtls_ctr_drbg_seed( &ctr_drbg, mbedtls_entropy_func, &entropy,
                               (const unsigned char *) pers,
                               strlen( pers ) ) ) != 0 )
    {
        mbedtls_printf( " failed\n  ! mbedtls_ctr_drbg_seed returned %d\n", ret );
        goto exit;
    }

    //mbedtls_printf( " ok\n" );

    /*
     * 0. Initialize certificates
     */
    //mbedtls_printf( "  . Loading the CA root certificate ..." );
    //fflush( stdout );

    ret = mbedtls_x509_crt_parse( &cacert, (const unsigned char *) mbedtls_test_cas_pem,
                          mbedtls_test_cas_pem_len );
    if( ret < 0 )
    {
        mbedtls_printf( " failed\n  !  mbedtls_x509_crt_parse returned -0x%x\n\n", -ret );
        goto exit;
    }

    //mbedtls_printf( " ok (%d skipped)\n", ret );

    /*
     * 1. Start the connection
     */
    //mbedtls_printf( "  . Connecting to tcp/%s/%s...", SERVER_NAME, SERVER_PORT );
    //fflush( stdout );

    if( ( ret = mbedtls_net_connect( &server_fd, c->ip,
                                         c->port, MBEDTLS_NET_PROTO_TCP ) ) != 0 )
    {
        mbedtls_printf( " failed\n  ! mbedtls_net_connect returned %d\n\n", ret );
        goto exit;
    }

    //mbedtls_printf( " ok\n" );

    /*
     * 2. Setup stuff
     */
    //mbedtls_printf( "  . Setting up the SSL/TLS structure..." );
    //fflush( stdout );

    if( ( ret = mbedtls_ssl_config_defaults( &conf,
                    MBEDTLS_SSL_IS_CLIENT,
                    MBEDTLS_SSL_TRANSPORT_STREAM,
                    MBEDTLS_SSL_PRESET_DEFAULT ) ) != 0 )
    {
        mbedtls_printf( " failed\n  ! mbedtls_ssl_config_defaults returned %d\n\n", ret );
        goto exit;
    }

    //mbedtls_printf( " ok\n" );

    /* OPTIONAL is not optimal for security,
     * but makes interop easier in this simplified example */
    mbedtls_ssl_conf_authmode( &conf, MBEDTLS_SSL_VERIFY_OPTIONAL );
    mbedtls_ssl_conf_ca_chain( &conf, &cacert, NULL );
    mbedtls_ssl_conf_rng( &conf, mbedtls_hardware_random, NULL );
    mbedtls_ssl_conf_dbg( &conf, my_debug, stdout );

    if( ( ret = mbedtls_ssl_setup( &ssl, &conf ) ) != 0 )
    {
        mbedtls_printf( " failed\n  ! mbedtls_ssl_setup returned %d\n\n", ret );
        goto exit;
    }

    if( ( ret = mbedtls_ssl_set_hostname( &ssl, "localhost" ) ) != 0 )
    {
        mbedtls_printf( " failed\n  ! mbedtls_ssl_set_hostname returned %d\n\n", ret );
        goto exit;
    }

    mbedtls_ssl_set_bio( &ssl, &server_fd, mbedtls_net_send, mbedtls_net_recv, NULL );

    /*
     * 4. Handshake
     */
    //mbedtls_printf( "  . Performing the SSL/TLS handshake..." );
    //fflush( stdout );

    while( ( ret = mbedtls_ssl_handshake( &ssl ) ) != 0 )
    {
        if( ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE )
        {   
            mbedtls_printf( " failed\n  ! mbedtls_ssl_handshake returned -0x%x\n\n", -ret );
            goto exit;
        }
    }
    
    //mbedtls_printf( " ok\n" );

    /*
     * 5. Verify the server certificate
     */
    //mbedtls_printf( "  . Verifying peer X.509 certificate..." );

    /* In real life, we probably want to bail out when ret != 0 */
    if( ( flags = mbedtls_ssl_get_verify_result( &ssl ) ) != 0 )
    {
        char vrfy_buf[512];

        mbedtls_printf( " failed\n" );

        mbedtls_x509_crt_verify_info( vrfy_buf, sizeof( vrfy_buf ), "  ! ", flags );

        mbedtls_printf( "%s\n", vrfy_buf );
    }
    else{
        //mbedtls_printf( " ok\n" );
       }

    /*
     * 3. Write the GET request
     */
    //mbedtls_printf( "  > Write to server:" );
    //fflush( stdout );
		unsigned long l = 0;
        double r = 0.0f;
        unsigned long tick1;
        unsigned long tick2;
        //unsigned long t = 0;
#if defined(__linux__) || defined(_WIN32)
        tick1 = time(NULL);
#else
        tick1 = clock();
#endif

        c->isreset = 0;

    do{
        int cnt = 5;
        ret = 0;
        
        if( 0 == c->nossl ){
            ret = mbedtls_ssl_write( &ssl, c->p, PERF_TEST_SSL_BUFFER_SIZE );
        }else{
            ret = mbedtls_net_send( &server_fd, c->p, PERF_TEST_SSL_BUFFER_SIZE );
        }
        while( ret <= 0 && cnt >= 0 )
        {
            if( 0 == c->nossl ){
                ret = mbedtls_ssl_write( &ssl, c->p, PERF_TEST_SSL_BUFFER_SIZE );
            }else{
                ret = mbedtls_net_send( &server_fd, c->p, PERF_TEST_SSL_BUFFER_SIZE );
            }
            cnt--;
            if( ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE )
            {   
                mbedtls_printf( " failed\n  ! mbedtls_ssl_write returned %d\n\n", ret );
                goto exit;
            }
        }

                l += ret;
#if defined(__linux__) || defined(_WIN32)
                tick2 = time(NULL);
                r = tick2 - tick1;
#else
                 
        
                tick2 = clock();
                r = (tick2 - tick1)/RT_TICK_PER_SECOND; 
#endif
                 
        
                if( r > 5 ){
                     
                   r = l/r;
                   r = r/1024;
                   r = r/1024;
                   
                   mbedtls_printf("%lu %lu len:%lu\n",tick1,tick2,l);
                   mbedtls_printf( "rate:%.4lfMB/s\n", r );
                   l = 0;       
                   tick1 = tick2;
                }

  
    }while( !c->isreset );

    mbedtls_ssl_close_notify( &ssl );

exit:

    mbedtls_net_free( &server_fd );

    mbedtls_x509_crt_free( &cacert );
    mbedtls_ssl_free( &ssl );
    mbedtls_ssl_config_free( &conf );
    mbedtls_ctr_drbg_free( &ctr_drbg );
    mbedtls_entropy_free( &entropy );

    return( ret );
}
#endif /* MBEDTLS_BIGNUM_C && MBEDTLS_ENTROPY_C && MBEDTLS_SSL_TLS_C &&
          MBEDTLS_SSL_CLI_C && NETWORK_C && MBEDTLS_RSA_C &&
          MBEDTLS_CERTS_C && MBEDTLS_PEM_PARSE_C && MBEDTLS_CTR_DRBG_C &&
          MBEDTLS_X509_CRT_PARSE_C */

          
#if !defined(MBEDTLS_BIGNUM_C) || !defined(MBEDTLS_CERTS_C) ||    \
              !defined(MBEDTLS_ENTROPY_C) || !defined(MBEDTLS_SSL_TLS_C) || \
              !defined(MBEDTLS_SSL_SRV_C) || !defined(NETWORK_C) ||     \
              !defined(MBEDTLS_RSA_C) || !defined(MBEDTLS_CTR_DRBG_C) ||    \
              !defined(MBEDTLS_X509_CRT_PARSE_C)  || \
    !defined(MBEDTLS_PEM_PARSE_C)
void ssl_test_server_main( void )
{
	mbedtls_printf("MBEDTLS_BIGNUM_C and/or MBEDTLS_CERTS_C and/or MBEDTLS_ENTROPY_C "
                     "and/or MBEDTLS_SSL_TLS_C and/or MBEDTLS_SSL_SRV_C and/or "
                     "NETWORK_C and/or MBEDTLS_RSA_C and/or "
                     "MBEDTLS_CTR_DRBG_C and/or MBEDTLS_X509_CRT_PARSE_C "
                     "and/or MBEDTLS_PEM_PARSE_C not defined.\n");
	return( 0 );
}
#else
          
#include <stdlib.h>
#include <string.h>
          
#if defined(_WIN32)
#include <windows.h>
#endif
          
#include "mbedtls/entropy.h"
#include "mbedtls/ctr_drbg.h"
#include "mbedtls/certs.h"
#include "mbedtls/x509.h"
#include "mbedtls/ssl.h"
#include "mbedtls/net_sockets.h"
#include "mbedtls/error.h"
#include "mbedtls/debug.h"
          
#if defined(MBEDTLS_SSL_CACHE_C)
#include "mbedtls/ssl_cache.h"
#endif
          
static void ssl_test_server_main( void *param )
{

    PERF_TEST_SSL_t *s = (PERF_TEST_SSL_t *)param;
    
    int ret, len;
    mbedtls_net_context listen_fd, client_fd;
    const char *pers = "ssl_server";
    mbedtls_entropy_context entropy;
    mbedtls_ctr_drbg_context ctr_drbg;
    mbedtls_ssl_context ssl;
    mbedtls_ssl_config conf;
    mbedtls_x509_crt srvcert;
    mbedtls_pk_context pkey;
#if defined(MBEDTLS_SSL_CACHE_C)
    mbedtls_ssl_cache_context cache;
#endif     
    mbedtls_net_init( &listen_fd );
    mbedtls_net_init( &client_fd );
    mbedtls_ssl_init( &ssl );
    mbedtls_ssl_config_init( &conf );
#if defined(MBEDTLS_SSL_CACHE_C)
    mbedtls_ssl_cache_init( &cache );
#endif
    mbedtls_x509_crt_init( &srvcert );
    mbedtls_pk_init( &pkey );
    mbedtls_entropy_init( &entropy );
    mbedtls_ctr_drbg_init( &ctr_drbg );
          
#if defined(MBEDTLS_DEBUG_C)
    mbedtls_debug_set_threshold( DEBUG_LEVEL );
#endif
          
    /*
     * 1. Load the certificates and private RSA key
     */
    //mbedtls_printf( "\n  . Loading the server cert. and key..." );
    //fflush( stdout );
          
    /*
     * This demonstration program uses embedded test certificates.
     * Instead, you may want to use mbedtls_x509_crt_parse_file() to read the
     * server and CA certificates, as well as mbedtls_pk_parse_keyfile().
     */
    ret = mbedtls_x509_crt_parse( &srvcert, (const unsigned char *) mbedtls_test_srv_crt,
                                	mbedtls_test_srv_crt_len );
    if( ret != 0 )
    {
        mbedtls_printf( " failed\n  !  mbedtls_x509_crt_parse returned %d\n\n", ret );
        goto exit;
    }
          
    ret = mbedtls_x509_crt_parse( &srvcert, (const unsigned char *) mbedtls_test_cas_pem,
                                	mbedtls_test_cas_pem_len );
    if( ret != 0 )
    {
        mbedtls_printf( " failed\n  !  mbedtls_x509_crt_parse returned %d\n\n", ret );
        goto exit;
    }
          
    ret =  mbedtls_pk_parse_key( &pkey, (const unsigned char *) mbedtls_test_srv_key,
                         mbedtls_test_srv_key_len, NULL, 0 );
    if( ret != 0 )
    {
        mbedtls_printf( " failed\n  !  mbedtls_pk_parse_key returned %d\n\n", ret );
        goto exit;
    }
          
    //mbedtls_printf( " ok\n" );
          
    /*
     * 2. Setup the listening TCP socket
     */
    //mbedtls_printf( "  . Bind on https://localhost:%s/ ...", s->server_port );
    //fflush( stdout );
          
    if( ( ret = mbedtls_net_bind( &listen_fd, s->ip, s->port, MBEDTLS_NET_PROTO_TCP ) ) != 0 )
    {
        mbedtls_printf( " failed\n  ! mbedtls_net_bind returned %d\n\n", ret );
        goto exit;
    }
          
    //mbedtls_printf( " ok\n" );
          
    /*
     * 3. Seed the RNG
     */
    //mbedtls_printf( "  . Seeding the random number generator..." );
    //fflush( stdout );
          
    if( ( ret = mbedtls_ctr_drbg_seed( &ctr_drbg, mbedtls_entropy_func, &entropy,
                                         (const unsigned char *) pers,
                                         strlen( pers ) ) ) != 0 )
    {
        mbedtls_printf( " failed\n  ! mbedtls_ctr_drbg_seed returned %d\n", ret );
        goto exit;
    }
          
    //mbedtls_printf( " ok\n" );
          
    /*
     * 4. Setup stuff
     */
    //mbedtls_printf( "  . Setting up the SSL data...." );
    //fflush( stdout );
          
    if( ( ret = mbedtls_ssl_config_defaults( &conf,
                    MBEDTLS_SSL_IS_SERVER,
                    MBEDTLS_SSL_TRANSPORT_STREAM,
                    MBEDTLS_SSL_PRESET_DEFAULT ) ) != 0 )
    {
        mbedtls_printf( " failed\n  ! mbedtls_ssl_config_defaults returned %d\n\n", ret );
        goto exit;
    }
          
    mbedtls_ssl_conf_rng( &conf, mbedtls_hardware_random, NULL );
    mbedtls_ssl_conf_dbg( &conf, my_debug, stdout );
          
#if defined(MBEDTLS_SSL_CACHE_C)
    mbedtls_ssl_conf_session_cache( &conf, &cache,
                                             mbedtls_ssl_cache_get,
                                             mbedtls_ssl_cache_set );
#endif
          
    mbedtls_ssl_conf_ca_chain( &conf, srvcert.next, NULL );
    if( ( ret = mbedtls_ssl_conf_own_cert( &conf, &srvcert, &pkey ) ) != 0 )
    {
        mbedtls_printf( " failed\n  ! mbedtls_ssl_conf_own_cert returned %d\n\n", ret );
        goto exit;
    }
          
    if( ( ret = mbedtls_ssl_setup( &ssl, &conf ) ) != 0 )
    {
        mbedtls_printf( " failed\n  ! mbedtls_ssl_setup returned %d\n\n", ret );
        goto exit;
    }
          
    //mbedtls_printf( " ok\n" );
          
reset:

#ifdef MBEDTLS_ERROR_C
    if( ret != 0 )
    {
        char error_buf[100];
        mbedtls_strerror( ret, error_buf, 100 );
        mbedtls_printf("Recv Last error was: %d - %s\n\n", ret, error_buf );
    }
#endif
          
    mbedtls_net_free( &client_fd );
          
    mbedtls_ssl_session_reset( &ssl );
          
    /*
     * 3. Wait until a client connects
     */
    //mbedtls_printf( "  . Waiting for a remote connection ..." );
    //fflush( stdout );
          
    if( ( ret = mbedtls_net_accept( &listen_fd, &client_fd,
                                    NULL, 0, NULL ) ) != 0 )
    {   listen_fd.fd = -1;
        client_fd.fd = -1;
        mbedtls_printf( " failed\n  ! mbedtls_net_accept returned %d\n\n", ret );
        goto exit;
    }
     #if 1    
    mbedtls_ssl_set_bio( &ssl, &client_fd, mbedtls_net_send, mbedtls_net_recv, NULL );
          
    //mbedtls_printf( " ok\n" );
          
    /*
     * 5. Handshake
     */
    //mbedtls_printf( "  . Performing the SSL/TLS handshake..." );
    //fflush( stdout );      
    while( ( ret = mbedtls_ssl_handshake( &ssl ) ) != 0 )
    {
        if( ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE )
        {   
 
            mbedtls_printf( " failed\n  ! mbedtls_ssl_handshake returned %d\n\n", ret );
            goto reset;
        }
    }
  
    #endif
    //mbedtls_printf( " ok\n" );

	/*
     * 6. Read the HTTP Request
     */
    //mbedtls_printf( "  < Read random from client:" );
    //fflush( stdout );
    unsigned long l = 0; 
    double r = 0.0f;
    unsigned long tick1;
    unsigned long tick2;
    unsigned long t = 0;
#if defined(__linux__) || defined(_WIN32)
    tick1 = time(NULL);
#else
    tick1 = clock();
#endif
 
    s->isreset = 0;
    do
    {
     
        if( 0 == s->nossl ){
             
            ret = mbedtls_ssl_read( &ssl, s->p, PERF_TEST_SSL_BUFFER_SIZE);
        }else{
            //printf("562\n");
            ret = mbedtls_net_recv( &client_fd, s->p, PERF_TEST_SSL_BUFFER_SIZE );
        } 
        if( ret == MBEDTLS_ERR_SSL_WANT_READ || ret == MBEDTLS_ERR_SSL_WANT_WRITE )
            continue;
           
        if( ret <= 0 )
        {    
            switch( ret )
            { 
                case MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY:
                    mbedtls_printf( " connection was closed gracefully\n" );
                    break;
          
                case MBEDTLS_ERR_NET_CONN_RESET:
                    mbedtls_printf( " connection was reset by peer\n" );
                    break;
          
                default:
                    mbedtls_printf( " mbedtls_ssl_read returned -0x%x\n", -ret );
                    break;
            }
          
            break;
        }
        
        l += ret;
#if defined(__linux__) || defined(_WIN32)
        tick2 = time(NULL);
        r = tick2 - tick1;
#else
         

        tick2 = clock();
        r = (tick2 - tick1)/RT_TICK_PER_SECOND; 
#endif
         

        if( r > 5 ){
             
           r = l/r;
           r = r/1024;
           r = r/1024;
           
           mbedtls_printf("%lu %lu len:%lu\n",tick1,tick2,l);
           mbedtls_printf( "rate:%.8lfMB/s\n", r );
           l = 0;       
           tick1 = tick2;
        }
         


    }
    while( !s->isreset );
       
    mbedtls_printf( " ok\n" );
          
    ret = 0;
    goto reset;
           
exit:
          
#ifdef MBEDTLS_ERROR_C
    if( ret != 0 )
    {
        char error_buf[100];
        mbedtls_strerror( ret, error_buf, 100 );
        mbedtls_printf("Server recv Last error was: %d - %s\n\n", ret, error_buf );
    }
#endif
          
    mbedtls_net_free( &client_fd );
    mbedtls_net_free( &listen_fd );
          
    mbedtls_x509_crt_free( &srvcert );
    mbedtls_pk_free( &pkey );
    mbedtls_ssl_free( &ssl );
    mbedtls_ssl_config_free( &conf );
#if defined(MBEDTLS_SSL_CACHE_C)
    mbedtls_ssl_cache_free( &cache );
#endif
    mbedtls_ctr_drbg_free( &ctr_drbg );
    mbedtls_entropy_free( &entropy );
          
}
#endif /* MBEDTLS_BIGNUM_C && MBEDTLS_CERTS_C && MBEDTLS_ENTROPY_C &&
                	MBEDTLS_SSL_TLS_C && MBEDTLS_SSL_SRV_C && MBEDTLS_NET_C &&
                	MBEDTLS_RSA_C && MBEDTLS_CTR_DRBG_C && MBEDTLS_X509_CRT_PARSE_C
                    && MBEDTLS_FS_IO && MBEDTLS_PEM_PARSE_C */


static void _ssl_test_c_main( void *param ){

    PERF_TEST_SSL_t *c = (PERF_TEST_SSL_t *)param;

    while( 1 ){

        ssl_test_client_main( c );

        sleep(1);
    }
}

static void usage_print( char *program ){

    mbedtls_printf( "\n   %s <mode> <ip> <port>" \
                    "\n   mode=-s:server -c:client\n" \
                    "\n   example:%s -s 127.0.0.1 12345\n", program, program );
}

static void usage_input_print( PERF_TEST_SSL_t *pm ){

    mbedtls_printf( "\n%s is running, listening %s %s\n", pm->mode == 0?"Server":"Client", pm->port, pm->nossl?"nossl":"ssl" );
}

#if defined(__linux__) || defined(_WIN32)
int main( int argc, char *argv[] )
#else
int perf_test_ssl( int argc, char *argv[] )
#endif
{
    int ret = 0;

    if( argc == 1 ){
        
        usage_print( argv[0] );
        params.mode = 0;
        strcpy( params.ip, "192.168.100.47" );
        strcpy( params.port, "12345" );
        params.isreset = 0;
        //params.p = NULL;
        params.nossl = 0;
        
    }else if( argc == 4 ){

        params.mode = strcmp( argv[1], "-s" )?1:0;
        strcpy( params.ip, argv[2] );
        strcpy( params.port, argv[3] );
        params.isreset = 0;
        //params.p = NULL;
        params.nossl = 0;
        
    }else if( argc == 5 ){

        params.mode = strcmp( argv[1], "-s" )?1:0;
        strcpy( params.ip, argv[2] );
        strcpy( params.port, argv[3] );
        params.isreset = 0;
        //params.p = NULL;
        params.nossl = atoi(argv[4]);
        
    }else{
    
        usage_print( argv[0] );
        return 0;  
        
    }

    usage_input_print( &params );

    params.p = malloc( PERF_TEST_SSL_BUFFER_SIZE );
    if( !params.p ){
        mbedtls_printf("malloc failed\n");
        return 0;
    }

    switch(params.mode){
       case 0:
       {
#if defined(_WIN32)
            CreateThread(NULL,0,ssl_test_server_main,&params,0,NULL);     
#elif defined(__linux__)
    		pthread_t pid;
    		pthread_create( &pid, NULL, ssl_test_server_main, &params );
#else	
    		rt_thread_t pid;
    		pid = rt_thread_create( "ssl_server_test", ssl_test_server_main, &params, 10 * 1024, 15, 15 );
    	    if (pid)
            {
               rt_thread_startup(pid);
            }	
#endif
       }
	   break;
	   case 1:
       {
#if defined(_WIN32)
            CreateThread( NULL, 0, _ssl_test_c_main, &params, 0, NULL );     
#elif defined(__linux__) 
    		pthread_t pid;
    		pthread_create( &pid, NULL, _ssl_test_c_main, &params );
#else	
    		rt_thread_t pid;
    		pid = rt_thread_create( "ssl_server_test", _ssl_test_c_main, &params, 10 * 1024, 15, 15 );
    	    if (pid)
            {
               rt_thread_startup(pid);
            }	
#endif
       }
	   break;

	   default:
			mbedtls_printf( "Unsupported mode:%d\n", params.mode );
			break;
			
    }

#if defined(_WIN32) || defined(__linux__)

    int c = 'a';
    while( c != 'q'){
        if( c == 'r' )
            params.isreset = 1;
        c = getchar();
    }

    free(params.p);
#endif    

    return( ret );
}

int perf_test_ssl_reset(){
    params.isreset = 1;
    return 0;
}

#if defined(__linux__) || defined(_WIN32)
#else
MSH_CMD_EXPORT(perf_test_ssl, perf_test_ssl);
MSH_CMD_EXPORT(perf_test_ssl_reset, perf_test_ssl_reset);

#endif



