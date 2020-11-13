/*
 *  FIPS-197 compliant AES implementation
 *
 *  Copyright (C) 2006-2015, ARM Limited, All Rights Reserved
 *  SPDX-License-Identifier: Apache-2.0
 *
 *  Licensed under the Apache License, Version 2.0 (the "License"); you may
 *  not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 *  WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 *  This file is part of mbed TLS (https://tls.mbed.org)
 */
/*
 *  The AES block cipher was designed by Vincent Rijmen and Joan Daemen.
 *
 *  http://csrc.nist.gov/encryption/aes/rijndael/Rijndael.pdf
 *  http://csrc.nist.gov/publications/fips/fips197/fips-197.pdf
 */

#if !defined(MBEDTLS_CONFIG_FILE)
#include "mbedtls/config.h"
#else
#include MBEDTLS_CONFIG_FILE
#endif

#if defined(MBEDTLS_AES_C)

#include <string.h>

#include "mbedtls/aes.h"
#include "mbedtls/sm4.h"
#include "mbedtls/sm3.h"
#if defined(MBEDTLS_PADLOCK_C)
#include "mbedtls/padlock.h"
#endif
#if defined(MBEDTLS_AESNI_C)
#include "mbedtls/aesni.h"
#endif

#if defined(MBEDTLS_SELF_TEST)
#if defined(MBEDTLS_PLATFORM_C)
#include "mbedtls/platform.h"
#else
#include <stdio.h>
#define mbedtls_printf printf
#define mbedtls_malloc malloc
#endif /* MBEDTLS_PLATFORM_C */
#endif /* MBEDTLS_SELF_TEST */

#define PERF_TEST_SIZE_DATA (128*1024)

/*
 * Checkup routine
 */
