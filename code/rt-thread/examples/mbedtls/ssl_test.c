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
#endif

#include "mbedtls/threading.h"

#if defined(RT_USING_LWIP) || defined(MBEDTLS_NET_C)
#define NETWORK_C
#endif

#define DEBUG_LEVEL 0

#define DATA_SIZE 32

typedef struct _s_and_r_info{
    unsigned char sbuf[DATA_SIZE + 1];
    unsigned char rbuf[DATA_SIZE + 1];
    unsigned char pbuf[DATA_SIZE + 1];

    char client_port[DATA_SIZE];
    char server_port[DATA_SIZE];

    char client_ip[DATA_SIZE];
    char server_ip[DATA_SIZE];

    int over;

#if defined(MBEDTLS_THREADING_C)
    mbedtls_threading_mutex_t mutex;
#endif

    int loop;

    int mode; /* gmssl or TLS.*/

}s_and_r_info;

static void printbuf( char *str,unsigned char *buf, int len ){
    int i = 0;
    mbedtls_printf("%s ",str);
    len = 0;
    for(i = 0;i < len;i++){
        mbedtls_printf("%02x",buf[i]);
    }
    mbedtls_printf("\n");
}

static int err_cnt = 0;
static int ok_cnt = 0;

static void bufcmp( unsigned char *s,unsigned char *r ){

    if( memcmp( (void *)( s + 1 ), (void *)( r + 1 ), DATA_SIZE ) == 0 ){
        ok_cnt++;
        mbedtls_printf("\tsuccess");
    }else{
        printbuf( "sbuf ", s, DATA_SIZE + 1 );
        err_cnt++;
        mbedtls_printf("\tfail");

#if defined(__linux__)
        char buf[64];
        snprintf(buf,64,"echo error %d >> /home/suzhiyuan/log/log.log",err_cnt);
        system(buf);
#endif
    }

    mbedtls_printf("\tsuccess:%d fail:%d\n",ok_cnt,err_cnt);
}

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