int aes_test( int argc, char *argv[] )
{
    int cnt = 1000;
    int mode = 0;
    int M = 0;
    int ret = 0, j = 0;
    unsigned char *p = NULL;
    mbedtls_aes_context ctx;
    unsigned char key[32] = {0};
    unsigned char iv[32] = {0};
    int len = 16;
    int offset = 0;
    unsigned long tick1 = 0,tick2 = 0;// = clock();


    //if ( argc < 5 ){
        mbedtls_printf("Usage:%s <dec/enc> <key length> <count> <offset> <MODE>\n", argv[0] );
        mbedtls_printf("eg:%s [0,1] [16,32] [0-100000] [0 - 3] [0 - 2]\n", argv[0] );
        //return 0;
    //}

    if(argc > 1)
        mode = atoi( argv[1] );
    if(argc > 2)
        len = atoi( argv[2] );
    if(argc > 3)
        cnt = atoi( argv[3] );
    if(argc > 4)
        offset = atoi( argv[4] );
    if(argc > 5)
        M = atoi( argv[5] );

    mbedtls_printf("\nYou input:%s %d %d %d %d %d\n\n", argv[0], mode, len, cnt, offset, M );

    p = mbedtls_malloc(PERF_TEST_SIZE_DATA + 4);

    if(p){
        mbedtls_printf("malloc success\n");
    }else{
        mbedtls_printf("malloc fail\n");
        return 0;
    }   
    p += offset;
    mbedtls_aes_init( &ctx );


    mbedtls_printf("test ");
    
    //CBC
    if( M == 1 )
    {
        mbedtls_printf("CBC:\n");
        memset( key, 0x55, 32 );
        memset( iv, 0x55, 32 );

        if(mode)
            mbedtls_aes_setkey_enc( &ctx, key, len*8 );
        else
            mbedtls_aes_setkey_dec( &ctx, key, len*8 );

        tick1 = clock();
        for( j = 0; j < cnt&&ret == 0; j++ ){
            ret = mbedtls_aes_crypt_cbc( &ctx, mode, PERF_TEST_SIZE_DATA,iv,p + offset, p + offset );
        }
        tick2 = clock();
    }

    //ECB
    if( M == 0 )
    {   mbedtls_printf("ECB:\n");
        mbedtls_aes_init( &ctx );
        memset( key, 0x55, 32 );
        memset( iv, 0x55, 32 );

        if(mode)
            mbedtls_aes_setkey_enc( &ctx, key, len*8 );
        else
            mbedtls_aes_setkey_dec( &ctx, key, len*8 );
        
        int l = PERF_TEST_SIZE_DATA;
        unsigned char *q = p;
        tick1 = clock();
        for( j = 0; j < cnt&&ret == 0; j++ ){
            l = PERF_TEST_SIZE_DATA;
            q = p;
            while( l > 0 ){
                ret = mbedtls_aes_crypt_ecb( &ctx, mode, q + offset, q + offset );
                l -= 16;
                q += 16;
            }
        }
        tick2 = clock();
    }

    //CTR
    if( M == 2 )
    {   mbedtls_printf("CTR:\n");
        size_t off = 0;
        unsigned char nc_c[32];
        unsigned char block[32];
    
        mbedtls_aes_init( &ctx );
        memset( key, 0x55, 32 );
        memset( iv, 0x55, 32 );
        memset( nc_c, 0x55, 32 );
        memset( block, 0x55, 32 );

        mbedtls_aes_setkey_enc( &ctx, key, len*8 );
        
 
        unsigned char *q = p;
        tick1 = clock();
        for( j = 0; j < cnt&&ret == 0; j++ ){
 
            ret = mbedtls_aes_crypt_ctr( &ctx, PERF_TEST_SIZE_DATA, &off, nc_c, block, q + offset, q + offset );
        }
        tick2 = clock();
    }

    //CFB128
    if( M == 3 )
    {   mbedtls_printf("CFB128:\n");
        size_t off = 0;
        unsigned char nc_c[32];
        unsigned char block[32];
    
        mbedtls_aes_init( &ctx );
        memset( key, 0x55, 32 );
        memset( iv, 0x55, 32 );
        memset( nc_c, 0x55, 32 );
        memset( block, 0x55, 32 );

        mbedtls_aes_setkey_enc( &ctx, key, len*8 );
        
        unsigned char *q = p;
        tick1 = clock();
        for( j = 0; j < cnt&&ret == 0; j++ ){
 
            ret = mbedtls_aes_crypt_cfb128( &ctx, mode, PERF_TEST_SIZE_DATA, &off, iv, q + offset, q + offset );
        }
        tick2 = clock();
    }

    if( ret != 0 ){
        printf("failed\n");
        goto exit;
    }

    printf("success\n");
    long r1 = PERF_TEST_SIZE_DATA*cnt;
    long r2 = tick2 - tick1;
    double r3 = r1/r2;
    r3 /= 10000;
    
    mbedtls_printf("%ld %ld %lf\n",r1,r2,r3);
    mbedtls_printf("test over,time:%lu ret= %d\n",tick2 - tick1,ret);
    
exit:
	mbedtls_aes_free( &ctx );
    p -= offset;
    free(p);
    
    return( ret );
}

int sm4_test( int argc, char *argv[] )
{
    int cnt = 1000;
    int mode = 0;
    int M = 0;
    int ret = 0, j = 0;
    unsigned char *p = NULL;
    mbedtls_sm4_context ctx;
    unsigned char key[32] = {0};
    unsigned char iv[32] = {0};
    int len = 16;
    int offset = 0;
    unsigned long tick1 = 0,tick2 = 0;// = clock();

	int l = PERF_TEST_SIZE_DATA;
    //if ( argc < 5 ){
        mbedtls_printf("Usage:%s <dec/enc> <key length> <count> <offset> <MODE>\n", argv[0] );
        mbedtls_printf("eg:%s [0,1] [16,32] [0-100000] [0 - 3] [0 - 2]\n", argv[0] );
        //return 0;
    //}

    if(argc > 1)
        mode = atoi( argv[1] );
    if(argc > 2)
        len = atoi( argv[2] );
    if(argc > 3)
        cnt = atoi( argv[3] );
    if(argc > 4)
        offset = atoi( argv[4] );
    if(argc > 5)
        M = atoi( argv[5] );

    mbedtls_printf("\nYou input:%s %d %d %d %d %d\n\n", argv[0], mode, len, cnt, offset, M );

    p = mbedtls_malloc(PERF_TEST_SIZE_DATA + 4);

    if(p){
        mbedtls_printf("malloc success\n");
    }else{
        mbedtls_printf("malloc fail\n");
        return 0;
    }   

    mbedtls_sm4_init( &ctx );


    mbedtls_printf("test ");
    
    //CBC
    if( M == 1 )
    {
        mbedtls_printf("CBC:\n");
        memset( key, 0x55, 32 );
        memset( iv, 0x55, 32 );

        if(mode)
            mbedtls_sm4_setkey_enc( &ctx, key, len*8 );
        else
            mbedtls_sm4_setkey_dec( &ctx, key, len*8 );

        tick1 = clock();
        for( j = 0; j < cnt&&ret == 0; j++ ){
            ret = mbedtls_sm4_crypt_cbc( &ctx, mode, PERF_TEST_SIZE_DATA,iv,p + offset, p + offset );
        }
        tick2 = clock();
    }

    //ECB
    if( M == 0 )
    {   mbedtls_printf("ECB:\n");
        memset( key, 0x55, 32 );
        memset( iv, 0x55, 32 );

        if(mode)
            mbedtls_sm4_setkey_enc( &ctx, key, len*8 );
        else
            mbedtls_sm4_setkey_dec( &ctx, key, len*8 );
        

        unsigned char *q = p;
        tick1 = clock();
        for( j = 0; j < cnt&&ret == 0; j++ ){
            l = PERF_TEST_SIZE_DATA;
            q = p;
            while( l > 0 ){
                ret = mbedtls_sm4_crypt_ecb( &ctx, mode, q + offset, q + offset );
                l -= 16;
                q += 16;
            }
        }
        tick2 = clock();
    }

    //CTR
    if( M == 2 )
    {   mbedtls_printf("CTR:\n");
        size_t off = 0;
        unsigned char nc_c[32];
        unsigned char block[32];
    
        mbedtls_sm4_init( &ctx );
        memset( key, 0x55, 32 );
        memset( iv, 0x55, 32 );
        memset( nc_c, 0x55, 32 );
        memset( block, 0x55, 32 );

        mbedtls_sm4_setkey_enc( &ctx, key, len*8 );
        

        unsigned char *q = p;
        tick1 = clock();
        for( j = 0; j < cnt&&ret == 0; j++ ){
 
            ret = mbedtls_sm4_crypt_ctr( &ctx, PERF_TEST_SIZE_DATA, &off, nc_c, block, q + offset, q + offset );
        }
        tick2 = clock();
    }

    //CFB128
    if( M == 3 )
    {   mbedtls_printf("CFB128:\n");
        size_t off = 0;
        unsigned char nc_c[32];
        unsigned char block[32];
    
        memset( key, 0x55, 32 );
        memset( iv, 0x55, 32 );
        memset( nc_c, 0x55, 32 );
        memset( block, 0x55, 32 );

        mbedtls_sm4_setkey_enc( &ctx, key, len*8 );
        

        unsigned char *q = p;
        tick1 = clock();
        for( j = 0; j < cnt&&ret == 0; j++ ){
 
            ret = mbedtls_sm4_crypt_cfb128( &ctx, mode, PERF_TEST_SIZE_DATA, &off, iv, q + offset, q + offset );
        }
        tick2 = clock();
    }

    //OFB
    if( M == 4 )
    {   mbedtls_printf("CFB128:\n");
    
        memset( key, 0x55, 32 );
        memset( iv, 0x55, 32 );

        mbedtls_sm4_setkey_enc( &ctx, key, len*8 );
        

        unsigned char *q = p;
        tick1 = clock();
        for( j = 0; j < cnt&&ret == 0; j++ ){
 
            ret = mbedtls_sm4_crypt_ofb( &ctx, mode, PERF_TEST_SIZE_DATA, iv, q + offset, q + offset );
        }
        tick2 = clock();
    }

    if( ret != 0 ){
        printf("failed\n");
        goto exit;
    }

    printf("success\n");
    long r1 = PERF_TEST_SIZE_DATA*cnt;
    long r2 = tick2 - tick1;
    double r3 = r1/r2;
    r3 /= 10000;
    
    mbedtls_printf("%ld %ld %lf\n",r1,r2,r3);
    mbedtls_printf("test over,time:%lu ret= %d\n",tick2 - tick1,ret);
    
exit:
	mbedtls_sm4_free( &ctx );

    free(p);
    
    return( ret );
}