int ssl_test_client_main( s_and_r_info *sc,int f )
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

    mbedtls_entropy_init( &entropy );
    if( ( ret = mbedtls_ctr_drbg_seed( &ctr_drbg, mbedtls_entropy_func, &entropy,
                               (const unsigned char *) pers,
                               strlen( pers ) ) ) != 0 )
    {
        mbedtls_printf( "[client] failed\n  ! mbedtls_ctr_drbg_seed returned %d\n", ret );
        goto exit;
    }

    //mbedtls_printf( " ok\n" );

    /*
     * 0. Initialize certificates
     */
    //mbedtls_printf( "  . Loading the CA root certificate ..." );
    ret = mbedtls_x509_crt_parse( &cacert, (const unsigned char *) mbedtls_test_cas_pem,
                          mbedtls_test_cas_pem_len );
    if( ret < 0 )
    {
        mbedtls_printf( "[client] failed\n  !  mbedtls_x509_crt_parse returned -0x%x\n\n", -ret );
        goto exit;
    }

    //mbedtls_printf( " ok (%d skipped)\n", ret );

    /*
     * 1. Start the connection
     */
    //mbedtls_printf( "  . Connecting to tcp/%s/%s...", SERVER_NAME, SERVER_PORT );
    if( ( ret = mbedtls_net_connect( &server_fd, sc->client_ip,
                                         sc->client_port, MBEDTLS_NET_PROTO_TCP ) ) != 0 )
    {
        mbedtls_printf( "[client] failed\n  ! mbedtls_net_connect returned %d\n\n", ret );
        goto exit;
    }

    //mbedtls_printf( " ok\n" );

    /*
     * 2. Setup stuff
     */
    //mbedtls_printf( "  . Setting up the SSL/TLS structure..." );
    if( ( ret = mbedtls_ssl_config_defaults( &conf,
                    MBEDTLS_SSL_IS_CLIENT,
                    MBEDTLS_SSL_TRANSPORT_STREAM,
                    sc->mode ) ) != 0 )
    {
        mbedtls_printf( "[client] failed\n  ! mbedtls_ssl_config_defaults returned %d\n\n", ret );
        goto exit;
    }

    //mbedtls_printf( " ok\n" );

    /* OPTIONAL is not optimal for security,
     * but makes interop easier in this simplified example */
    mbedtls_ssl_conf_authmode( &conf, MBEDTLS_SSL_VERIFY_OPTIONAL );
    mbedtls_ssl_conf_ca_chain( &conf, &cacert, NULL );
    mbedtls_ssl_conf_rng( &conf, mbedtls_ctr_drbg_random, &ctr_drbg );
    mbedtls_ssl_conf_dbg( &conf, my_debug, stdout );

    if( ( ret = mbedtls_ssl_setup( &ssl, &conf ) ) != 0 )
    {
        mbedtls_printf( "[client] failed\n  ! mbedtls_ssl_setup returned %d\n\n", ret );
        goto exit;
    }

    if( ( ret = mbedtls_ssl_set_hostname( &ssl, "localhost" ) ) != 0 )
    {
        mbedtls_printf( "[client] failed\n  ! mbedtls_ssl_set_hostname returned %d\n\n", ret );
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
            err_cnt++;
            mbedtls_printf( "[client] failed\n  ! mbedtls_ssl_handshake returned -0x%x\n\n", -ret );
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

        mbedtls_printf( "[client] failed\n" );

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

    unsigned char *p = NULL;

    if( f == 0 )
        p = sc->sbuf;
    else
        p = sc->pbuf;

    do{
        mbedtls_printf("[client] Write\n");
        int cnt = 5;
        while( ( ret = mbedtls_ssl_write( &ssl, p, DATA_SIZE + 1 ) ) <= 0 && cnt > 0 )
        {
            cnt--;
            if( ret != MBEDTLS_ERR_SSL_WANT_READ && ret != MBEDTLS_ERR_SSL_WANT_WRITE )
            {   
                err_cnt++;
                mbedtls_printf( "[client] failed\n  ! mbedtls_ssl_write returned %d\n\n", ret );
                goto exit;
            }
        }
        
        printbuf( "[client] send ", p, DATA_SIZE + 1 );

//        if( sc->loop )
//            sleep( 1 );
        
    }while( sc->loop );
    
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
          
void ssl_test_server_main( void *param )
{

    s_and_r_info *s = (s_and_r_info *)param;
    
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
        mbedtls_printf( "[Server] failed\n  !  mbedtls_x509_crt_parse returned %d\n\n", ret );
        goto exit;
    }
          
    ret = mbedtls_x509_crt_parse( &srvcert, (const unsigned char *) mbedtls_test_cas_pem,
                                    mbedtls_test_cas_pem_len );
    if( ret != 0 )
    {
        mbedtls_printf( "[Server] failed\n  !  mbedtls_x509_crt_parse returned %d\n\n", ret );
        goto exit;
    }
          
    ret =  mbedtls_pk_parse_key( &pkey, (const unsigned char *) mbedtls_test_srv_key,
                         mbedtls_test_srv_key_len, NULL, 0 );
    if( ret != 0 )
    {
        mbedtls_printf( "[Server] failed\n  !  mbedtls_pk_parse_key returned %d\n\n", ret );
        goto exit;
    }
          
    //mbedtls_printf( " ok\n" );
          
    /*
     * 2. Setup the listening TCP socket
     */
    //mbedtls_printf( "  . Bind on https://localhost:%s/ ...", s->server_port );
    //fflush( stdout );
          
    if( ( ret = mbedtls_net_bind( &listen_fd, s->server_ip, s->server_port, MBEDTLS_NET_PROTO_TCP ) ) != 0 )
    {
        mbedtls_printf( "[Server] failed\n  ! mbedtls_net_bind returned %d\n\n", ret );
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
        mbedtls_printf( "[Server] failed\n  ! mbedtls_ctr_drbg_seed returned %d\n", ret );
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
                    MBEDTLS_SSL_PRESET_SUITE_GE_AND_GM ) ) != 0 )
    {
        mbedtls_printf( "[Server] failed\n  ! mbedtls_ssl_config_defaults returned %d\n\n", ret );
        goto exit;
    }
          
    mbedtls_ssl_conf_rng( &conf, mbedtls_ctr_drbg_random, &ctr_drbg );
    mbedtls_ssl_conf_dbg( &conf, my_debug, stdout );
          