typedef struct PARAM_t{
    //input
    int arith;
    int crypto;
    int keylen;
    int count;
    int offset;
    int mode;

    //interput
    unsigned long tick1,tick2;
    unsigned char *p;
}PARAMS;

static PARAMS params;

int perf_test_aes( PARAMS *pm ){

    int j = 0;
    int ret = 0;
    mbedtls_aes_context ctx;
    unsigned char key[32];
    unsigned char iv[32];

    memset( key, 0x55, 32 );
    memset( iv, 0x55, 32 );
    mbedtls_aes_init( &ctx );

    switch(pm->mode){
    
        case 1://CBC
        {
            mbedtls_printf("CBC:\n");

            if(pm->crypto)
                mbedtls_aes_setkey_enc( &ctx, key, pm->keylen*8 );
            else
                mbedtls_aes_setkey_dec( &ctx, key, pm->keylen*8 );

            pm->tick1 = clock();
            for( j = 0; j < pm->count&&ret == 0; j++ ){
                ret = mbedtls_aes_crypt_cbc( &ctx, pm->crypto, PERF_TEST_SIZE_DATA, iv, pm->p, pm->p );
            }
            pm->tick2 = clock();
        }
        break;
        case 0://ECB
        {   
            mbedtls_printf("ECB:\n");

            if(pm->crypto)
                mbedtls_aes_setkey_enc( &ctx, key, pm->keylen*8 );
            else
                mbedtls_aes_setkey_dec( &ctx, key, pm->keylen*8 );
            
            int l;
            unsigned char *q = pm->p;
            pm->tick1 = clock();
            for( j = 0; j < pm->count&&ret == 0; j++ ){
                l = PERF_TEST_SIZE_DATA;
                q = pm->p;
                while( l > 0 ){
                    ret = mbedtls_aes_crypt_ecb( &ctx, pm->crypto, pm->p, pm->p );
                    l -= 16;
                    q += 16;
                }
            }
            pm->tick2 = clock();
        }
        break;
        case 2://CTR
        {   
            mbedtls_printf("CTR:\n");
            size_t off = 0;
            unsigned char nc_c[32];
            unsigned char block[32];
        
            memset( nc_c, 0x55, 32 );
            memset( block, 0x55, 32 );

            mbedtls_aes_setkey_enc( &ctx, key, pm->keylen*8 );

            pm->tick1 = clock();
            for( j = 0; j < pm->count&&ret == 0; j++ ){
     
                ret = mbedtls_aes_crypt_ctr( &ctx, PERF_TEST_SIZE_DATA, &off, nc_c, block, pm->p, pm->p );
            }
            pm->tick2 = clock();
        }
        break;
        case 3://CFB128
        {   mbedtls_printf("CFB128:\n");
            size_t off = 0;
            unsigned char nc_c[32];
            unsigned char block[32];

            memset( nc_c, 0x55, 32 );
            memset( block, 0x55, 32 );

            mbedtls_aes_setkey_enc( &ctx, key, pm->keylen*8 );
            
            pm->tick1 = clock();
            for( j = 0; j < pm->count&&ret == 0; j++ ){
     
                ret = mbedtls_aes_crypt_cfb128( &ctx, pm->crypto, PERF_TEST_SIZE_DATA, &off, iv, pm->p, pm->p );
            }
            pm->tick2 = clock();
        }
        break;
        default:
            mbedtls_printf( "Unsupported mode:%d\n", pm->mode );   
			break;
    }

    mbedtls_aes_free( &ctx );
    return ret;
}