#if defined(MBEDTLS_SSL_CACHE_C)
    mbedtls_ssl_conf_session_cache( &conf, &cache,
                                             mbedtls_ssl_cache_get,
                                             mbedtls_ssl_cache_set );
#endif
          
    mbedtls_ssl_conf_ca_chain( &conf, srvcert.next, NULL );
    if( ( ret = mbedtls_ssl_conf_own_cert( &conf, &srvcert, &pkey ) ) != 0 )
    {
        mbedtls_printf( "[Server] failed\n  ! mbedtls_ssl_conf_own_cert returned %d\n\n", ret );
        goto exit;
    }
          
    if( ( ret = mbedtls_ssl_setup( &ssl, &conf ) ) != 0 )
    {
        mbedtls_printf( "[Server] failed\n  ! mbedtls_ssl_setup returned %d\n\n", ret );
        goto exit;
    }
          
    //mbedtls_printf( " ok\n" );
          
reset:

#ifdef MBEDTLS_ERROR_C
    if( ret != 0 )
    {
        char error_buf[100];
        mbedtls_strerror( ret, error_buf, 100 );
        mbedtls_printf("[Server] Recv Last error was: %d - %s\n\n", ret, error_buf );
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
    {
        mbedtls_printf( "[Server] failed\n  ! mbedtls_net_accept returned %d\n\n", ret );
        goto exit;
    }
          
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
            err_cnt++;
            mbedtls_printf( "[Server] failed\n  ! mbedtls_ssl_handshake returned %d\n\n", ret );
            goto reset;
        }
    }
    
    mbedtls_printf( "[Server] ciphersuite:%s\n", mbedtls_ssl_get_ciphersuite( &ssl ) );

    /*
     * 6. Read the HTTP Request
     */
    //mbedtls_printf( "  < Read random from client:" );
    //fflush( stdout );
          
    do
    {
        mbedtls_printf("[Server] Read \n");
        ret = mbedtls_ssl_read( &ssl, s->rbuf, DATA_SIZE + 1 );
          
        if( ret == MBEDTLS_ERR_SSL_WANT_READ || ret == MBEDTLS_ERR_SSL_WANT_WRITE )
            continue;
          
        if( ret <= 0 )
        {   err_cnt++;
            switch( ret )
            {
                case MBEDTLS_ERR_SSL_PEER_CLOSE_NOTIFY:
                    mbedtls_printf( "[Server] connection was closed gracefully\n" );
                    break;
          
                case MBEDTLS_ERR_NET_CONN_RESET:
                    mbedtls_printf( "[Server] connection was reset by peer\n" );
                    break;
          
                default:
                    mbedtls_printf( "[Server] mbedtls_ssl_read returned -0x%x\n", -ret );
                    break;
            }
          
            break;
        }
          
        len = ret;
        printbuf( "[Server] recv \n", s->rbuf, len );
        if(s->rbuf[0] == 0x01){
            bufcmp(s->sbuf,s->rbuf);

#if defined(MBEDTLS_THREADING_C)
            mbedtls_mutex_lock( &s->mutex );
#endif
            s->sbuf[0] = 0x00;
            mbedtls_ctr_drbg_random( &ctr_drbg, s->sbuf + 1, DATA_SIZE );
#if defined(MBEDTLS_THREADING_C)
            mbedtls_mutex_unlock( &s->mutex );
#endif
            s->over = 1;
        }else
        {

            s->rbuf[0] = 0x01;
#if defined(MBEDTLS_THREADING_C)
            mbedtls_mutex_lock( &s->mutex );
#endif
            memcpy( s->pbuf, s->rbuf, DATA_SIZE + 1 );
#if defined(MBEDTLS_THREADING_C)
            mbedtls_mutex_unlock( &s->mutex );
#endif
        }

        if( ret > 0 && !s->loop )
            break;
    }
    while( 1 );
      
    //mbedtls_printf( " ok\n" );
          
    ret = 0;
    goto reset;
          
exit:
          