int perf_test_sm4( PARAMS *pm ){

    int j = 0;
    int ret = 0;
    mbedtls_sm4_context ctx;
    unsigned char key[32];
    unsigned char iv[32];

    memset( key, 0x55, 32 );
    memset( iv, 0x55, 32 );
    mbedtls_sm4_init( &ctx );

    switch(pm->mode){
    
        case 1://CBC
        { 
            mbedtls_printf("CBC:\n");

            if(pm->crypto)
                mbedtls_sm4_setkey_enc( &ctx, key, pm->keylen*8 );
            else
                mbedtls_sm4_setkey_dec( &ctx, key, pm->keylen*8 );

            pm->tick1 = clock();
            for( j = 0; j < pm->count&&ret == 0; j++ ){
                ret = mbedtls_sm4_crypt_cbc( &ctx, pm->crypto, PERF_TEST_SIZE_DATA, iv, pm->p, pm->p );
            }
            pm->tick2 = clock();
        }
        break;
        case 0://ECB
        {   
            mbedtls_printf("ECB:\n");

            if(pm->crypto)
                mbedtls_sm4_setkey_enc( &ctx, key, pm->keylen*8 );
            else
                mbedtls_sm4_setkey_dec( &ctx, key, pm->keylen*8 );
            
            int l;
            unsigned char *q = pm->p;
            pm->tick1 = clock();
            for( j = 0; j < pm->count&&ret == 0; j++ ){
                l = PERF_TEST_SIZE_DATA;
                q = pm->p;
                while( l > 0 ){
                    ret = mbedtls_sm4_crypt_ecb( &ctx, pm->crypto, pm->p, pm->p );
                    l -= 16;
                    q += 16;
                }
            }
            pm->tick2 = clock();
        }
        break;
        case 2://CTR
        {   
            mbedtls_printf("CTR:\n");
            size_t off = 0;
            unsigned char nc_c[32];
            unsigned char block[32];
        
            memset( nc_c, 0x55, 32 );
            memset( block, 0x55, 32 );

            mbedtls_sm4_setkey_enc( &ctx, key, pm->keylen*8 );

            pm->tick1 = clock();
            for( j = 0; j < pm->count&&ret == 0; j++ ){
     
                ret = mbedtls_sm4_crypt_ctr( &ctx, PERF_TEST_SIZE_DATA, &off, nc_c, block, pm->p, pm->p );
            }
            pm->tick2 = clock();
        }
        break;
        case 3://CFB128
        {   mbedtls_printf("CFB128:\n");
            size_t off = 0;
            unsigned char nc_c[32];
            unsigned char block[32];

            memset( nc_c, 0x55, 32 );
            memset( block, 0x55, 32 );

            mbedtls_sm4_setkey_enc( &ctx, key, pm->keylen*8 );

            pm->tick1 = clock();
            for( j = 0; j < pm->count&&ret == 0; j++ ){
     
                ret = mbedtls_sm4_crypt_cfb128( &ctx, pm->crypto, PERF_TEST_SIZE_DATA, &off, iv, pm->p, pm->p );
            }
            pm->tick2 = clock();
        }
        break;
            
        case 4://OFB
        {   
            mbedtls_printf("OFB:\n");

            mbedtls_sm4_setkey_enc( &ctx, key, pm->keylen*8 );
            
            pm->tick1 = clock();
            for( j = 0; j < pm->count&&ret == 0; j++ ){
     
                ret = mbedtls_sm4_crypt_ofb( &ctx, pm->crypto, PERF_TEST_SIZE_DATA, iv, pm->p, pm->p );
            }
            pm->tick2 = clock();
        }
        default:
            mbedtls_printf( "Unsupported mode:%d\n", pm->mode );   
		break;
    }

    mbedtls_sm4_free( &ctx );
    return ret;
}

int perf_test_sm3( PARAMS *pm ){

    int j = 0;
    mbedtls_sm3_context ctx;
    unsigned char out[32];
    
    mbedtls_sm3_init( &ctx );
    pm->tick1 = clock();
    mbedtls_sm3_starts( &ctx );
    for( j = 0; j < pm->count; j++ )
        mbedtls_sm3_update( &ctx, pm->p, PERF_TEST_SIZE_DATA );
    mbedtls_sm3_finish( &ctx, out );
    pm->tick2 = clock();
    mbedtls_sm3_free( &ctx );
    
    //mbedtls_printf( "Unimplemented algorithms\n" ); 
    return 0;
}

#define USAGE "\n   %s <arith> <mode> <crypto> <offset> <key length> <run number>" \
                "\n   arith=0:AES 1:SM4 2:SM3, mode=[0-4], crypto=0:decrypt 1:encrpt, key length=16 or 32," \
                " offset=[0-3], run number=[1-10000]\n" \
                "\n   example:%s 0 0 0 0 16 1000\n"

typedef struct usage_t{
    char str[8];
}usage_info;

static usage_info arith[] = {
    {"AES"},
    {"SM4"},
    {"SM3"}
};

static usage_info mode[] = {
    {"ECB"},
    {"CBC"},
    {"CTR"},
    {"CFB128"},
    {"OFB"}
};

static usage_info crypto[] = {
    {"decrypt"},
    {"encrypt"}
};

void usage_print( char *program ){

    int i = 0;
    char str[512];

    snprintf( str, 512, "%s", "arith=" );
    for( i = 0; i < sizeof(arith)/sizeof(usage_info); i++ )
        snprintf( str, 512, "%s%d:%s ", str, i,arith[i].str );

    snprintf( str, 512, "%s %s", str, "mode=" );
    for( i = 0; i < sizeof(mode)/sizeof(usage_info); i++ )
        snprintf( str, 512, "%s%d:%s ", str, i,mode[i].str );

    snprintf( str, 512, "%s %s", str, "crypto=" );
    for( i = 0; i < sizeof(crypto)/sizeof(usage_info); i++ )
        snprintf( str, 512, "%s%d:%s ", str, i,crypto[i].str );

    snprintf( str, 512, "%s key length=[16,32] offset=[0-3] run number=[1-10000]", str );

    mbedtls_printf( "\n   %s <arith> <mode> <crypto> <offset> <key length> <run number>" \
                    "\n   %s\n" \
                    "\n   example:%s 0 0 0 0 16 1000\n", program, str, program );
}

void usage_inout_print( char *program, PARAMS *pm ){

    int i = 0;
    char str[256];

    snprintf( str, 256, "%s %s %s offset=%d key length=%d run number=%d", arith[pm->arith].str,
                            mode[pm->mode].str, crypto[pm->crypto].str, pm->offset, 
                            pm->keylen, pm->count );



    mbedtls_printf( "\nThe test you are running is:\n\t%s\n", str );
}


int perf_test( int argc, char *argv[] )
{
	
    int ret = 0;

    if( argc == 1 ){
        
        mbedtls_printf( USAGE, argv[0], argv[0] );
        params.arith = 0;
        params.count = 1000;
        params.crypto = 0;
        params.keylen = 16;
        params.offset = 0;
        
        params.tick1 = 0;
        params.tick2 = 0;
        
    }else if( argc == 7 || argc == 6 ){

        params.arith = atoi( argv[1] );
        params.crypto = atoi( argv[3] );
        params.keylen = atoi( argv[5] );
        params.mode = atoi( argv[2] );
        params.offset = atoi( argv[4] );
        params.count = 1000;
        if( argc == 7 )
            params.count = atoi( argv[6] );
        
        params.tick1 = 0;
        params.tick2 = 0;
        
    }else{
    
        //mbedtls_printf( USAGE, argv[0], argv[0] );
        usage_print( argv[0] );
        return 0;
        
    }

    usage_inout_print( argv[0], &params );

    params.p = mbedtls_malloc( PERF_TEST_SIZE_DATA + 4 );
    if( !params.p ){
        mbedtls_printf("malloc failed\n");
        return 0;
    }

    params.p += params.offset;

    switch(params.arith){
       case 0:
       {
           perf_test_aes( &params ); 
       }
	   break;
	   case 1:
       {
           perf_test_sm4( &params ); 
       }
	   break;
	   case 2:
       {
           perf_test_sm3( &params ); 
       }
	   break;
	   default:
			mbedtls_printf( "Unsupported algorithms:%d\n", params.arith );
			break;
			
    }

    if( ret != 0 ){
        printf("failed ret = %d\n", ret );
        goto exit;
    }

    long r1 = PERF_TEST_SIZE_DATA*params.count;

    if(params.tick2 > params.tick1){
        long r2 = params.tick2 - params.tick1;
        double r3 = r1/r2;
        r3 /= 10000;
        mbedtls_printf("Test over,time:%lu rate:%.4lfMB/s\n", params.tick2 - params.tick1, r3 );
    }else{
        mbedtls_printf("Time error:%lu %lu\n", params.tick2, params.tick1 );
    }
    
exit:

    params.p -= params.offset;
    free(params.p);
    
    return( ret );
}


MSH_CMD_EXPORT(aes_test,aes_test)
MSH_CMD_EXPORT(sm4_test,sm4_test)
MSH_CMD_EXPORT(perf_test,perf_test)

#endif