#ifdef MBEDTLS_ERROR_C
    if( ret != 0 )
    {
        char error_buf[100];
        mbedtls_strerror( ret, error_buf, 100 );
        mbedtls_printf("[Server] Server recv Last error was: %d - %s\n\n", ret, error_buf );
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


void _ssl_test_c_main( void *param ){

    s_and_r_info *c = (s_and_r_info *)param;
    ssl_test_client_main( c, 0 );
    static int f = 20;
    while(1){

#if defined(MBEDTLS_THREADING_C)
            mbedtls_mutex_lock( &c->mutex );
#endif
            if( c->pbuf[0] == 0x01 ){
                ssl_test_client_main( c, 1 );
                c->pbuf[0] = 0x00;
            }
#if defined(MBEDTLS_THREADING_C)
            mbedtls_mutex_unlock( &c->mutex );
#endif
            f++;
#if defined(MBEDTLS_THREADING_C)
          mbedtls_mutex_lock( &c->mutex );
#endif

            if(c->over == 1||f > 30 ){
                f = 0;

                ssl_test_client_main( c, 0 );
                c->over = 0;
            }
#if defined(MBEDTLS_THREADING_C)
         mbedtls_mutex_unlock( &c->mutex );
#endif
//            sleep(1);
    }
}

void print_usage( char *argv0 )
{
    mbedtls_printf("Please input:%s myip myport perrip peerport protocol loop\n\n",argv0);
    mbedtls_printf("\tmyip:local ip\n");
    mbedtls_printf("\tmyport:local port\n");

    mbedtls_printf("\tpeerip:peer ip\n");
    mbedtls_printf("\tpeerport:peer port\n");

    mbedtls_printf("\tprotocol:0:gmssl 1:TLS\n");
    mbedtls_printf("\tloop 0:test for handshake 1:test for data\n");

    mbedtls_printf("\nexample:%s 127.0.0.1 11111 127.0.0.1 22222 0 0\n\n",argv0);
}

#if defined(__linux__) || defined(_WIN32)

int main(int argc,char *argv[]){

#else
int ssl_test(int argc,char *argv[] ){
#endif

#if defined(__linux__) || defined(_WIN32)
    if( argc < 5 )
    {
        print_usage( argv[0] );
        return 0;
    }
#endif
    s_and_r_info *info = malloc( sizeof(s_and_r_info) );
    memset( info, 0, sizeof(s_and_r_info) );

#if defined(MBEDTLS_THREADING_C)
    mbedtls_mutex_init( &info->mutex );
#endif

    if( info == NULL ){
        mbedtls_printf("malloc error\n");
        return -1;
    }

    strcpy( info->server_ip, argv[1] );
    strcpy( info->server_port, argv[2] );
    strcpy( info->client_ip, argv[3] );
    strcpy( info->client_port, argv[4] );

    if( argc > 5 )
        info->mode = atoi(argv[5]);
    if( argc > 6 )
        info->loop = atoi(argv[6]);

    //mbedtls_printf("%s:%s %s:%s %d %d\n",info->server_ip,info->server_port,info->client_ip,info->client_port,info->mode,info->loop);
    
#if defined(_WIN32)
        CreateThread(NULL,0,ssl_test_server_main,info,0,NULL);     
#elif defined(__linux__)
        pthread_t pid;
        pthread_create( &pid, NULL, ssl_test_server_main, info );
#else
        rt_thread_t pid;
        pid = rt_thread_create( "ssl_server_test", ssl_test_server_main, info, 6 * 1024, 15, 5 );
        if (pid)
        {
           rt_thread_startup(pid);
        }
#endif

#if defined(_WIN32)

        CreateThread(NULL,0,_ssl_test_c_main,info,0,NULL);

        while(1){
            sleep(10);
        }

        free(info);

#elif  defined(__linux__)

        pthread_t pid_c;
        pthread_create( &pid_c, NULL, _ssl_test_c_main, info );

        while(1){
            sleep(10);
        }
        free(info);
#else
        do{
            rt_thread_t pid_c;

            pid_c = rt_thread_create( "ssl_client_test", _ssl_test_c_main, info, 6 * 1024, 15, 5 );
            if (pid_c)
            {
                rt_thread_startup(pid_c);
            }
            
        }while(0);
#endif

    return 0;

}

#if defined(__linux__) || defined(_WIN32)
#else



MSH_CMD_EXPORT(ssl_test, ssl_test);
#endif
