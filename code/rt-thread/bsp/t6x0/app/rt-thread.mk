##
## Auto Generated makefile by CDK
## Do not modify this file, and any manual changes will be erased!!!   
##
## BuildSet
ProjectName            :=rt-thread
ConfigurationName      :=BuildSet
WorkspacePath          :=./
ProjectPath            :=./
IntermediateDirectory  :=Obj
OutDir                 :=$(IntermediateDirectory)
User                   :=Administrator
Date                   :=13/11/2020
CDKPath                :=D:/C-Sky/CDK/
LinkerName             :=csky-elfabiv2-gcc
LinkerNameoption       :=
SIZE                   :=csky-elfabiv2-size
READELF                :=csky-elfabiv2-readelf
CHECKSUM               :=crc32
SharedObjectLinkerName :=
ObjectSuffix           :=.o
DependSuffix           :=.d
PreprocessSuffix       :=.i
DisassemSuffix         :=.asm
IHexSuffix             :=.ihex
BinSuffix              :=.bin
ExeSuffix              :=.elf
LibSuffix              :=.a
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
ElfInfoSwitch          :=-hlS
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
UnPreprocessorSwitch   :=-U
SourceSwitch           :=-c 
ObjdumpSwitch          :=-S
ObjcopySwitch          :=-O ihex
ObjcopyBinSwitch       :=-O binary
OutputFile             :=$(ProjectName)
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=rt-thread.txt
MakeDirCommand         :=mkdir
LinkOptions            := -mcpu=ck803s  -nostartfiles -Wl,--gc-sections -T$(ProjectPath)/fw.ld
LinkOtherFlagsOption   :=
IncludePackagePath     :=
IncludeCPath           :=$(IncludeSwitch)entry $(IncludeSwitch). $(IncludeSwitch)../drivers $(IncludeSwitch)../libraries/inc $(IncludeSwitch)../../../components/drivers/include $(IncludeSwitch)../../../components/net/lwip-2.0.2/src $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/arch/include $(IncludeSwitch)../libraries/inc/tih $(IncludeSwitch)../libraries/src $(IncludeSwitch)../../../include $(IncludeSwitch)../../../libcpu/c-sky/ck803 $(IncludeSwitch)../../../libcpu/c-sky/common $(IncludeSwitch)../../../components/dfs/include $(IncludeSwitch)../../../components/dfs/filesystems/devfs $(IncludeSwitch)../../../components/dfs/filesystems/elmfat $(IncludeSwitch)../../../components/dfs/filesystems/net $(IncludeSwitch)../../../components/dfs/filesystems/net/select $(IncludeSwitch)../../../components/dfs/filesystems/net/socket $(IncludeSwitch)../../../components/dfs/filesystems/ramfs $(IncludeSwitch)../../../components/dfs/filesystems/romfs $(IncludeSwitch)../../../components/drivers/spi $(IncludeSwitch)../../../components/finsh $(IncludeSwitch)../../../components/libc/compilers/minilibc $(IncludeSwitch)../../../components/libc/time $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include/ipv4 $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include/netif $(IncludeSwitch)../../../components/utilities/utest $(IncludeSwitch)../../../packages/mbedtls-2.6.0/mbedtls/include $(IncludeSwitch)../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls $(IncludeSwitch)../../../packages/mbedtls-2.6.0/ports/inc $(IncludeSwitch)../../../packages/netutils-1.0.0/iperf $(IncludeSwitch)../../../packages/netutils-1.0.0/ntp $(IncludeSwitch)../../../packages/netutils-1.0.0/ping $(IncludeSwitch)../../../packages/netutils-1.0.0/tftp $(IncludeSwitch)../../../packages/webclient-2.0.1/inc $(IncludeSwitch)../../../packages/webnet-2.0.0/inc 
IncludeAPath           :=$(IncludeSwitch)entry $(IncludeSwitch). $(IncludeSwitch)../drivers $(IncludeSwitch)../libraries/inc $(IncludeSwitch)../../../components/drivers/include $(IncludeSwitch)../../../components/net/lwip-2.0.2/src $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/arch/include $(IncludeSwitch)../libraries/inc/tih $(IncludeSwitch)../libraries/src $(IncludeSwitch)../../../include $(IncludeSwitch)../../../libcpu/c-sky/ck803 $(IncludeSwitch)../../../libcpu/c-sky/common $(IncludeSwitch)../../../components/dfs/include $(IncludeSwitch)../../../components/dfs/filesystems/devfs $(IncludeSwitch)../../../components/dfs/filesystems/elmfat $(IncludeSwitch)../../../components/dfs/filesystems/net $(IncludeSwitch)../../../components/dfs/filesystems/net/select $(IncludeSwitch)../../../components/dfs/filesystems/net/socket $(IncludeSwitch)../../../components/dfs/filesystems/ramfs $(IncludeSwitch)../../../components/dfs/filesystems/romfs $(IncludeSwitch)../../../components/drivers/spi $(IncludeSwitch)../../../components/finsh $(IncludeSwitch)../../../components/libc/compilers/minilibc $(IncludeSwitch)../../../components/libc/time $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include/ipv4 $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include/netif $(IncludeSwitch)../../../components/utilities/utest $(IncludeSwitch)../../../packages/mbedtls-2.6.0/mbedtls/include $(IncludeSwitch)../../../packages/mbedtls-2.6.0/mbedtls/include/mbedtls $(IncludeSwitch)../../../packages/mbedtls-2.6.0/ports/inc $(IncludeSwitch)../../../packages/netutils-1.0.0/iperf $(IncludeSwitch)../../../packages/netutils-1.0.0/ntp $(IncludeSwitch)../../../packages/netutils-1.0.0/ping $(IncludeSwitch)../../../packages/netutils-1.0.0/tftp $(IncludeSwitch)../../../packages/webclient-2.0.1/inc $(IncludeSwitch)../../../packages/webnet-2.0.0/inc 
Libs                   := -Wl,--whole-archive  -Wl,--no-whole-archive  
ArLibs                 := 
PackagesLibPath        :=
LibPath                := $(PackagesLibPath) 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       :=csky-elfabiv2-ar rcu
CXX      :=csky-elfabiv2-g++
CC       :=csky-elfabiv2-gcc
AS       :=csky-elfabiv2-gcc
OBJDUMP  :=csky-elfabiv2-objdump
OBJCOPY  :=csky-elfabiv2-objcopy
CXXFLAGS := -mcpu=ck803s    -O2  -g  -Wall  -ffunction-sections  -c -mistack -ffunction-sections -fdata-sections -mno-required-printf -DMBEDTLS_CONFIG_FILE=\"mbedtls\/config.h\" 
CFLAGS   := -mcpu=ck803s    -O2  -g  -Wall  -ffunction-sections  -c -mistack -ffunction-sections -fdata-sections -mno-required-printf -DMBEDTLS_CONFIG_FILE=\"mbedtls\/config.h\" 
ASFLAGS  := -mcpu=ck803s   $(PreprocessorSwitch)CONFIG_CKCPU_MMU=0   -Wa,--gdwarf2    


Objects0=$(IntermediateDirectory)/entry_ipraw$(ObjectSuffix) $(IntermediateDirectory)/entry_linklayer$(ObjectSuffix) $(IntermediateDirectory)/entry_main$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_cputime$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_crypto$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_ctimer$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_eth$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_gpio$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_i2c$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_intr$(ObjectSuffix) \
	$(IntermediateDirectory)/drivers_drv_sata$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_spi$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_timer$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_uart$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_wdt$(ObjectSuffix) $(IntermediateDirectory)/drivers_retarget$(ObjectSuffix) $(IntermediateDirectory)/drivers_system$(ObjectSuffix) $(IntermediateDirectory)/src_tih_phy_m88e1512$(ObjectSuffix) $(IntermediateDirectory)/src_tih_phy_rtl8211$(ObjectSuffix) $(IntermediateDirectory)/src_clock$(ObjectSuffix) \
	$(IntermediateDirectory)/src_components$(ObjectSuffix) $(IntermediateDirectory)/src_device$(ObjectSuffix) $(IntermediateDirectory)/src_idle$(ObjectSuffix) $(IntermediateDirectory)/src_ipc$(ObjectSuffix) $(IntermediateDirectory)/src_irq$(ObjectSuffix) $(IntermediateDirectory)/src_kservice$(ObjectSuffix) $(IntermediateDirectory)/src_mem$(ObjectSuffix) $(IntermediateDirectory)/src_memheap$(ObjectSuffix) $(IntermediateDirectory)/src_object$(ObjectSuffix) $(IntermediateDirectory)/src_scheduler$(ObjectSuffix) \
	$(IntermediateDirectory)/src_signal$(ObjectSuffix) $(IntermediateDirectory)/src_thread$(ObjectSuffix) $(IntermediateDirectory)/src_timer$(ObjectSuffix) $(IntermediateDirectory)/ck803_cpuport$(ObjectSuffix) $(IntermediateDirectory)/ck803_stack_ck803$(ObjectSuffix) $(IntermediateDirectory)/ck803_contex_ck803_gcc$(ObjectSuffix) $(IntermediateDirectory)/ck803_startup_gcc$(ObjectSuffix) $(IntermediateDirectory)/common_backtrace$(ObjectSuffix) $(IntermediateDirectory)/common_showmem$(ObjectSuffix) $(IntermediateDirectory)/src_dfs$(ObjectSuffix) \
	$(IntermediateDirectory)/src_dfs_file$(ObjectSuffix) $(IntermediateDirectory)/src_dfs_fs$(ObjectSuffix) $(IntermediateDirectory)/src_dfs_posix$(ObjectSuffix) $(IntermediateDirectory)/src_poll$(ObjectSuffix) $(IntermediateDirectory)/src_select$(ObjectSuffix) $(IntermediateDirectory)/devfs_devfs$(ObjectSuffix) $(IntermediateDirectory)/elmfat_dfs_elm$(ObjectSuffix) $(IntermediateDirectory)/elmfat_ff$(ObjectSuffix) $(IntermediateDirectory)/option_ccsbcs$(ObjectSuffix) $(IntermediateDirectory)/net_dfs_net$(ObjectSuffix) \
	$(IntermediateDirectory)/net_net_netdb$(ObjectSuffix) $(IntermediateDirectory)/net_net_sockets$(ObjectSuffix) $(IntermediateDirectory)/ramfs_dfs_ramfs$(ObjectSuffix) $(IntermediateDirectory)/romfs_dfs_romfs$(ObjectSuffix) $(IntermediateDirectory)/romfs_romfs$(ObjectSuffix) $(IntermediateDirectory)/cputime_cputime$(ObjectSuffix) $(IntermediateDirectory)/crypto_crypto_dev$(ObjectSuffix) $(IntermediateDirectory)/hwtimer_hwtimer$(ObjectSuffix) $(IntermediateDirectory)/i2c_i2c_core$(ObjectSuffix) $(IntermediateDirectory)/i2c_i2c_dev$(ObjectSuffix) \
	$(IntermediateDirectory)/i2c_i2c-bit-ops$(ObjectSuffix) $(IntermediateDirectory)/i2c_i2c_eeprom$(ObjectSuffix) $(IntermediateDirectory)/misc_pin$(ObjectSuffix) $(IntermediateDirectory)/rtc_rtc$(ObjectSuffix) $(IntermediateDirectory)/rtc_soft_rtc$(ObjectSuffix) $(IntermediateDirectory)/sata_sata$(ObjectSuffix) $(IntermediateDirectory)/serial_serial$(ObjectSuffix) $(IntermediateDirectory)/spi_spi_core$(ObjectSuffix) $(IntermediateDirectory)/spi_spi_dev$(ObjectSuffix) $(IntermediateDirectory)/spi_spi_adc$(ObjectSuffix) \
	$(IntermediateDirectory)/watchdog_watchdog$(ObjectSuffix) $(IntermediateDirectory)/src_completion$(ObjectSuffix) $(IntermediateDirectory)/src_dataqueue$(ObjectSuffix) $(IntermediateDirectory)/src_pipe$(ObjectSuffix) $(IntermediateDirectory)/src_ringbuffer$(ObjectSuffix) $(IntermediateDirectory)/src_waitqueue$(ObjectSuffix) $(IntermediateDirectory)/src_workqueue$(ObjectSuffix) $(IntermediateDirectory)/finsh_shell$(ObjectSuffix) $(IntermediateDirectory)/finsh_symbol$(ObjectSuffix) $(IntermediateDirectory)/finsh_cmd$(ObjectSuffix) \
	$(IntermediateDirectory)/finsh_msh$(ObjectSuffix) $(IntermediateDirectory)/finsh_msh_cmd$(ObjectSuffix) $(IntermediateDirectory)/finsh_msh_file$(ObjectSuffix) $(IntermediateDirectory)/minilibc_stdlib$(ObjectSuffix) $(IntermediateDirectory)/minilibc_string$(ObjectSuffix) $(IntermediateDirectory)/minilibc_time$(ObjectSuffix) $(IntermediateDirectory)/time_clock_time$(ObjectSuffix) $(IntermediateDirectory)/time_posix_sleep$(ObjectSuffix) $(IntermediateDirectory)/arch_sys_arch$(ObjectSuffix) $(IntermediateDirectory)/api_api_lib$(ObjectSuffix) \
	$(IntermediateDirectory)/api_api_msg$(ObjectSuffix) $(IntermediateDirectory)/api_err$(ObjectSuffix) $(IntermediateDirectory)/api_netbuf$(ObjectSuffix) $(IntermediateDirectory)/api_netdb$(ObjectSuffix) $(IntermediateDirectory)/api_netifapi$(ObjectSuffix) $(IntermediateDirectory)/api_sockets$(ObjectSuffix) $(IntermediateDirectory)/api_tcpip$(ObjectSuffix) $(IntermediateDirectory)/core_def$(ObjectSuffix) $(IntermediateDirectory)/core_dns$(ObjectSuffix) 

Objects1=$(IntermediateDirectory)/core_inet_chksum$(ObjectSuffix) \
	$(IntermediateDirectory)/core_init$(ObjectSuffix) $(IntermediateDirectory)/core_ip$(ObjectSuffix) $(IntermediateDirectory)/core_if$(ObjectSuffix) $(IntermediateDirectory)/core_memp$(ObjectSuffix) $(IntermediateDirectory)/core_netif$(ObjectSuffix) $(IntermediateDirectory)/core_pbuf$(ObjectSuffix) $(IntermediateDirectory)/core_raw$(ObjectSuffix) $(IntermediateDirectory)/core_stats$(ObjectSuffix) $(IntermediateDirectory)/core_sys$(ObjectSuffix) $(IntermediateDirectory)/core_tcp$(ObjectSuffix) \
	$(IntermediateDirectory)/core_tcp_in$(ObjectSuffix) $(IntermediateDirectory)/core_tcp_out$(ObjectSuffix) $(IntermediateDirectory)/core_timeouts$(ObjectSuffix) $(IntermediateDirectory)/core_udp$(ObjectSuffix) $(IntermediateDirectory)/netif_ethernet$(ObjectSuffix) $(IntermediateDirectory)/netif_ethernetif$(ObjectSuffix) $(IntermediateDirectory)/netif_lowpan6$(ObjectSuffix) $(IntermediateDirectory)/ipv4_autoip$(ObjectSuffix) $(IntermediateDirectory)/ipv4_dhcp$(ObjectSuffix) $(IntermediateDirectory)/ipv4_etharp$(ObjectSuffix) \
	$(IntermediateDirectory)/ipv4_icmp$(ObjectSuffix) $(IntermediateDirectory)/ipv4_igmp$(ObjectSuffix) $(IntermediateDirectory)/ipv4_ip4$(ObjectSuffix) $(IntermediateDirectory)/ipv4_ip4_addr$(ObjectSuffix) $(IntermediateDirectory)/ipv4_ip4_frag$(ObjectSuffix) $(IntermediateDirectory)/utest_utest$(ObjectSuffix) $(IntermediateDirectory)/library_aes$(ObjectSuffix) $(IntermediateDirectory)/library_aes_alt$(ObjectSuffix) $(IntermediateDirectory)/library_aesni$(ObjectSuffix) $(IntermediateDirectory)/library_arc4$(ObjectSuffix) \
	$(IntermediateDirectory)/library_asn1parse$(ObjectSuffix) $(IntermediateDirectory)/library_asn1write$(ObjectSuffix) $(IntermediateDirectory)/library_base64$(ObjectSuffix) $(IntermediateDirectory)/library_bignum$(ObjectSuffix) $(IntermediateDirectory)/library_blowfish$(ObjectSuffix) $(IntermediateDirectory)/library_camellia$(ObjectSuffix) $(IntermediateDirectory)/library_ccm$(ObjectSuffix) $(IntermediateDirectory)/library_certs$(ObjectSuffix) $(IntermediateDirectory)/library_cipher$(ObjectSuffix) $(IntermediateDirectory)/library_cipher_wrap$(ObjectSuffix) \
	$(IntermediateDirectory)/library_cmac$(ObjectSuffix) $(IntermediateDirectory)/library_ctr_drbg$(ObjectSuffix) $(IntermediateDirectory)/library_debug$(ObjectSuffix) $(IntermediateDirectory)/library_des$(ObjectSuffix) $(IntermediateDirectory)/library_dhm$(ObjectSuffix) $(IntermediateDirectory)/library_ecdh$(ObjectSuffix) $(IntermediateDirectory)/library_ecdh_sm2$(ObjectSuffix) $(IntermediateDirectory)/library_ecdsa$(ObjectSuffix) $(IntermediateDirectory)/library_ecdsa_sm2$(ObjectSuffix) $(IntermediateDirectory)/library_ecjpake$(ObjectSuffix) \
	$(IntermediateDirectory)/library_ecp$(ObjectSuffix) $(IntermediateDirectory)/library_ecp_alt$(ObjectSuffix) $(IntermediateDirectory)/library_ecp_curves$(ObjectSuffix) $(IntermediateDirectory)/library_ecp_curves_alt$(ObjectSuffix) $(IntermediateDirectory)/library_entropy$(ObjectSuffix) $(IntermediateDirectory)/library_entropy_poll$(ObjectSuffix) $(IntermediateDirectory)/library_error$(ObjectSuffix) $(IntermediateDirectory)/library_gcm$(ObjectSuffix) $(IntermediateDirectory)/library_havege$(ObjectSuffix) $(IntermediateDirectory)/library_hmac_drbg$(ObjectSuffix) \
	$(IntermediateDirectory)/library_md$(ObjectSuffix) $(IntermediateDirectory)/library_md2$(ObjectSuffix) $(IntermediateDirectory)/library_md4$(ObjectSuffix) $(IntermediateDirectory)/library_md5$(ObjectSuffix) $(IntermediateDirectory)/library_md_wrap$(ObjectSuffix) $(IntermediateDirectory)/library_memory_buffer_alloc$(ObjectSuffix) $(IntermediateDirectory)/library_oid$(ObjectSuffix) $(IntermediateDirectory)/library_padlock$(ObjectSuffix) $(IntermediateDirectory)/library_pem$(ObjectSuffix) $(IntermediateDirectory)/library_pk$(ObjectSuffix) \
	$(IntermediateDirectory)/library_pk_wrap$(ObjectSuffix) $(IntermediateDirectory)/library_pkcs11$(ObjectSuffix) $(IntermediateDirectory)/library_pkcs12$(ObjectSuffix) $(IntermediateDirectory)/library_pkcs5$(ObjectSuffix) $(IntermediateDirectory)/library_pkparse$(ObjectSuffix) $(IntermediateDirectory)/library_pkwrite$(ObjectSuffix) $(IntermediateDirectory)/library_platform$(ObjectSuffix) $(IntermediateDirectory)/library_ripemd160$(ObjectSuffix) $(IntermediateDirectory)/library_rsa$(ObjectSuffix) $(IntermediateDirectory)/library_sha1$(ObjectSuffix) \
	$(IntermediateDirectory)/library_sha1_alt$(ObjectSuffix) $(IntermediateDirectory)/library_sha256$(ObjectSuffix) $(IntermediateDirectory)/library_sha256_alt$(ObjectSuffix) $(IntermediateDirectory)/library_sha512$(ObjectSuffix) $(IntermediateDirectory)/library_sm2$(ObjectSuffix) $(IntermediateDirectory)/library_sm3$(ObjectSuffix) $(IntermediateDirectory)/library_sm4$(ObjectSuffix) $(IntermediateDirectory)/library_ssl_cache$(ObjectSuffix) $(IntermediateDirectory)/library_ssl_ciphersuites$(ObjectSuffix) $(IntermediateDirectory)/library_ssl_cli$(ObjectSuffix) \
	$(IntermediateDirectory)/library_ssl_cookie$(ObjectSuffix) $(IntermediateDirectory)/library_ssl_srv$(ObjectSuffix) $(IntermediateDirectory)/library_ssl_ticket$(ObjectSuffix) $(IntermediateDirectory)/library_ssl_tls$(ObjectSuffix) $(IntermediateDirectory)/library_threading$(ObjectSuffix) $(IntermediateDirectory)/library_timing$(ObjectSuffix) $(IntermediateDirectory)/library_version$(ObjectSuffix) $(IntermediateDirectory)/library_version_features$(ObjectSuffix) $(IntermediateDirectory)/library_x509$(ObjectSuffix) 

Objects2=$(IntermediateDirectory)/library_x509_create$(ObjectSuffix) \
	$(IntermediateDirectory)/library_x509_crl$(ObjectSuffix) $(IntermediateDirectory)/library_x509_crt$(ObjectSuffix) $(IntermediateDirectory)/library_x509_csr$(ObjectSuffix) $(IntermediateDirectory)/library_x509write_crt$(ObjectSuffix) $(IntermediateDirectory)/library_x509write_csr$(ObjectSuffix) $(IntermediateDirectory)/library_xtea$(ObjectSuffix) $(IntermediateDirectory)/src_threading_alt$(ObjectSuffix) $(IntermediateDirectory)/src_timing_alt$(ObjectSuffix) $(IntermediateDirectory)/src_tls_certificate$(ObjectSuffix) $(IntermediateDirectory)/src_tls_client$(ObjectSuffix) \
	$(IntermediateDirectory)/src_tls_hardware$(ObjectSuffix) $(IntermediateDirectory)/src_tls_net$(ObjectSuffix) $(IntermediateDirectory)/src_tls_server$(ObjectSuffix) $(IntermediateDirectory)/samples_crypto_app_test$(ObjectSuffix) $(IntermediateDirectory)/samples_tls_app_test$(ObjectSuffix) $(IntermediateDirectory)/iperf_iperf$(ObjectSuffix) $(IntermediateDirectory)/ntp_ntp$(ObjectSuffix) $(IntermediateDirectory)/ping_ping$(ObjectSuffix) $(IntermediateDirectory)/tftp_tftp_port$(ObjectSuffix) $(IntermediateDirectory)/tftp_tftp_server$(ObjectSuffix) \
	$(IntermediateDirectory)/src_webclient$(ObjectSuffix) $(IntermediateDirectory)/src_webclient_file$(ObjectSuffix) $(IntermediateDirectory)/samples_webclient_get_sample$(ObjectSuffix) $(IntermediateDirectory)/samples_webclient_post_sample$(ObjectSuffix) $(IntermediateDirectory)/src_webnet$(ObjectSuffix) $(IntermediateDirectory)/src_wn_mimetype$(ObjectSuffix) $(IntermediateDirectory)/src_wn_request$(ObjectSuffix) $(IntermediateDirectory)/src_wn_session$(ObjectSuffix) $(IntermediateDirectory)/src_wn_utils$(ObjectSuffix) $(IntermediateDirectory)/src_wn_module$(ObjectSuffix) \
	$(IntermediateDirectory)/module_wn_module_asp$(ObjectSuffix) $(IntermediateDirectory)/module_wn_module_auth$(ObjectSuffix) $(IntermediateDirectory)/module_wn_module_cgi$(ObjectSuffix) $(IntermediateDirectory)/module_wn_module_index$(ObjectSuffix) $(IntermediateDirectory)/module_wn_module_alias$(ObjectSuffix) $(IntermediateDirectory)/module_wn_module_upload$(ObjectSuffix) $(IntermediateDirectory)/module_wn_module_ssi$(ObjectSuffix) $(IntermediateDirectory)/samples_wn_sample$(ObjectSuffix) $(IntermediateDirectory)/samples_wn_sample_upload$(ObjectSuffix) $(IntermediateDirectory)/__rt_entry$(ObjectSuffix) 



Objects=$(Objects0) $(Objects1) $(Objects2) 

##
## Main Build Targets 
##
.PHONY: all
all: $(IntermediateDirectory)/$(OutputFile)

$(IntermediateDirectory)/$(OutputFile):  $(Objects) Always_Link 
	$(LinkerName) $(OutputSwitch) $(IntermediateDirectory)/$(OutputFile)$(ExeSuffix) $(LinkerNameoption) -Wl,--callgraph_file=$(ProjectPath)/Lst/$(OutputFile).htm $(LinkOtherFlagsOption)  -Wl,--ckmap=$(ProjectPath)/Lst/$(OutputFile).map  @$(ObjectsFileList) $(LibraryPathSwitch)E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries  -Wl,--whole-archive $(LibrarySwitch)t6x0_c   -Wl,--no-whole-archive  $(LinkOptions) $(LibPath) $(Libs)
	@mv $(ProjectPath)/Lst/$(OutputFile).map $(ProjectPath)/Lst/$(OutputFile).temp && $(READELF) $(ElfInfoSwitch) $(ProjectPath)/Obj/$(OutputFile)$(ExeSuffix) > $(ProjectPath)/Lst/$(OutputFile).map && echo ====================================================================== >> $(ProjectPath)/Lst/$(OutputFile).map && cat $(ProjectPath)/Lst/$(OutputFile).temp >> $(ProjectPath)/Lst/$(OutputFile).map && rm -rf $(ProjectPath)/Lst/$(OutputFile).temp
	$(OBJCOPY) $(ObjcopySwitch) $(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)  $(ProjectPath)/Obj/$(OutputFile)$(IHexSuffix) 
		$(OBJDUMP) $(ObjdumpSwitch) $(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)  > $(ProjectPath)/Lst/$(OutputFile)$(DisassemSuffix) 
	@echo size of target:
	@$(SIZE) $(ProjectPath)$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix) 
	@echo -n checksum value of target:  
	@$(CHECKSUM) $(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix) 
	
Always_Link:


##
## Objects
##
$(IntermediateDirectory)/entry_ipraw$(ObjectSuffix): entry/ipraw.c  Lst/entry_ipraw$(PreprocessSuffix)
	$(CC) $(SourceSwitch) entry/ipraw.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/entry_ipraw$(ObjectSuffix) -MF$(IntermediateDirectory)/entry_ipraw$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/entry_ipraw$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/entry_ipraw$(PreprocessSuffix): entry/ipraw.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/entry_ipraw$(PreprocessSuffix) entry/ipraw.c

$(IntermediateDirectory)/entry_linklayer$(ObjectSuffix): entry/linklayer.c  Lst/entry_linklayer$(PreprocessSuffix)
	$(CC) $(SourceSwitch) entry/linklayer.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/entry_linklayer$(ObjectSuffix) -MF$(IntermediateDirectory)/entry_linklayer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/entry_linklayer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/entry_linklayer$(PreprocessSuffix): entry/linklayer.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/entry_linklayer$(PreprocessSuffix) entry/linklayer.c

$(IntermediateDirectory)/entry_main$(ObjectSuffix): entry/main.c  Lst/entry_main$(PreprocessSuffix)
	$(CC) $(SourceSwitch) entry/main.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/entry_main$(ObjectSuffix) -MF$(IntermediateDirectory)/entry_main$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/entry_main$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/entry_main$(PreprocessSuffix): entry/main.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/entry_main$(PreprocessSuffix) entry/main.c

$(IntermediateDirectory)/drivers_drv_cputime$(ObjectSuffix): ../drivers/drv_cputime.c  Lst/drivers_drv_cputime$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/drv_cputime.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_drv_cputime$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_cputime$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_cputime$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_drv_cputime$(PreprocessSuffix): ../drivers/drv_cputime.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_cputime$(PreprocessSuffix) ../drivers/drv_cputime.c

$(IntermediateDirectory)/drivers_drv_crypto$(ObjectSuffix): ../drivers/drv_crypto.c  Lst/drivers_drv_crypto$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/drv_crypto.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_drv_crypto$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_crypto$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_crypto$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_drv_crypto$(PreprocessSuffix): ../drivers/drv_crypto.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_crypto$(PreprocessSuffix) ../drivers/drv_crypto.c

$(IntermediateDirectory)/drivers_drv_ctimer$(ObjectSuffix): ../drivers/drv_ctimer.c  Lst/drivers_drv_ctimer$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/drv_ctimer.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_drv_ctimer$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_ctimer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_ctimer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_drv_ctimer$(PreprocessSuffix): ../drivers/drv_ctimer.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_ctimer$(PreprocessSuffix) ../drivers/drv_ctimer.c

$(IntermediateDirectory)/drivers_drv_eth$(ObjectSuffix): ../drivers/drv_eth.c  Lst/drivers_drv_eth$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/drv_eth.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_drv_eth$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_eth$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_eth$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_drv_eth$(PreprocessSuffix): ../drivers/drv_eth.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_eth$(PreprocessSuffix) ../drivers/drv_eth.c

$(IntermediateDirectory)/drivers_drv_gpio$(ObjectSuffix): ../drivers/drv_gpio.c  Lst/drivers_drv_gpio$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/drv_gpio.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_drv_gpio$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_gpio$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_gpio$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_drv_gpio$(PreprocessSuffix): ../drivers/drv_gpio.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_gpio$(PreprocessSuffix) ../drivers/drv_gpio.c

$(IntermediateDirectory)/drivers_drv_i2c$(ObjectSuffix): ../drivers/drv_i2c.c  Lst/drivers_drv_i2c$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/drv_i2c.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_drv_i2c$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_i2c$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_i2c$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_drv_i2c$(PreprocessSuffix): ../drivers/drv_i2c.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_i2c$(PreprocessSuffix) ../drivers/drv_i2c.c

$(IntermediateDirectory)/drivers_drv_intr$(ObjectSuffix): ../drivers/drv_intr.c  Lst/drivers_drv_intr$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/drv_intr.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_drv_intr$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_intr$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_intr$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_drv_intr$(PreprocessSuffix): ../drivers/drv_intr.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_intr$(PreprocessSuffix) ../drivers/drv_intr.c

$(IntermediateDirectory)/drivers_drv_sata$(ObjectSuffix): ../drivers/drv_sata.c  Lst/drivers_drv_sata$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/drv_sata.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_drv_sata$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_sata$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_sata$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_drv_sata$(PreprocessSuffix): ../drivers/drv_sata.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_sata$(PreprocessSuffix) ../drivers/drv_sata.c

$(IntermediateDirectory)/drivers_drv_spi$(ObjectSuffix): ../drivers/drv_spi.c  Lst/drivers_drv_spi$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/drv_spi.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_drv_spi$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_spi$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_spi$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_drv_spi$(PreprocessSuffix): ../drivers/drv_spi.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_spi$(PreprocessSuffix) ../drivers/drv_spi.c

$(IntermediateDirectory)/drivers_drv_timer$(ObjectSuffix): ../drivers/drv_timer.c  Lst/drivers_drv_timer$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/drv_timer.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_drv_timer$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_timer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_timer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_drv_timer$(PreprocessSuffix): ../drivers/drv_timer.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_timer$(PreprocessSuffix) ../drivers/drv_timer.c

$(IntermediateDirectory)/drivers_drv_uart$(ObjectSuffix): ../drivers/drv_uart.c  Lst/drivers_drv_uart$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/drv_uart.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_drv_uart$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_uart$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_uart$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_drv_uart$(PreprocessSuffix): ../drivers/drv_uart.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_uart$(PreprocessSuffix) ../drivers/drv_uart.c

$(IntermediateDirectory)/drivers_drv_wdt$(ObjectSuffix): ../drivers/drv_wdt.c  Lst/drivers_drv_wdt$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/drv_wdt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_drv_wdt$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_wdt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_wdt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_drv_wdt$(PreprocessSuffix): ../drivers/drv_wdt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_wdt$(PreprocessSuffix) ../drivers/drv_wdt.c

$(IntermediateDirectory)/drivers_retarget$(ObjectSuffix): ../drivers/retarget.c  Lst/drivers_retarget$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/retarget.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_retarget$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_retarget$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_retarget$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_retarget$(PreprocessSuffix): ../drivers/retarget.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_retarget$(PreprocessSuffix) ../drivers/retarget.c

$(IntermediateDirectory)/drivers_system$(ObjectSuffix): ../drivers/system.c  Lst/drivers_system$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../drivers/system.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/drivers_system$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_system$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/drivers_system$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/drivers_system$(PreprocessSuffix): ../drivers/system.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_system$(PreprocessSuffix) ../drivers/system.c

$(IntermediateDirectory)/src_tih_phy_m88e1512$(ObjectSuffix): ../libraries/src/tih_phy_m88e1512.c  Lst/src_tih_phy_m88e1512$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../libraries/src/tih_phy_m88e1512.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_tih_phy_m88e1512$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tih_phy_m88e1512$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_tih_phy_m88e1512$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_tih_phy_m88e1512$(PreprocessSuffix): ../libraries/src/tih_phy_m88e1512.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_tih_phy_m88e1512$(PreprocessSuffix) ../libraries/src/tih_phy_m88e1512.c

$(IntermediateDirectory)/src_tih_phy_rtl8211$(ObjectSuffix): ../libraries/src/tih_phy_rtl8211.c  Lst/src_tih_phy_rtl8211$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../libraries/src/tih_phy_rtl8211.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_tih_phy_rtl8211$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tih_phy_rtl8211$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_tih_phy_rtl8211$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_tih_phy_rtl8211$(PreprocessSuffix): ../libraries/src/tih_phy_rtl8211.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_tih_phy_rtl8211$(PreprocessSuffix) ../libraries/src/tih_phy_rtl8211.c

$(IntermediateDirectory)/src_clock$(ObjectSuffix): ../../../src/clock.c  Lst/src_clock$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/clock.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_clock$(ObjectSuffix) -MF$(IntermediateDirectory)/src_clock$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_clock$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_clock$(PreprocessSuffix): ../../../src/clock.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_clock$(PreprocessSuffix) ../../../src/clock.c

$(IntermediateDirectory)/src_components$(ObjectSuffix): ../../../src/components.c  Lst/src_components$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/components.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_components$(ObjectSuffix) -MF$(IntermediateDirectory)/src_components$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_components$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_components$(PreprocessSuffix): ../../../src/components.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_components$(PreprocessSuffix) ../../../src/components.c

$(IntermediateDirectory)/src_device$(ObjectSuffix): ../../../src/device.c  Lst/src_device$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/device.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_device$(ObjectSuffix) -MF$(IntermediateDirectory)/src_device$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_device$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_device$(PreprocessSuffix): ../../../src/device.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_device$(PreprocessSuffix) ../../../src/device.c

$(IntermediateDirectory)/src_idle$(ObjectSuffix): ../../../src/idle.c  Lst/src_idle$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/idle.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_idle$(ObjectSuffix) -MF$(IntermediateDirectory)/src_idle$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_idle$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_idle$(PreprocessSuffix): ../../../src/idle.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_idle$(PreprocessSuffix) ../../../src/idle.c

$(IntermediateDirectory)/src_ipc$(ObjectSuffix): ../../../src/ipc.c  Lst/src_ipc$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/ipc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ipc$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ipc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ipc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ipc$(PreprocessSuffix): ../../../src/ipc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ipc$(PreprocessSuffix) ../../../src/ipc.c

$(IntermediateDirectory)/src_irq$(ObjectSuffix): ../../../src/irq.c  Lst/src_irq$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/irq.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_irq$(ObjectSuffix) -MF$(IntermediateDirectory)/src_irq$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_irq$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_irq$(PreprocessSuffix): ../../../src/irq.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_irq$(PreprocessSuffix) ../../../src/irq.c

$(IntermediateDirectory)/src_kservice$(ObjectSuffix): ../../../src/kservice.c  Lst/src_kservice$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/kservice.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_kservice$(ObjectSuffix) -MF$(IntermediateDirectory)/src_kservice$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_kservice$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_kservice$(PreprocessSuffix): ../../../src/kservice.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_kservice$(PreprocessSuffix) ../../../src/kservice.c

$(IntermediateDirectory)/src_mem$(ObjectSuffix): ../../../src/mem.c  Lst/src_mem$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/mem.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_mem$(ObjectSuffix) -MF$(IntermediateDirectory)/src_mem$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_mem$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_mem$(PreprocessSuffix): ../../../src/mem.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_mem$(PreprocessSuffix) ../../../src/mem.c

$(IntermediateDirectory)/src_memheap$(ObjectSuffix): ../../../src/memheap.c  Lst/src_memheap$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/memheap.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_memheap$(ObjectSuffix) -MF$(IntermediateDirectory)/src_memheap$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_memheap$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_memheap$(PreprocessSuffix): ../../../src/memheap.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_memheap$(PreprocessSuffix) ../../../src/memheap.c

$(IntermediateDirectory)/src_object$(ObjectSuffix): ../../../src/object.c  Lst/src_object$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/object.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_object$(ObjectSuffix) -MF$(IntermediateDirectory)/src_object$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_object$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_object$(PreprocessSuffix): ../../../src/object.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_object$(PreprocessSuffix) ../../../src/object.c

$(IntermediateDirectory)/src_scheduler$(ObjectSuffix): ../../../src/scheduler.c  Lst/src_scheduler$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/scheduler.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_scheduler$(ObjectSuffix) -MF$(IntermediateDirectory)/src_scheduler$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_scheduler$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_scheduler$(PreprocessSuffix): ../../../src/scheduler.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_scheduler$(PreprocessSuffix) ../../../src/scheduler.c

$(IntermediateDirectory)/src_signal$(ObjectSuffix): ../../../src/signal.c  Lst/src_signal$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/signal.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_signal$(ObjectSuffix) -MF$(IntermediateDirectory)/src_signal$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_signal$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_signal$(PreprocessSuffix): ../../../src/signal.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_signal$(PreprocessSuffix) ../../../src/signal.c

$(IntermediateDirectory)/src_thread$(ObjectSuffix): ../../../src/thread.c  Lst/src_thread$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/thread.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_thread$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_thread$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_thread$(PreprocessSuffix): ../../../src/thread.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_thread$(PreprocessSuffix) ../../../src/thread.c

$(IntermediateDirectory)/src_timer$(ObjectSuffix): ../../../src/timer.c  Lst/src_timer$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../src/timer.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_timer$(ObjectSuffix) -MF$(IntermediateDirectory)/src_timer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_timer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_timer$(PreprocessSuffix): ../../../src/timer.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_timer$(PreprocessSuffix) ../../../src/timer.c

$(IntermediateDirectory)/ck803_cpuport$(ObjectSuffix): ../../../libcpu/c-sky/ck803/cpuport.c  Lst/ck803_cpuport$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../libcpu/c-sky/ck803/cpuport.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ck803_cpuport$(ObjectSuffix) -MF$(IntermediateDirectory)/ck803_cpuport$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ck803_cpuport$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ck803_cpuport$(PreprocessSuffix): ../../../libcpu/c-sky/ck803/cpuport.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ck803_cpuport$(PreprocessSuffix) ../../../libcpu/c-sky/ck803/cpuport.c

$(IntermediateDirectory)/ck803_stack_ck803$(ObjectSuffix): ../../../libcpu/c-sky/ck803/stack_ck803.c  Lst/ck803_stack_ck803$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../libcpu/c-sky/ck803/stack_ck803.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ck803_stack_ck803$(ObjectSuffix) -MF$(IntermediateDirectory)/ck803_stack_ck803$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ck803_stack_ck803$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ck803_stack_ck803$(PreprocessSuffix): ../../../libcpu/c-sky/ck803/stack_ck803.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ck803_stack_ck803$(PreprocessSuffix) ../../../libcpu/c-sky/ck803/stack_ck803.c

$(IntermediateDirectory)/ck803_contex_ck803_gcc$(ObjectSuffix): ../../../libcpu/c-sky/ck803/contex_ck803_gcc.S  Lst/ck803_contex_ck803_gcc$(PreprocessSuffix)
	$(AS) $(SourceSwitch) ../../../libcpu/c-sky/ck803/contex_ck803_gcc.S $(ASFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ck803_contex_ck803_gcc$(ObjectSuffix) -MF$(IntermediateDirectory)/ck803_contex_ck803_gcc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ck803_contex_ck803_gcc$(ObjectSuffix) $(IncludeAPath) $(IncludePackagePath)
Lst/ck803_contex_ck803_gcc$(PreprocessSuffix): ../../../libcpu/c-sky/ck803/contex_ck803_gcc.S
	$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ck803_contex_ck803_gcc$(PreprocessSuffix) ../../../libcpu/c-sky/ck803/contex_ck803_gcc.S

$(IntermediateDirectory)/ck803_startup_gcc$(ObjectSuffix): ../../../libcpu/c-sky/ck803/startup_gcc.S  Lst/ck803_startup_gcc$(PreprocessSuffix)
	$(AS) $(SourceSwitch) ../../../libcpu/c-sky/ck803/startup_gcc.S $(ASFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ck803_startup_gcc$(ObjectSuffix) -MF$(IntermediateDirectory)/ck803_startup_gcc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ck803_startup_gcc$(ObjectSuffix) $(IncludeAPath) $(IncludePackagePath)
Lst/ck803_startup_gcc$(PreprocessSuffix): ../../../libcpu/c-sky/ck803/startup_gcc.S
	$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ck803_startup_gcc$(PreprocessSuffix) ../../../libcpu/c-sky/ck803/startup_gcc.S

$(IntermediateDirectory)/common_backtrace$(ObjectSuffix): ../../../libcpu/c-sky/common/backtrace.c  Lst/common_backtrace$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../libcpu/c-sky/common/backtrace.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/common_backtrace$(ObjectSuffix) -MF$(IntermediateDirectory)/common_backtrace$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/common_backtrace$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/common_backtrace$(PreprocessSuffix): ../../../libcpu/c-sky/common/backtrace.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/common_backtrace$(PreprocessSuffix) ../../../libcpu/c-sky/common/backtrace.c

$(IntermediateDirectory)/common_showmem$(ObjectSuffix): ../../../libcpu/c-sky/common/showmem.c  Lst/common_showmem$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../libcpu/c-sky/common/showmem.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/common_showmem$(ObjectSuffix) -MF$(IntermediateDirectory)/common_showmem$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/common_showmem$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/common_showmem$(PreprocessSuffix): ../../../libcpu/c-sky/common/showmem.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/common_showmem$(PreprocessSuffix) ../../../libcpu/c-sky/common/showmem.c

$(IntermediateDirectory)/src_dfs$(ObjectSuffix): ../../../components/dfs/src/dfs.c  Lst/src_dfs$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/src/dfs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_dfs$(ObjectSuffix) -MF$(IntermediateDirectory)/src_dfs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_dfs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_dfs$(PreprocessSuffix): ../../../components/dfs/src/dfs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_dfs$(PreprocessSuffix) ../../../components/dfs/src/dfs.c

$(IntermediateDirectory)/src_dfs_file$(ObjectSuffix): ../../../components/dfs/src/dfs_file.c  Lst/src_dfs_file$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/src/dfs_file.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_dfs_file$(ObjectSuffix) -MF$(IntermediateDirectory)/src_dfs_file$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_dfs_file$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_dfs_file$(PreprocessSuffix): ../../../components/dfs/src/dfs_file.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_dfs_file$(PreprocessSuffix) ../../../components/dfs/src/dfs_file.c

$(IntermediateDirectory)/src_dfs_fs$(ObjectSuffix): ../../../components/dfs/src/dfs_fs.c  Lst/src_dfs_fs$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/src/dfs_fs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_dfs_fs$(ObjectSuffix) -MF$(IntermediateDirectory)/src_dfs_fs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_dfs_fs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_dfs_fs$(PreprocessSuffix): ../../../components/dfs/src/dfs_fs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_dfs_fs$(PreprocessSuffix) ../../../components/dfs/src/dfs_fs.c

$(IntermediateDirectory)/src_dfs_posix$(ObjectSuffix): ../../../components/dfs/src/dfs_posix.c  Lst/src_dfs_posix$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/src/dfs_posix.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_dfs_posix$(ObjectSuffix) -MF$(IntermediateDirectory)/src_dfs_posix$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_dfs_posix$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_dfs_posix$(PreprocessSuffix): ../../../components/dfs/src/dfs_posix.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_dfs_posix$(PreprocessSuffix) ../../../components/dfs/src/dfs_posix.c

$(IntermediateDirectory)/src_poll$(ObjectSuffix): ../../../components/dfs/src/poll.c  Lst/src_poll$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/src/poll.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_poll$(ObjectSuffix) -MF$(IntermediateDirectory)/src_poll$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_poll$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_poll$(PreprocessSuffix): ../../../components/dfs/src/poll.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_poll$(PreprocessSuffix) ../../../components/dfs/src/poll.c

$(IntermediateDirectory)/src_select$(ObjectSuffix): ../../../components/dfs/src/select.c  Lst/src_select$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/src/select.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_select$(ObjectSuffix) -MF$(IntermediateDirectory)/src_select$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_select$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_select$(PreprocessSuffix): ../../../components/dfs/src/select.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_select$(PreprocessSuffix) ../../../components/dfs/src/select.c

$(IntermediateDirectory)/devfs_devfs$(ObjectSuffix): ../../../components/dfs/filesystems/devfs/devfs.c  Lst/devfs_devfs$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/filesystems/devfs/devfs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/devfs_devfs$(ObjectSuffix) -MF$(IntermediateDirectory)/devfs_devfs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/devfs_devfs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/devfs_devfs$(PreprocessSuffix): ../../../components/dfs/filesystems/devfs/devfs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/devfs_devfs$(PreprocessSuffix) ../../../components/dfs/filesystems/devfs/devfs.c

$(IntermediateDirectory)/elmfat_dfs_elm$(ObjectSuffix): ../../../components/dfs/filesystems/elmfat/dfs_elm.c  Lst/elmfat_dfs_elm$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/filesystems/elmfat/dfs_elm.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/elmfat_dfs_elm$(ObjectSuffix) -MF$(IntermediateDirectory)/elmfat_dfs_elm$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/elmfat_dfs_elm$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/elmfat_dfs_elm$(PreprocessSuffix): ../../../components/dfs/filesystems/elmfat/dfs_elm.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/elmfat_dfs_elm$(PreprocessSuffix) ../../../components/dfs/filesystems/elmfat/dfs_elm.c

$(IntermediateDirectory)/elmfat_ff$(ObjectSuffix): ../../../components/dfs/filesystems/elmfat/ff.c  Lst/elmfat_ff$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/filesystems/elmfat/ff.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/elmfat_ff$(ObjectSuffix) -MF$(IntermediateDirectory)/elmfat_ff$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/elmfat_ff$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/elmfat_ff$(PreprocessSuffix): ../../../components/dfs/filesystems/elmfat/ff.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/elmfat_ff$(PreprocessSuffix) ../../../components/dfs/filesystems/elmfat/ff.c

$(IntermediateDirectory)/option_ccsbcs$(ObjectSuffix): ../../../components/dfs/filesystems/elmfat/option/ccsbcs.c  Lst/option_ccsbcs$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/filesystems/elmfat/option/ccsbcs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/option_ccsbcs$(ObjectSuffix) -MF$(IntermediateDirectory)/option_ccsbcs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/option_ccsbcs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/option_ccsbcs$(PreprocessSuffix): ../../../components/dfs/filesystems/elmfat/option/ccsbcs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/option_ccsbcs$(PreprocessSuffix) ../../../components/dfs/filesystems/elmfat/option/ccsbcs.c

$(IntermediateDirectory)/net_dfs_net$(ObjectSuffix): ../../../components/dfs/filesystems/net/dfs_net.c  Lst/net_dfs_net$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/filesystems/net/dfs_net.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/net_dfs_net$(ObjectSuffix) -MF$(IntermediateDirectory)/net_dfs_net$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/net_dfs_net$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/net_dfs_net$(PreprocessSuffix): ../../../components/dfs/filesystems/net/dfs_net.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/net_dfs_net$(PreprocessSuffix) ../../../components/dfs/filesystems/net/dfs_net.c

$(IntermediateDirectory)/net_net_netdb$(ObjectSuffix): ../../../components/dfs/filesystems/net/net_netdb.c  Lst/net_net_netdb$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/filesystems/net/net_netdb.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/net_net_netdb$(ObjectSuffix) -MF$(IntermediateDirectory)/net_net_netdb$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/net_net_netdb$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/net_net_netdb$(PreprocessSuffix): ../../../components/dfs/filesystems/net/net_netdb.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/net_net_netdb$(PreprocessSuffix) ../../../components/dfs/filesystems/net/net_netdb.c

$(IntermediateDirectory)/net_net_sockets$(ObjectSuffix): ../../../components/dfs/filesystems/net/net_sockets.c  Lst/net_net_sockets$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/filesystems/net/net_sockets.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/net_net_sockets$(ObjectSuffix) -MF$(IntermediateDirectory)/net_net_sockets$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/net_net_sockets$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/net_net_sockets$(PreprocessSuffix): ../../../components/dfs/filesystems/net/net_sockets.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/net_net_sockets$(PreprocessSuffix) ../../../components/dfs/filesystems/net/net_sockets.c

$(IntermediateDirectory)/ramfs_dfs_ramfs$(ObjectSuffix): ../../../components/dfs/filesystems/ramfs/dfs_ramfs.c  Lst/ramfs_dfs_ramfs$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/filesystems/ramfs/dfs_ramfs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ramfs_dfs_ramfs$(ObjectSuffix) -MF$(IntermediateDirectory)/ramfs_dfs_ramfs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ramfs_dfs_ramfs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ramfs_dfs_ramfs$(PreprocessSuffix): ../../../components/dfs/filesystems/ramfs/dfs_ramfs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ramfs_dfs_ramfs$(PreprocessSuffix) ../../../components/dfs/filesystems/ramfs/dfs_ramfs.c

$(IntermediateDirectory)/romfs_dfs_romfs$(ObjectSuffix): ../../../components/dfs/filesystems/romfs/dfs_romfs.c  Lst/romfs_dfs_romfs$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/filesystems/romfs/dfs_romfs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/romfs_dfs_romfs$(ObjectSuffix) -MF$(IntermediateDirectory)/romfs_dfs_romfs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/romfs_dfs_romfs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/romfs_dfs_romfs$(PreprocessSuffix): ../../../components/dfs/filesystems/romfs/dfs_romfs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/romfs_dfs_romfs$(PreprocessSuffix) ../../../components/dfs/filesystems/romfs/dfs_romfs.c

$(IntermediateDirectory)/romfs_romfs$(ObjectSuffix): ../../../components/dfs/filesystems/romfs/romfs.c  Lst/romfs_romfs$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/dfs/filesystems/romfs/romfs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/romfs_romfs$(ObjectSuffix) -MF$(IntermediateDirectory)/romfs_romfs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/romfs_romfs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/romfs_romfs$(PreprocessSuffix): ../../../components/dfs/filesystems/romfs/romfs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/romfs_romfs$(PreprocessSuffix) ../../../components/dfs/filesystems/romfs/romfs.c

$(IntermediateDirectory)/cputime_cputime$(ObjectSuffix): ../../../components/drivers/cputime/cputime.c  Lst/cputime_cputime$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/cputime/cputime.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/cputime_cputime$(ObjectSuffix) -MF$(IntermediateDirectory)/cputime_cputime$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/cputime_cputime$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/cputime_cputime$(PreprocessSuffix): ../../../components/drivers/cputime/cputime.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/cputime_cputime$(PreprocessSuffix) ../../../components/drivers/cputime/cputime.c

$(IntermediateDirectory)/crypto_crypto_dev$(ObjectSuffix): ../../../components/drivers/crypto/crypto_dev.c  Lst/crypto_crypto_dev$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/crypto/crypto_dev.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/crypto_crypto_dev$(ObjectSuffix) -MF$(IntermediateDirectory)/crypto_crypto_dev$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/crypto_crypto_dev$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/crypto_crypto_dev$(PreprocessSuffix): ../../../components/drivers/crypto/crypto_dev.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/crypto_crypto_dev$(PreprocessSuffix) ../../../components/drivers/crypto/crypto_dev.c

$(IntermediateDirectory)/hwtimer_hwtimer$(ObjectSuffix): ../../../components/drivers/hwtimer/hwtimer.c  Lst/hwtimer_hwtimer$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/hwtimer/hwtimer.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/hwtimer_hwtimer$(ObjectSuffix) -MF$(IntermediateDirectory)/hwtimer_hwtimer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/hwtimer_hwtimer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/hwtimer_hwtimer$(PreprocessSuffix): ../../../components/drivers/hwtimer/hwtimer.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/hwtimer_hwtimer$(PreprocessSuffix) ../../../components/drivers/hwtimer/hwtimer.c

$(IntermediateDirectory)/i2c_i2c_core$(ObjectSuffix): ../../../components/drivers/i2c/i2c_core.c  Lst/i2c_i2c_core$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/i2c/i2c_core.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/i2c_i2c_core$(ObjectSuffix) -MF$(IntermediateDirectory)/i2c_i2c_core$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/i2c_i2c_core$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/i2c_i2c_core$(PreprocessSuffix): ../../../components/drivers/i2c/i2c_core.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/i2c_i2c_core$(PreprocessSuffix) ../../../components/drivers/i2c/i2c_core.c

$(IntermediateDirectory)/i2c_i2c_dev$(ObjectSuffix): ../../../components/drivers/i2c/i2c_dev.c  Lst/i2c_i2c_dev$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/i2c/i2c_dev.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/i2c_i2c_dev$(ObjectSuffix) -MF$(IntermediateDirectory)/i2c_i2c_dev$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/i2c_i2c_dev$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/i2c_i2c_dev$(PreprocessSuffix): ../../../components/drivers/i2c/i2c_dev.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/i2c_i2c_dev$(PreprocessSuffix) ../../../components/drivers/i2c/i2c_dev.c

$(IntermediateDirectory)/i2c_i2c-bit-ops$(ObjectSuffix): ../../../components/drivers/i2c/i2c-bit-ops.c  Lst/i2c_i2c-bit-ops$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/i2c/i2c-bit-ops.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/i2c_i2c-bit-ops$(ObjectSuffix) -MF$(IntermediateDirectory)/i2c_i2c-bit-ops$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/i2c_i2c-bit-ops$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/i2c_i2c-bit-ops$(PreprocessSuffix): ../../../components/drivers/i2c/i2c-bit-ops.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/i2c_i2c-bit-ops$(PreprocessSuffix) ../../../components/drivers/i2c/i2c-bit-ops.c

$(IntermediateDirectory)/i2c_i2c_eeprom$(ObjectSuffix): ../../../components/drivers/i2c/i2c_eeprom.c  Lst/i2c_i2c_eeprom$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/i2c/i2c_eeprom.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/i2c_i2c_eeprom$(ObjectSuffix) -MF$(IntermediateDirectory)/i2c_i2c_eeprom$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/i2c_i2c_eeprom$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/i2c_i2c_eeprom$(PreprocessSuffix): ../../../components/drivers/i2c/i2c_eeprom.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/i2c_i2c_eeprom$(PreprocessSuffix) ../../../components/drivers/i2c/i2c_eeprom.c

$(IntermediateDirectory)/misc_pin$(ObjectSuffix): ../../../components/drivers/misc/pin.c  Lst/misc_pin$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/misc/pin.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/misc_pin$(ObjectSuffix) -MF$(IntermediateDirectory)/misc_pin$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/misc_pin$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/misc_pin$(PreprocessSuffix): ../../../components/drivers/misc/pin.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/misc_pin$(PreprocessSuffix) ../../../components/drivers/misc/pin.c

$(IntermediateDirectory)/rtc_rtc$(ObjectSuffix): ../../../components/drivers/rtc/rtc.c  Lst/rtc_rtc$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/rtc/rtc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/rtc_rtc$(ObjectSuffix) -MF$(IntermediateDirectory)/rtc_rtc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/rtc_rtc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/rtc_rtc$(PreprocessSuffix): ../../../components/drivers/rtc/rtc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/rtc_rtc$(PreprocessSuffix) ../../../components/drivers/rtc/rtc.c

$(IntermediateDirectory)/rtc_soft_rtc$(ObjectSuffix): ../../../components/drivers/rtc/soft_rtc.c  Lst/rtc_soft_rtc$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/rtc/soft_rtc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/rtc_soft_rtc$(ObjectSuffix) -MF$(IntermediateDirectory)/rtc_soft_rtc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/rtc_soft_rtc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/rtc_soft_rtc$(PreprocessSuffix): ../../../components/drivers/rtc/soft_rtc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/rtc_soft_rtc$(PreprocessSuffix) ../../../components/drivers/rtc/soft_rtc.c

$(IntermediateDirectory)/sata_sata$(ObjectSuffix): ../../../components/drivers/sata/sata.c  Lst/sata_sata$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/sata/sata.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/sata_sata$(ObjectSuffix) -MF$(IntermediateDirectory)/sata_sata$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/sata_sata$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/sata_sata$(PreprocessSuffix): ../../../components/drivers/sata/sata.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/sata_sata$(PreprocessSuffix) ../../../components/drivers/sata/sata.c

$(IntermediateDirectory)/serial_serial$(ObjectSuffix): ../../../components/drivers/serial/serial.c  Lst/serial_serial$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/serial/serial.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/serial_serial$(ObjectSuffix) -MF$(IntermediateDirectory)/serial_serial$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/serial_serial$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/serial_serial$(PreprocessSuffix): ../../../components/drivers/serial/serial.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/serial_serial$(PreprocessSuffix) ../../../components/drivers/serial/serial.c

$(IntermediateDirectory)/spi_spi_core$(ObjectSuffix): ../../../components/drivers/spi/spi_core.c  Lst/spi_spi_core$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/spi/spi_core.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/spi_spi_core$(ObjectSuffix) -MF$(IntermediateDirectory)/spi_spi_core$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/spi_spi_core$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/spi_spi_core$(PreprocessSuffix): ../../../components/drivers/spi/spi_core.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/spi_spi_core$(PreprocessSuffix) ../../../components/drivers/spi/spi_core.c

$(IntermediateDirectory)/spi_spi_dev$(ObjectSuffix): ../../../components/drivers/spi/spi_dev.c  Lst/spi_spi_dev$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/spi/spi_dev.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/spi_spi_dev$(ObjectSuffix) -MF$(IntermediateDirectory)/spi_spi_dev$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/spi_spi_dev$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/spi_spi_dev$(PreprocessSuffix): ../../../components/drivers/spi/spi_dev.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/spi_spi_dev$(PreprocessSuffix) ../../../components/drivers/spi/spi_dev.c

$(IntermediateDirectory)/spi_spi_adc$(ObjectSuffix): ../../../components/drivers/spi/spi_adc.c  Lst/spi_spi_adc$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/spi/spi_adc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/spi_spi_adc$(ObjectSuffix) -MF$(IntermediateDirectory)/spi_spi_adc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/spi_spi_adc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/spi_spi_adc$(PreprocessSuffix): ../../../components/drivers/spi/spi_adc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/spi_spi_adc$(PreprocessSuffix) ../../../components/drivers/spi/spi_adc.c

$(IntermediateDirectory)/watchdog_watchdog$(ObjectSuffix): ../../../components/drivers/watchdog/watchdog.c  Lst/watchdog_watchdog$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/watchdog/watchdog.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/watchdog_watchdog$(ObjectSuffix) -MF$(IntermediateDirectory)/watchdog_watchdog$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/watchdog_watchdog$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/watchdog_watchdog$(PreprocessSuffix): ../../../components/drivers/watchdog/watchdog.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/watchdog_watchdog$(PreprocessSuffix) ../../../components/drivers/watchdog/watchdog.c

$(IntermediateDirectory)/src_completion$(ObjectSuffix): ../../../components/drivers/src/completion.c  Lst/src_completion$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/src/completion.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_completion$(ObjectSuffix) -MF$(IntermediateDirectory)/src_completion$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_completion$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_completion$(PreprocessSuffix): ../../../components/drivers/src/completion.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_completion$(PreprocessSuffix) ../../../components/drivers/src/completion.c

$(IntermediateDirectory)/src_dataqueue$(ObjectSuffix): ../../../components/drivers/src/dataqueue.c  Lst/src_dataqueue$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/src/dataqueue.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_dataqueue$(ObjectSuffix) -MF$(IntermediateDirectory)/src_dataqueue$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_dataqueue$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_dataqueue$(PreprocessSuffix): ../../../components/drivers/src/dataqueue.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_dataqueue$(PreprocessSuffix) ../../../components/drivers/src/dataqueue.c

$(IntermediateDirectory)/src_pipe$(ObjectSuffix): ../../../components/drivers/src/pipe.c  Lst/src_pipe$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/src/pipe.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_pipe$(ObjectSuffix) -MF$(IntermediateDirectory)/src_pipe$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_pipe$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_pipe$(PreprocessSuffix): ../../../components/drivers/src/pipe.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_pipe$(PreprocessSuffix) ../../../components/drivers/src/pipe.c

$(IntermediateDirectory)/src_ringbuffer$(ObjectSuffix): ../../../components/drivers/src/ringbuffer.c  Lst/src_ringbuffer$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/src/ringbuffer.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_ringbuffer$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ringbuffer$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_ringbuffer$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_ringbuffer$(PreprocessSuffix): ../../../components/drivers/src/ringbuffer.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ringbuffer$(PreprocessSuffix) ../../../components/drivers/src/ringbuffer.c

$(IntermediateDirectory)/src_waitqueue$(ObjectSuffix): ../../../components/drivers/src/waitqueue.c  Lst/src_waitqueue$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/src/waitqueue.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_waitqueue$(ObjectSuffix) -MF$(IntermediateDirectory)/src_waitqueue$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_waitqueue$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_waitqueue$(PreprocessSuffix): ../../../components/drivers/src/waitqueue.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_waitqueue$(PreprocessSuffix) ../../../components/drivers/src/waitqueue.c

$(IntermediateDirectory)/src_workqueue$(ObjectSuffix): ../../../components/drivers/src/workqueue.c  Lst/src_workqueue$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/drivers/src/workqueue.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_workqueue$(ObjectSuffix) -MF$(IntermediateDirectory)/src_workqueue$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_workqueue$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_workqueue$(PreprocessSuffix): ../../../components/drivers/src/workqueue.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_workqueue$(PreprocessSuffix) ../../../components/drivers/src/workqueue.c

$(IntermediateDirectory)/finsh_shell$(ObjectSuffix): ../../../components/finsh/shell.c  Lst/finsh_shell$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/finsh/shell.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/finsh_shell$(ObjectSuffix) -MF$(IntermediateDirectory)/finsh_shell$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/finsh_shell$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/finsh_shell$(PreprocessSuffix): ../../../components/finsh/shell.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/finsh_shell$(PreprocessSuffix) ../../../components/finsh/shell.c

$(IntermediateDirectory)/finsh_symbol$(ObjectSuffix): ../../../components/finsh/symbol.c  Lst/finsh_symbol$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/finsh/symbol.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/finsh_symbol$(ObjectSuffix) -MF$(IntermediateDirectory)/finsh_symbol$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/finsh_symbol$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/finsh_symbol$(PreprocessSuffix): ../../../components/finsh/symbol.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/finsh_symbol$(PreprocessSuffix) ../../../components/finsh/symbol.c

$(IntermediateDirectory)/finsh_cmd$(ObjectSuffix): ../../../components/finsh/cmd.c  Lst/finsh_cmd$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/finsh/cmd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/finsh_cmd$(ObjectSuffix) -MF$(IntermediateDirectory)/finsh_cmd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/finsh_cmd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/finsh_cmd$(PreprocessSuffix): ../../../components/finsh/cmd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/finsh_cmd$(PreprocessSuffix) ../../../components/finsh/cmd.c

$(IntermediateDirectory)/finsh_msh$(ObjectSuffix): ../../../components/finsh/msh.c  Lst/finsh_msh$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/finsh/msh.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/finsh_msh$(ObjectSuffix) -MF$(IntermediateDirectory)/finsh_msh$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/finsh_msh$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/finsh_msh$(PreprocessSuffix): ../../../components/finsh/msh.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/finsh_msh$(PreprocessSuffix) ../../../components/finsh/msh.c

$(IntermediateDirectory)/finsh_msh_cmd$(ObjectSuffix): ../../../components/finsh/msh_cmd.c  Lst/finsh_msh_cmd$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/finsh/msh_cmd.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/finsh_msh_cmd$(ObjectSuffix) -MF$(IntermediateDirectory)/finsh_msh_cmd$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/finsh_msh_cmd$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/finsh_msh_cmd$(PreprocessSuffix): ../../../components/finsh/msh_cmd.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/finsh_msh_cmd$(PreprocessSuffix) ../../../components/finsh/msh_cmd.c

$(IntermediateDirectory)/finsh_msh_file$(ObjectSuffix): ../../../components/finsh/msh_file.c  Lst/finsh_msh_file$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/finsh/msh_file.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/finsh_msh_file$(ObjectSuffix) -MF$(IntermediateDirectory)/finsh_msh_file$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/finsh_msh_file$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/finsh_msh_file$(PreprocessSuffix): ../../../components/finsh/msh_file.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/finsh_msh_file$(PreprocessSuffix) ../../../components/finsh/msh_file.c

$(IntermediateDirectory)/minilibc_stdlib$(ObjectSuffix): ../../../components/libc/compilers/minilibc/stdlib.c  Lst/minilibc_stdlib$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/libc/compilers/minilibc/stdlib.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/minilibc_stdlib$(ObjectSuffix) -MF$(IntermediateDirectory)/minilibc_stdlib$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/minilibc_stdlib$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/minilibc_stdlib$(PreprocessSuffix): ../../../components/libc/compilers/minilibc/stdlib.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/minilibc_stdlib$(PreprocessSuffix) ../../../components/libc/compilers/minilibc/stdlib.c

$(IntermediateDirectory)/minilibc_string$(ObjectSuffix): ../../../components/libc/compilers/minilibc/string.c  Lst/minilibc_string$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/libc/compilers/minilibc/string.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/minilibc_string$(ObjectSuffix) -MF$(IntermediateDirectory)/minilibc_string$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/minilibc_string$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/minilibc_string$(PreprocessSuffix): ../../../components/libc/compilers/minilibc/string.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/minilibc_string$(PreprocessSuffix) ../../../components/libc/compilers/minilibc/string.c

$(IntermediateDirectory)/minilibc_time$(ObjectSuffix): ../../../components/libc/compilers/minilibc/time.c  Lst/minilibc_time$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/libc/compilers/minilibc/time.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/minilibc_time$(ObjectSuffix) -MF$(IntermediateDirectory)/minilibc_time$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/minilibc_time$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/minilibc_time$(PreprocessSuffix): ../../../components/libc/compilers/minilibc/time.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/minilibc_time$(PreprocessSuffix) ../../../components/libc/compilers/minilibc/time.c

$(IntermediateDirectory)/time_clock_time$(ObjectSuffix): ../../../components/libc/time/clock_time.c  Lst/time_clock_time$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/libc/time/clock_time.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/time_clock_time$(ObjectSuffix) -MF$(IntermediateDirectory)/time_clock_time$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/time_clock_time$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/time_clock_time$(PreprocessSuffix): ../../../components/libc/time/clock_time.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/time_clock_time$(PreprocessSuffix) ../../../components/libc/time/clock_time.c

$(IntermediateDirectory)/time_posix_sleep$(ObjectSuffix): ../../../components/libc/time/posix_sleep.c  Lst/time_posix_sleep$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/libc/time/posix_sleep.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/time_posix_sleep$(ObjectSuffix) -MF$(IntermediateDirectory)/time_posix_sleep$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/time_posix_sleep$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/time_posix_sleep$(PreprocessSuffix): ../../../components/libc/time/posix_sleep.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/time_posix_sleep$(PreprocessSuffix) ../../../components/libc/time/posix_sleep.c

$(IntermediateDirectory)/arch_sys_arch$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/arch/sys_arch.c  Lst/arch_sys_arch$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/arch/sys_arch.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/arch_sys_arch$(ObjectSuffix) -MF$(IntermediateDirectory)/arch_sys_arch$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/arch_sys_arch$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/arch_sys_arch$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/arch/sys_arch.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/arch_sys_arch$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/arch/sys_arch.c

$(IntermediateDirectory)/api_api_lib$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/api/api_lib.c  Lst/api_api_lib$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/api/api_lib.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_api_lib$(ObjectSuffix) -MF$(IntermediateDirectory)/api_api_lib$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_api_lib$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_api_lib$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/api/api_lib.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_api_lib$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/api/api_lib.c

$(IntermediateDirectory)/api_api_msg$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/api/api_msg.c  Lst/api_api_msg$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/api/api_msg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_api_msg$(ObjectSuffix) -MF$(IntermediateDirectory)/api_api_msg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_api_msg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_api_msg$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/api/api_msg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_api_msg$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/api/api_msg.c

$(IntermediateDirectory)/api_err$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/api/err.c  Lst/api_err$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/api/err.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_err$(ObjectSuffix) -MF$(IntermediateDirectory)/api_err$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_err$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_err$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/api/err.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_err$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/api/err.c

$(IntermediateDirectory)/api_netbuf$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/api/netbuf.c  Lst/api_netbuf$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/api/netbuf.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_netbuf$(ObjectSuffix) -MF$(IntermediateDirectory)/api_netbuf$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_netbuf$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_netbuf$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/api/netbuf.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_netbuf$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/api/netbuf.c

$(IntermediateDirectory)/api_netdb$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/api/netdb.c  Lst/api_netdb$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/api/netdb.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_netdb$(ObjectSuffix) -MF$(IntermediateDirectory)/api_netdb$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_netdb$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_netdb$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/api/netdb.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_netdb$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/api/netdb.c

$(IntermediateDirectory)/api_netifapi$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/api/netifapi.c  Lst/api_netifapi$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/api/netifapi.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_netifapi$(ObjectSuffix) -MF$(IntermediateDirectory)/api_netifapi$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_netifapi$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_netifapi$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/api/netifapi.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_netifapi$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/api/netifapi.c

$(IntermediateDirectory)/api_sockets$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/api/sockets.c  Lst/api_sockets$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/api/sockets.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_sockets$(ObjectSuffix) -MF$(IntermediateDirectory)/api_sockets$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_sockets$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_sockets$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/api/sockets.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_sockets$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/api/sockets.c

$(IntermediateDirectory)/api_tcpip$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/api/tcpip.c  Lst/api_tcpip$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/api/tcpip.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/api_tcpip$(ObjectSuffix) -MF$(IntermediateDirectory)/api_tcpip$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/api_tcpip$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/api_tcpip$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/api/tcpip.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_tcpip$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/api/tcpip.c

$(IntermediateDirectory)/core_def$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/def.c  Lst/core_def$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/def.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_def$(ObjectSuffix) -MF$(IntermediateDirectory)/core_def$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_def$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_def$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/def.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_def$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/def.c

$(IntermediateDirectory)/core_dns$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/dns.c  Lst/core_dns$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/dns.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_dns$(ObjectSuffix) -MF$(IntermediateDirectory)/core_dns$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_dns$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_dns$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/dns.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_dns$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/dns.c

$(IntermediateDirectory)/core_inet_chksum$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/inet_chksum.c  Lst/core_inet_chksum$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/inet_chksum.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_inet_chksum$(ObjectSuffix) -MF$(IntermediateDirectory)/core_inet_chksum$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_inet_chksum$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_inet_chksum$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/inet_chksum.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_inet_chksum$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/inet_chksum.c

$(IntermediateDirectory)/core_init$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/init.c  Lst/core_init$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/init.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_init$(ObjectSuffix) -MF$(IntermediateDirectory)/core_init$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_init$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_init$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/init.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_init$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/init.c

$(IntermediateDirectory)/core_ip$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/ip.c  Lst/core_ip$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/ip.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_ip$(ObjectSuffix) -MF$(IntermediateDirectory)/core_ip$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_ip$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_ip$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/ip.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_ip$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/ip.c

$(IntermediateDirectory)/core_if$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/if.c  Lst/core_if$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/if.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_if$(ObjectSuffix) -MF$(IntermediateDirectory)/core_if$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_if$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_if$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/if.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_if$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/if.c

$(IntermediateDirectory)/core_memp$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/memp.c  Lst/core_memp$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/memp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_memp$(ObjectSuffix) -MF$(IntermediateDirectory)/core_memp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_memp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_memp$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/memp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_memp$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/memp.c

$(IntermediateDirectory)/core_netif$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/netif.c  Lst/core_netif$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/netif.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_netif$(ObjectSuffix) -MF$(IntermediateDirectory)/core_netif$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_netif$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_netif$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/netif.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_netif$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/netif.c

$(IntermediateDirectory)/core_pbuf$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/pbuf.c  Lst/core_pbuf$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/pbuf.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_pbuf$(ObjectSuffix) -MF$(IntermediateDirectory)/core_pbuf$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_pbuf$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_pbuf$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/pbuf.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_pbuf$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/pbuf.c

$(IntermediateDirectory)/core_raw$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/raw.c  Lst/core_raw$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/raw.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_raw$(ObjectSuffix) -MF$(IntermediateDirectory)/core_raw$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_raw$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_raw$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/raw.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_raw$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/raw.c

$(IntermediateDirectory)/core_stats$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/stats.c  Lst/core_stats$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/stats.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_stats$(ObjectSuffix) -MF$(IntermediateDirectory)/core_stats$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_stats$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_stats$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/stats.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_stats$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/stats.c

$(IntermediateDirectory)/core_sys$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/sys.c  Lst/core_sys$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/sys.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_sys$(ObjectSuffix) -MF$(IntermediateDirectory)/core_sys$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_sys$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_sys$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/sys.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_sys$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/sys.c

$(IntermediateDirectory)/core_tcp$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/tcp.c  Lst/core_tcp$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/tcp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_tcp$(ObjectSuffix) -MF$(IntermediateDirectory)/core_tcp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_tcp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_tcp$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/tcp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_tcp$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/tcp.c

$(IntermediateDirectory)/core_tcp_in$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/tcp_in.c  Lst/core_tcp_in$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/tcp_in.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_tcp_in$(ObjectSuffix) -MF$(IntermediateDirectory)/core_tcp_in$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_tcp_in$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_tcp_in$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/tcp_in.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_tcp_in$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/tcp_in.c

$(IntermediateDirectory)/core_tcp_out$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/tcp_out.c  Lst/core_tcp_out$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/tcp_out.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_tcp_out$(ObjectSuffix) -MF$(IntermediateDirectory)/core_tcp_out$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_tcp_out$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_tcp_out$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/tcp_out.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_tcp_out$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/tcp_out.c

$(IntermediateDirectory)/core_timeouts$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/timeouts.c  Lst/core_timeouts$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/timeouts.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_timeouts$(ObjectSuffix) -MF$(IntermediateDirectory)/core_timeouts$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_timeouts$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_timeouts$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/timeouts.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_timeouts$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/timeouts.c

$(IntermediateDirectory)/core_udp$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/udp.c  Lst/core_udp$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/udp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/core_udp$(ObjectSuffix) -MF$(IntermediateDirectory)/core_udp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/core_udp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/core_udp$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/udp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_udp$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/udp.c

$(IntermediateDirectory)/netif_ethernet$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/netif/ethernet.c  Lst/netif_ethernet$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/netif/ethernet.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/netif_ethernet$(ObjectSuffix) -MF$(IntermediateDirectory)/netif_ethernet$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/netif_ethernet$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/netif_ethernet$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/netif/ethernet.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/netif_ethernet$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/netif/ethernet.c

$(IntermediateDirectory)/netif_ethernetif$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/netif/ethernetif.c  Lst/netif_ethernetif$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/netif/ethernetif.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/netif_ethernetif$(ObjectSuffix) -MF$(IntermediateDirectory)/netif_ethernetif$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/netif_ethernetif$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/netif_ethernetif$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/netif/ethernetif.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/netif_ethernetif$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/netif/ethernetif.c

$(IntermediateDirectory)/netif_lowpan6$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/netif/lowpan6.c  Lst/netif_lowpan6$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/netif/lowpan6.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/netif_lowpan6$(ObjectSuffix) -MF$(IntermediateDirectory)/netif_lowpan6$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/netif_lowpan6$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/netif_lowpan6$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/netif/lowpan6.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/netif_lowpan6$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/netif/lowpan6.c

$(IntermediateDirectory)/ipv4_autoip$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/autoip.c  Lst/ipv4_autoip$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/ipv4/autoip.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_autoip$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_autoip$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_autoip$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_autoip$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/autoip.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_autoip$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/ipv4/autoip.c

$(IntermediateDirectory)/ipv4_dhcp$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/dhcp.c  Lst/ipv4_dhcp$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/ipv4/dhcp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_dhcp$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_dhcp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_dhcp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_dhcp$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/dhcp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_dhcp$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/ipv4/dhcp.c

$(IntermediateDirectory)/ipv4_etharp$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/etharp.c  Lst/ipv4_etharp$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/ipv4/etharp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_etharp$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_etharp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_etharp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_etharp$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/etharp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_etharp$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/ipv4/etharp.c

$(IntermediateDirectory)/ipv4_icmp$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/icmp.c  Lst/ipv4_icmp$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/ipv4/icmp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_icmp$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_icmp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_icmp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_icmp$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/icmp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_icmp$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/ipv4/icmp.c

$(IntermediateDirectory)/ipv4_igmp$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/igmp.c  Lst/ipv4_igmp$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/ipv4/igmp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_igmp$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_igmp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_igmp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_igmp$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/igmp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_igmp$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/ipv4/igmp.c

$(IntermediateDirectory)/ipv4_ip4$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/ip4.c  Lst/ipv4_ip4$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/ipv4/ip4.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_ip4$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_ip4$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_ip4$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_ip4$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/ip4.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_ip4$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/ipv4/ip4.c

$(IntermediateDirectory)/ipv4_ip4_addr$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/ip4_addr.c  Lst/ipv4_ip4_addr$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/ipv4/ip4_addr.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_ip4_addr$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_ip4_addr$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_ip4_addr$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_ip4_addr$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/ip4_addr.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_ip4_addr$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/ipv4/ip4_addr.c

$(IntermediateDirectory)/ipv4_ip4_frag$(ObjectSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/ip4_frag.c  Lst/ipv4_ip4_frag$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/net/lwip-2.0.2/src/core/ipv4/ip4_frag.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ipv4_ip4_frag$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_ip4_frag$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_ip4_frag$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ipv4_ip4_frag$(PreprocessSuffix): ../../../components/net/lwip-2.0.2/src/core/ipv4/ip4_frag.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_ip4_frag$(PreprocessSuffix) ../../../components/net/lwip-2.0.2/src/core/ipv4/ip4_frag.c

$(IntermediateDirectory)/utest_utest$(ObjectSuffix): ../../../components/utilities/utest/utest.c  Lst/utest_utest$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../components/utilities/utest/utest.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/utest_utest$(ObjectSuffix) -MF$(IntermediateDirectory)/utest_utest$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/utest_utest$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/utest_utest$(PreprocessSuffix): ../../../components/utilities/utest/utest.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/utest_utest$(PreprocessSuffix) ../../../components/utilities/utest/utest.c

$(IntermediateDirectory)/library_aes$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/aes.c  Lst/library_aes$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/aes.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_aes$(ObjectSuffix) -MF$(IntermediateDirectory)/library_aes$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_aes$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_aes$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/aes.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_aes$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/aes.c

$(IntermediateDirectory)/library_aes_alt$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/aes_alt.c  Lst/library_aes_alt$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/aes_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_aes_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/library_aes_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_aes_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_aes_alt$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/aes_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_aes_alt$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/aes_alt.c

$(IntermediateDirectory)/library_aesni$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/aesni.c  Lst/library_aesni$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/aesni.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_aesni$(ObjectSuffix) -MF$(IntermediateDirectory)/library_aesni$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_aesni$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_aesni$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/aesni.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_aesni$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/aesni.c

$(IntermediateDirectory)/library_arc4$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/arc4.c  Lst/library_arc4$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/arc4.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_arc4$(ObjectSuffix) -MF$(IntermediateDirectory)/library_arc4$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_arc4$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_arc4$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/arc4.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_arc4$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/arc4.c

$(IntermediateDirectory)/library_asn1parse$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/asn1parse.c  Lst/library_asn1parse$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/asn1parse.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_asn1parse$(ObjectSuffix) -MF$(IntermediateDirectory)/library_asn1parse$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_asn1parse$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_asn1parse$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/asn1parse.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_asn1parse$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/asn1parse.c

$(IntermediateDirectory)/library_asn1write$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/asn1write.c  Lst/library_asn1write$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/asn1write.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_asn1write$(ObjectSuffix) -MF$(IntermediateDirectory)/library_asn1write$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_asn1write$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_asn1write$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/asn1write.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_asn1write$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/asn1write.c

$(IntermediateDirectory)/library_base64$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/base64.c  Lst/library_base64$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/base64.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_base64$(ObjectSuffix) -MF$(IntermediateDirectory)/library_base64$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_base64$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_base64$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/base64.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_base64$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/base64.c

$(IntermediateDirectory)/library_bignum$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/bignum.c  Lst/library_bignum$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/bignum.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_bignum$(ObjectSuffix) -MF$(IntermediateDirectory)/library_bignum$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_bignum$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_bignum$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/bignum.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_bignum$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/bignum.c

$(IntermediateDirectory)/library_blowfish$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/blowfish.c  Lst/library_blowfish$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/blowfish.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_blowfish$(ObjectSuffix) -MF$(IntermediateDirectory)/library_blowfish$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_blowfish$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_blowfish$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/blowfish.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_blowfish$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/blowfish.c

$(IntermediateDirectory)/library_camellia$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/camellia.c  Lst/library_camellia$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/camellia.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_camellia$(ObjectSuffix) -MF$(IntermediateDirectory)/library_camellia$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_camellia$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_camellia$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/camellia.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_camellia$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/camellia.c

$(IntermediateDirectory)/library_ccm$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ccm.c  Lst/library_ccm$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ccm.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ccm$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ccm$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ccm$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ccm$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ccm.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ccm$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ccm.c

$(IntermediateDirectory)/library_certs$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/certs.c  Lst/library_certs$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/certs.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_certs$(ObjectSuffix) -MF$(IntermediateDirectory)/library_certs$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_certs$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_certs$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/certs.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_certs$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/certs.c

$(IntermediateDirectory)/library_cipher$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/cipher.c  Lst/library_cipher$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/cipher.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_cipher$(ObjectSuffix) -MF$(IntermediateDirectory)/library_cipher$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_cipher$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_cipher$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/cipher.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_cipher$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/cipher.c

$(IntermediateDirectory)/library_cipher_wrap$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/cipher_wrap.c  Lst/library_cipher_wrap$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/cipher_wrap.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_cipher_wrap$(ObjectSuffix) -MF$(IntermediateDirectory)/library_cipher_wrap$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_cipher_wrap$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_cipher_wrap$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/cipher_wrap.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_cipher_wrap$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/cipher_wrap.c

$(IntermediateDirectory)/library_cmac$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/cmac.c  Lst/library_cmac$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/cmac.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_cmac$(ObjectSuffix) -MF$(IntermediateDirectory)/library_cmac$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_cmac$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_cmac$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/cmac.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_cmac$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/cmac.c

$(IntermediateDirectory)/library_ctr_drbg$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ctr_drbg.c  Lst/library_ctr_drbg$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ctr_drbg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ctr_drbg$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ctr_drbg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ctr_drbg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ctr_drbg$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ctr_drbg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ctr_drbg$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ctr_drbg.c

$(IntermediateDirectory)/library_debug$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/debug.c  Lst/library_debug$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/debug.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_debug$(ObjectSuffix) -MF$(IntermediateDirectory)/library_debug$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_debug$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_debug$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/debug.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_debug$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/debug.c

$(IntermediateDirectory)/library_des$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/des.c  Lst/library_des$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/des.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_des$(ObjectSuffix) -MF$(IntermediateDirectory)/library_des$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_des$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_des$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/des.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_des$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/des.c

$(IntermediateDirectory)/library_dhm$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/dhm.c  Lst/library_dhm$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/dhm.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_dhm$(ObjectSuffix) -MF$(IntermediateDirectory)/library_dhm$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_dhm$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_dhm$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/dhm.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_dhm$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/dhm.c

$(IntermediateDirectory)/library_ecdh$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdh.c  Lst/library_ecdh$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdh.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecdh$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecdh$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecdh$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecdh$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdh.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecdh$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdh.c

$(IntermediateDirectory)/library_ecdh_sm2$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdh_sm2.c  Lst/library_ecdh_sm2$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdh_sm2.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecdh_sm2$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecdh_sm2$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecdh_sm2$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecdh_sm2$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdh_sm2.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecdh_sm2$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdh_sm2.c

$(IntermediateDirectory)/library_ecdsa$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdsa.c  Lst/library_ecdsa$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdsa.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecdsa$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecdsa$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecdsa$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecdsa$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdsa.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecdsa$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdsa.c

$(IntermediateDirectory)/library_ecdsa_sm2$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdsa_sm2.c  Lst/library_ecdsa_sm2$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdsa_sm2.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecdsa_sm2$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecdsa_sm2$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecdsa_sm2$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecdsa_sm2$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdsa_sm2.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecdsa_sm2$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecdsa_sm2.c

$(IntermediateDirectory)/library_ecjpake$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecjpake.c  Lst/library_ecjpake$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecjpake.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecjpake$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecjpake$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecjpake$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecjpake$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecjpake.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecjpake$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecjpake.c

$(IntermediateDirectory)/library_ecp$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp.c  Lst/library_ecp$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecp$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecp$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecp$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp.c

$(IntermediateDirectory)/library_ecp_alt$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_alt.c  Lst/library_ecp_alt$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecp_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecp_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecp_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecp_alt$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecp_alt$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_alt.c

$(IntermediateDirectory)/library_ecp_curves$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves.c  Lst/library_ecp_curves$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecp_curves$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecp_curves$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecp_curves$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecp_curves$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecp_curves$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves.c

$(IntermediateDirectory)/library_ecp_curves_alt$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c  Lst/library_ecp_curves_alt$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ecp_curves_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ecp_curves_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ecp_curves_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ecp_curves_alt$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ecp_curves_alt$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ecp_curves_alt.c

$(IntermediateDirectory)/library_entropy$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/entropy.c  Lst/library_entropy$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/entropy.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_entropy$(ObjectSuffix) -MF$(IntermediateDirectory)/library_entropy$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_entropy$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_entropy$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/entropy.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_entropy$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/entropy.c

$(IntermediateDirectory)/library_entropy_poll$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/entropy_poll.c  Lst/library_entropy_poll$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/entropy_poll.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_entropy_poll$(ObjectSuffix) -MF$(IntermediateDirectory)/library_entropy_poll$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_entropy_poll$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_entropy_poll$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/entropy_poll.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_entropy_poll$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/entropy_poll.c

$(IntermediateDirectory)/library_error$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/error.c  Lst/library_error$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/error.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_error$(ObjectSuffix) -MF$(IntermediateDirectory)/library_error$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_error$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_error$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/error.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_error$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/error.c

$(IntermediateDirectory)/library_gcm$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/gcm.c  Lst/library_gcm$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/gcm.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_gcm$(ObjectSuffix) -MF$(IntermediateDirectory)/library_gcm$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_gcm$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_gcm$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/gcm.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_gcm$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/gcm.c

$(IntermediateDirectory)/library_havege$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/havege.c  Lst/library_havege$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/havege.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_havege$(ObjectSuffix) -MF$(IntermediateDirectory)/library_havege$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_havege$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_havege$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/havege.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_havege$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/havege.c

$(IntermediateDirectory)/library_hmac_drbg$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/hmac_drbg.c  Lst/library_hmac_drbg$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/hmac_drbg.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_hmac_drbg$(ObjectSuffix) -MF$(IntermediateDirectory)/library_hmac_drbg$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_hmac_drbg$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_hmac_drbg$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/hmac_drbg.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_hmac_drbg$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/hmac_drbg.c

$(IntermediateDirectory)/library_md$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/md.c  Lst/library_md$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/md.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_md$(ObjectSuffix) -MF$(IntermediateDirectory)/library_md$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_md$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_md$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/md.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_md$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/md.c

$(IntermediateDirectory)/library_md2$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/md2.c  Lst/library_md2$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/md2.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_md2$(ObjectSuffix) -MF$(IntermediateDirectory)/library_md2$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_md2$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_md2$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/md2.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_md2$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/md2.c

$(IntermediateDirectory)/library_md4$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/md4.c  Lst/library_md4$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/md4.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_md4$(ObjectSuffix) -MF$(IntermediateDirectory)/library_md4$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_md4$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_md4$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/md4.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_md4$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/md4.c

$(IntermediateDirectory)/library_md5$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/md5.c  Lst/library_md5$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/md5.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_md5$(ObjectSuffix) -MF$(IntermediateDirectory)/library_md5$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_md5$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_md5$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/md5.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_md5$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/md5.c

$(IntermediateDirectory)/library_md_wrap$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/md_wrap.c  Lst/library_md_wrap$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/md_wrap.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_md_wrap$(ObjectSuffix) -MF$(IntermediateDirectory)/library_md_wrap$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_md_wrap$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_md_wrap$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/md_wrap.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_md_wrap$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/md_wrap.c

$(IntermediateDirectory)/library_memory_buffer_alloc$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/memory_buffer_alloc.c  Lst/library_memory_buffer_alloc$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/memory_buffer_alloc.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_memory_buffer_alloc$(ObjectSuffix) -MF$(IntermediateDirectory)/library_memory_buffer_alloc$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_memory_buffer_alloc$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_memory_buffer_alloc$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/memory_buffer_alloc.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_memory_buffer_alloc$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/memory_buffer_alloc.c

$(IntermediateDirectory)/library_oid$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/oid.c  Lst/library_oid$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/oid.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_oid$(ObjectSuffix) -MF$(IntermediateDirectory)/library_oid$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_oid$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_oid$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/oid.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_oid$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/oid.c

$(IntermediateDirectory)/library_padlock$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/padlock.c  Lst/library_padlock$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/padlock.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_padlock$(ObjectSuffix) -MF$(IntermediateDirectory)/library_padlock$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_padlock$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_padlock$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/padlock.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_padlock$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/padlock.c

$(IntermediateDirectory)/library_pem$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pem.c  Lst/library_pem$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/pem.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pem$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pem$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pem$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pem$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pem.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pem$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/pem.c

$(IntermediateDirectory)/library_pk$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pk.c  Lst/library_pk$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/pk.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pk$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pk$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pk$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pk$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pk.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pk$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/pk.c

$(IntermediateDirectory)/library_pk_wrap$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pk_wrap.c  Lst/library_pk_wrap$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/pk_wrap.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pk_wrap$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pk_wrap$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pk_wrap$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pk_wrap$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pk_wrap.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pk_wrap$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/pk_wrap.c

$(IntermediateDirectory)/library_pkcs11$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pkcs11.c  Lst/library_pkcs11$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/pkcs11.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pkcs11$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pkcs11$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pkcs11$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pkcs11$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pkcs11.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pkcs11$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/pkcs11.c

$(IntermediateDirectory)/library_pkcs12$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pkcs12.c  Lst/library_pkcs12$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/pkcs12.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pkcs12$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pkcs12$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pkcs12$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pkcs12$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pkcs12.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pkcs12$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/pkcs12.c

$(IntermediateDirectory)/library_pkcs5$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pkcs5.c  Lst/library_pkcs5$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/pkcs5.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pkcs5$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pkcs5$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pkcs5$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pkcs5$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pkcs5.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pkcs5$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/pkcs5.c

$(IntermediateDirectory)/library_pkparse$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pkparse.c  Lst/library_pkparse$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/pkparse.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pkparse$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pkparse$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pkparse$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pkparse$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pkparse.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pkparse$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/pkparse.c

$(IntermediateDirectory)/library_pkwrite$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pkwrite.c  Lst/library_pkwrite$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/pkwrite.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_pkwrite$(ObjectSuffix) -MF$(IntermediateDirectory)/library_pkwrite$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_pkwrite$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_pkwrite$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/pkwrite.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_pkwrite$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/pkwrite.c

$(IntermediateDirectory)/library_platform$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/platform.c  Lst/library_platform$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/platform.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_platform$(ObjectSuffix) -MF$(IntermediateDirectory)/library_platform$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_platform$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_platform$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/platform.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_platform$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/platform.c

$(IntermediateDirectory)/library_ripemd160$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ripemd160.c  Lst/library_ripemd160$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ripemd160.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ripemd160$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ripemd160$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ripemd160$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ripemd160$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ripemd160.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ripemd160$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ripemd160.c

$(IntermediateDirectory)/library_rsa$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/rsa.c  Lst/library_rsa$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/rsa.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_rsa$(ObjectSuffix) -MF$(IntermediateDirectory)/library_rsa$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_rsa$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_rsa$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/rsa.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_rsa$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/rsa.c

$(IntermediateDirectory)/library_sha1$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sha1.c  Lst/library_sha1$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/sha1.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_sha1$(ObjectSuffix) -MF$(IntermediateDirectory)/library_sha1$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_sha1$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_sha1$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sha1.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_sha1$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/sha1.c

$(IntermediateDirectory)/library_sha1_alt$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sha1_alt.c  Lst/library_sha1_alt$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/sha1_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_sha1_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/library_sha1_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_sha1_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_sha1_alt$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sha1_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_sha1_alt$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/sha1_alt.c

$(IntermediateDirectory)/library_sha256$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sha256.c  Lst/library_sha256$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/sha256.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_sha256$(ObjectSuffix) -MF$(IntermediateDirectory)/library_sha256$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_sha256$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_sha256$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sha256.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_sha256$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/sha256.c

$(IntermediateDirectory)/library_sha256_alt$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sha256_alt.c  Lst/library_sha256_alt$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/sha256_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_sha256_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/library_sha256_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_sha256_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_sha256_alt$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sha256_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_sha256_alt$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/sha256_alt.c

$(IntermediateDirectory)/library_sha512$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sha512.c  Lst/library_sha512$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/sha512.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_sha512$(ObjectSuffix) -MF$(IntermediateDirectory)/library_sha512$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_sha512$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_sha512$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sha512.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_sha512$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/sha512.c

$(IntermediateDirectory)/library_sm2$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sm2.c  Lst/library_sm2$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/sm2.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_sm2$(ObjectSuffix) -MF$(IntermediateDirectory)/library_sm2$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_sm2$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_sm2$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sm2.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_sm2$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/sm2.c

$(IntermediateDirectory)/library_sm3$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sm3.c  Lst/library_sm3$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/sm3.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_sm3$(ObjectSuffix) -MF$(IntermediateDirectory)/library_sm3$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_sm3$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_sm3$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sm3.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_sm3$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/sm3.c

$(IntermediateDirectory)/library_sm4$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sm4.c  Lst/library_sm4$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/sm4.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_sm4$(ObjectSuffix) -MF$(IntermediateDirectory)/library_sm4$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_sm4$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_sm4$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/sm4.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_sm4$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/sm4.c

$(IntermediateDirectory)/library_ssl_cache$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cache.c  Lst/library_ssl_cache$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cache.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_cache$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_cache$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_cache$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_cache$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cache.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_cache$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cache.c

$(IntermediateDirectory)/library_ssl_ciphersuites$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_ciphersuites.c  Lst/library_ssl_ciphersuites$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_ciphersuites.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_ciphersuites$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_ciphersuites$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_ciphersuites$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_ciphersuites$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_ciphersuites.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_ciphersuites$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_ciphersuites.c

$(IntermediateDirectory)/library_ssl_cli$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c  Lst/library_ssl_cli$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_cli$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_cli$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_cli$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_cli$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_cli$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cli.c

$(IntermediateDirectory)/library_ssl_cookie$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cookie.c  Lst/library_ssl_cookie$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cookie.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_cookie$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_cookie$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_cookie$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_cookie$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cookie.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_cookie$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_cookie.c

$(IntermediateDirectory)/library_ssl_srv$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_srv.c  Lst/library_ssl_srv$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_srv.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_srv$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_srv$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_srv$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_srv$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_srv.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_srv$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_srv.c

$(IntermediateDirectory)/library_ssl_ticket$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_ticket.c  Lst/library_ssl_ticket$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_ticket.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_ticket$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_ticket$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_ticket$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_ticket$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_ticket.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_ticket$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_ticket.c

$(IntermediateDirectory)/library_ssl_tls$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c  Lst/library_ssl_tls$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_ssl_tls$(ObjectSuffix) -MF$(IntermediateDirectory)/library_ssl_tls$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_ssl_tls$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_ssl_tls$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_ssl_tls$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/ssl_tls.c

$(IntermediateDirectory)/library_threading$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/threading.c  Lst/library_threading$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/threading.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_threading$(ObjectSuffix) -MF$(IntermediateDirectory)/library_threading$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_threading$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_threading$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/threading.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_threading$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/threading.c

$(IntermediateDirectory)/library_timing$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/timing.c  Lst/library_timing$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/timing.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_timing$(ObjectSuffix) -MF$(IntermediateDirectory)/library_timing$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_timing$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_timing$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/timing.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_timing$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/timing.c

$(IntermediateDirectory)/library_version$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/version.c  Lst/library_version$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/version.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_version$(ObjectSuffix) -MF$(IntermediateDirectory)/library_version$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_version$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_version$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/version.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_version$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/version.c

$(IntermediateDirectory)/library_version_features$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/version_features.c  Lst/library_version_features$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/version_features.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_version_features$(ObjectSuffix) -MF$(IntermediateDirectory)/library_version_features$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_version_features$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_version_features$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/version_features.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_version_features$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/version_features.c

$(IntermediateDirectory)/library_x509$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509.c  Lst/library_x509$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509.c

$(IntermediateDirectory)/library_x509_create$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_create.c  Lst/library_x509_create$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_create.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509_create$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509_create$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509_create$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509_create$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_create.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509_create$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_create.c

$(IntermediateDirectory)/library_x509_crl$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_crl.c  Lst/library_x509_crl$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_crl.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509_crl$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509_crl$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509_crl$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509_crl$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_crl.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509_crl$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_crl.c

$(IntermediateDirectory)/library_x509_crt$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_crt.c  Lst/library_x509_crt$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_crt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509_crt$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509_crt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509_crt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509_crt$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_crt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509_crt$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_crt.c

$(IntermediateDirectory)/library_x509_csr$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_csr.c  Lst/library_x509_csr$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_csr.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509_csr$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509_csr$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509_csr$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509_csr$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_csr.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509_csr$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509_csr.c

$(IntermediateDirectory)/library_x509write_crt$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509write_crt.c  Lst/library_x509write_crt$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509write_crt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509write_crt$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509write_crt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509write_crt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509write_crt$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509write_crt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509write_crt$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509write_crt.c

$(IntermediateDirectory)/library_x509write_csr$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509write_csr.c  Lst/library_x509write_csr$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509write_csr.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_x509write_csr$(ObjectSuffix) -MF$(IntermediateDirectory)/library_x509write_csr$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_x509write_csr$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_x509write_csr$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/x509write_csr.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_x509write_csr$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/x509write_csr.c

$(IntermediateDirectory)/library_xtea$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/xtea.c  Lst/library_xtea$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/mbedtls/library/xtea.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/library_xtea$(ObjectSuffix) -MF$(IntermediateDirectory)/library_xtea$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/library_xtea$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/library_xtea$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/mbedtls/library/xtea.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/library_xtea$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/mbedtls/library/xtea.c

$(IntermediateDirectory)/src_threading_alt$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/ports/src/threading_alt.c  Lst/src_threading_alt$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/ports/src/threading_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_threading_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/src_threading_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_threading_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_threading_alt$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/ports/src/threading_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_threading_alt$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/ports/src/threading_alt.c

$(IntermediateDirectory)/src_timing_alt$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/ports/src/timing_alt.c  Lst/src_timing_alt$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/ports/src/timing_alt.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_timing_alt$(ObjectSuffix) -MF$(IntermediateDirectory)/src_timing_alt$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_timing_alt$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_timing_alt$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/ports/src/timing_alt.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_timing_alt$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/ports/src/timing_alt.c

$(IntermediateDirectory)/src_tls_certificate$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/ports/src/tls_certificate.c  Lst/src_tls_certificate$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/ports/src/tls_certificate.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_tls_certificate$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tls_certificate$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_tls_certificate$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_tls_certificate$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/ports/src/tls_certificate.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_tls_certificate$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/ports/src/tls_certificate.c

$(IntermediateDirectory)/src_tls_client$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/ports/src/tls_client.c  Lst/src_tls_client$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/ports/src/tls_client.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_tls_client$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tls_client$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_tls_client$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_tls_client$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/ports/src/tls_client.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_tls_client$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/ports/src/tls_client.c

$(IntermediateDirectory)/src_tls_hardware$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/ports/src/tls_hardware.c  Lst/src_tls_hardware$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/ports/src/tls_hardware.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_tls_hardware$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tls_hardware$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_tls_hardware$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_tls_hardware$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/ports/src/tls_hardware.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_tls_hardware$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/ports/src/tls_hardware.c

$(IntermediateDirectory)/src_tls_net$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/ports/src/tls_net.c  Lst/src_tls_net$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/ports/src/tls_net.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_tls_net$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tls_net$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_tls_net$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_tls_net$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/ports/src/tls_net.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_tls_net$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/ports/src/tls_net.c

$(IntermediateDirectory)/src_tls_server$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/ports/src/tls_server.c  Lst/src_tls_server$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/ports/src/tls_server.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_tls_server$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tls_server$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_tls_server$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_tls_server$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/ports/src/tls_server.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_tls_server$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/ports/src/tls_server.c

$(IntermediateDirectory)/samples_crypto_app_test$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/samples/crypto_app_test.c  Lst/samples_crypto_app_test$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/samples/crypto_app_test.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/samples_crypto_app_test$(ObjectSuffix) -MF$(IntermediateDirectory)/samples_crypto_app_test$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/samples_crypto_app_test$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/samples_crypto_app_test$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/samples/crypto_app_test.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/samples_crypto_app_test$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/samples/crypto_app_test.c

$(IntermediateDirectory)/samples_tls_app_test$(ObjectSuffix): ../../../packages/mbedtls-2.6.0/samples/tls_app_test.c  Lst/samples_tls_app_test$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/mbedtls-2.6.0/samples/tls_app_test.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/samples_tls_app_test$(ObjectSuffix) -MF$(IntermediateDirectory)/samples_tls_app_test$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/samples_tls_app_test$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/samples_tls_app_test$(PreprocessSuffix): ../../../packages/mbedtls-2.6.0/samples/tls_app_test.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/samples_tls_app_test$(PreprocessSuffix) ../../../packages/mbedtls-2.6.0/samples/tls_app_test.c

$(IntermediateDirectory)/iperf_iperf$(ObjectSuffix): ../../../packages/netutils-1.0.0/iperf/iperf.c  Lst/iperf_iperf$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/netutils-1.0.0/iperf/iperf.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/iperf_iperf$(ObjectSuffix) -MF$(IntermediateDirectory)/iperf_iperf$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/iperf_iperf$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/iperf_iperf$(PreprocessSuffix): ../../../packages/netutils-1.0.0/iperf/iperf.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/iperf_iperf$(PreprocessSuffix) ../../../packages/netutils-1.0.0/iperf/iperf.c

$(IntermediateDirectory)/ntp_ntp$(ObjectSuffix): ../../../packages/netutils-1.0.0/ntp/ntp.c  Lst/ntp_ntp$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/netutils-1.0.0/ntp/ntp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ntp_ntp$(ObjectSuffix) -MF$(IntermediateDirectory)/ntp_ntp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ntp_ntp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ntp_ntp$(PreprocessSuffix): ../../../packages/netutils-1.0.0/ntp/ntp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ntp_ntp$(PreprocessSuffix) ../../../packages/netutils-1.0.0/ntp/ntp.c

$(IntermediateDirectory)/ping_ping$(ObjectSuffix): ../../../packages/netutils-1.0.0/ping/ping.c  Lst/ping_ping$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/netutils-1.0.0/ping/ping.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/ping_ping$(ObjectSuffix) -MF$(IntermediateDirectory)/ping_ping$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/ping_ping$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/ping_ping$(PreprocessSuffix): ../../../packages/netutils-1.0.0/ping/ping.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ping_ping$(PreprocessSuffix) ../../../packages/netutils-1.0.0/ping/ping.c

$(IntermediateDirectory)/tftp_tftp_port$(ObjectSuffix): ../../../packages/netutils-1.0.0/tftp/tftp_port.c  Lst/tftp_tftp_port$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/netutils-1.0.0/tftp/tftp_port.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/tftp_tftp_port$(ObjectSuffix) -MF$(IntermediateDirectory)/tftp_tftp_port$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/tftp_tftp_port$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/tftp_tftp_port$(PreprocessSuffix): ../../../packages/netutils-1.0.0/tftp/tftp_port.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/tftp_tftp_port$(PreprocessSuffix) ../../../packages/netutils-1.0.0/tftp/tftp_port.c

$(IntermediateDirectory)/tftp_tftp_server$(ObjectSuffix): ../../../packages/netutils-1.0.0/tftp/tftp_server.c  Lst/tftp_tftp_server$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/netutils-1.0.0/tftp/tftp_server.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/tftp_tftp_server$(ObjectSuffix) -MF$(IntermediateDirectory)/tftp_tftp_server$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/tftp_tftp_server$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/tftp_tftp_server$(PreprocessSuffix): ../../../packages/netutils-1.0.0/tftp/tftp_server.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/tftp_tftp_server$(PreprocessSuffix) ../../../packages/netutils-1.0.0/tftp/tftp_server.c

$(IntermediateDirectory)/src_webclient$(ObjectSuffix): ../../../packages/webclient-2.0.1/src/webclient.c  Lst/src_webclient$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webclient-2.0.1/src/webclient.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_webclient$(ObjectSuffix) -MF$(IntermediateDirectory)/src_webclient$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_webclient$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_webclient$(PreprocessSuffix): ../../../packages/webclient-2.0.1/src/webclient.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_webclient$(PreprocessSuffix) ../../../packages/webclient-2.0.1/src/webclient.c

$(IntermediateDirectory)/src_webclient_file$(ObjectSuffix): ../../../packages/webclient-2.0.1/src/webclient_file.c  Lst/src_webclient_file$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webclient-2.0.1/src/webclient_file.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_webclient_file$(ObjectSuffix) -MF$(IntermediateDirectory)/src_webclient_file$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_webclient_file$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_webclient_file$(PreprocessSuffix): ../../../packages/webclient-2.0.1/src/webclient_file.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_webclient_file$(PreprocessSuffix) ../../../packages/webclient-2.0.1/src/webclient_file.c

$(IntermediateDirectory)/samples_webclient_get_sample$(ObjectSuffix): ../../../packages/webclient-2.0.1/samples/webclient_get_sample.c  Lst/samples_webclient_get_sample$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webclient-2.0.1/samples/webclient_get_sample.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/samples_webclient_get_sample$(ObjectSuffix) -MF$(IntermediateDirectory)/samples_webclient_get_sample$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/samples_webclient_get_sample$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/samples_webclient_get_sample$(PreprocessSuffix): ../../../packages/webclient-2.0.1/samples/webclient_get_sample.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/samples_webclient_get_sample$(PreprocessSuffix) ../../../packages/webclient-2.0.1/samples/webclient_get_sample.c

$(IntermediateDirectory)/samples_webclient_post_sample$(ObjectSuffix): ../../../packages/webclient-2.0.1/samples/webclient_post_sample.c  Lst/samples_webclient_post_sample$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webclient-2.0.1/samples/webclient_post_sample.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/samples_webclient_post_sample$(ObjectSuffix) -MF$(IntermediateDirectory)/samples_webclient_post_sample$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/samples_webclient_post_sample$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/samples_webclient_post_sample$(PreprocessSuffix): ../../../packages/webclient-2.0.1/samples/webclient_post_sample.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/samples_webclient_post_sample$(PreprocessSuffix) ../../../packages/webclient-2.0.1/samples/webclient_post_sample.c

$(IntermediateDirectory)/src_webnet$(ObjectSuffix): ../../../packages/webnet-2.0.0/src/webnet.c  Lst/src_webnet$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/src/webnet.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_webnet$(ObjectSuffix) -MF$(IntermediateDirectory)/src_webnet$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_webnet$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_webnet$(PreprocessSuffix): ../../../packages/webnet-2.0.0/src/webnet.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_webnet$(PreprocessSuffix) ../../../packages/webnet-2.0.0/src/webnet.c

$(IntermediateDirectory)/src_wn_mimetype$(ObjectSuffix): ../../../packages/webnet-2.0.0/src/wn_mimetype.c  Lst/src_wn_mimetype$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/src/wn_mimetype.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_wn_mimetype$(ObjectSuffix) -MF$(IntermediateDirectory)/src_wn_mimetype$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_wn_mimetype$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_wn_mimetype$(PreprocessSuffix): ../../../packages/webnet-2.0.0/src/wn_mimetype.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_wn_mimetype$(PreprocessSuffix) ../../../packages/webnet-2.0.0/src/wn_mimetype.c

$(IntermediateDirectory)/src_wn_request$(ObjectSuffix): ../../../packages/webnet-2.0.0/src/wn_request.c  Lst/src_wn_request$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/src/wn_request.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_wn_request$(ObjectSuffix) -MF$(IntermediateDirectory)/src_wn_request$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_wn_request$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_wn_request$(PreprocessSuffix): ../../../packages/webnet-2.0.0/src/wn_request.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_wn_request$(PreprocessSuffix) ../../../packages/webnet-2.0.0/src/wn_request.c

$(IntermediateDirectory)/src_wn_session$(ObjectSuffix): ../../../packages/webnet-2.0.0/src/wn_session.c  Lst/src_wn_session$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/src/wn_session.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_wn_session$(ObjectSuffix) -MF$(IntermediateDirectory)/src_wn_session$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_wn_session$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_wn_session$(PreprocessSuffix): ../../../packages/webnet-2.0.0/src/wn_session.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_wn_session$(PreprocessSuffix) ../../../packages/webnet-2.0.0/src/wn_session.c

$(IntermediateDirectory)/src_wn_utils$(ObjectSuffix): ../../../packages/webnet-2.0.0/src/wn_utils.c  Lst/src_wn_utils$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/src/wn_utils.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_wn_utils$(ObjectSuffix) -MF$(IntermediateDirectory)/src_wn_utils$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_wn_utils$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_wn_utils$(PreprocessSuffix): ../../../packages/webnet-2.0.0/src/wn_utils.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_wn_utils$(PreprocessSuffix) ../../../packages/webnet-2.0.0/src/wn_utils.c

$(IntermediateDirectory)/src_wn_module$(ObjectSuffix): ../../../packages/webnet-2.0.0/src/wn_module.c  Lst/src_wn_module$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/src/wn_module.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/src_wn_module$(ObjectSuffix) -MF$(IntermediateDirectory)/src_wn_module$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/src_wn_module$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/src_wn_module$(PreprocessSuffix): ../../../packages/webnet-2.0.0/src/wn_module.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_wn_module$(PreprocessSuffix) ../../../packages/webnet-2.0.0/src/wn_module.c

$(IntermediateDirectory)/module_wn_module_asp$(ObjectSuffix): ../../../packages/webnet-2.0.0/module/wn_module_asp.c  Lst/module_wn_module_asp$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/module/wn_module_asp.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/module_wn_module_asp$(ObjectSuffix) -MF$(IntermediateDirectory)/module_wn_module_asp$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/module_wn_module_asp$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/module_wn_module_asp$(PreprocessSuffix): ../../../packages/webnet-2.0.0/module/wn_module_asp.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/module_wn_module_asp$(PreprocessSuffix) ../../../packages/webnet-2.0.0/module/wn_module_asp.c

$(IntermediateDirectory)/module_wn_module_auth$(ObjectSuffix): ../../../packages/webnet-2.0.0/module/wn_module_auth.c  Lst/module_wn_module_auth$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/module/wn_module_auth.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/module_wn_module_auth$(ObjectSuffix) -MF$(IntermediateDirectory)/module_wn_module_auth$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/module_wn_module_auth$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/module_wn_module_auth$(PreprocessSuffix): ../../../packages/webnet-2.0.0/module/wn_module_auth.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/module_wn_module_auth$(PreprocessSuffix) ../../../packages/webnet-2.0.0/module/wn_module_auth.c

$(IntermediateDirectory)/module_wn_module_cgi$(ObjectSuffix): ../../../packages/webnet-2.0.0/module/wn_module_cgi.c  Lst/module_wn_module_cgi$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/module/wn_module_cgi.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/module_wn_module_cgi$(ObjectSuffix) -MF$(IntermediateDirectory)/module_wn_module_cgi$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/module_wn_module_cgi$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/module_wn_module_cgi$(PreprocessSuffix): ../../../packages/webnet-2.0.0/module/wn_module_cgi.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/module_wn_module_cgi$(PreprocessSuffix) ../../../packages/webnet-2.0.0/module/wn_module_cgi.c

$(IntermediateDirectory)/module_wn_module_index$(ObjectSuffix): ../../../packages/webnet-2.0.0/module/wn_module_index.c  Lst/module_wn_module_index$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/module/wn_module_index.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/module_wn_module_index$(ObjectSuffix) -MF$(IntermediateDirectory)/module_wn_module_index$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/module_wn_module_index$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/module_wn_module_index$(PreprocessSuffix): ../../../packages/webnet-2.0.0/module/wn_module_index.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/module_wn_module_index$(PreprocessSuffix) ../../../packages/webnet-2.0.0/module/wn_module_index.c

$(IntermediateDirectory)/module_wn_module_alias$(ObjectSuffix): ../../../packages/webnet-2.0.0/module/wn_module_alias.c  Lst/module_wn_module_alias$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/module/wn_module_alias.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/module_wn_module_alias$(ObjectSuffix) -MF$(IntermediateDirectory)/module_wn_module_alias$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/module_wn_module_alias$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/module_wn_module_alias$(PreprocessSuffix): ../../../packages/webnet-2.0.0/module/wn_module_alias.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/module_wn_module_alias$(PreprocessSuffix) ../../../packages/webnet-2.0.0/module/wn_module_alias.c

$(IntermediateDirectory)/module_wn_module_upload$(ObjectSuffix): ../../../packages/webnet-2.0.0/module/wn_module_upload.c  Lst/module_wn_module_upload$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/module/wn_module_upload.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/module_wn_module_upload$(ObjectSuffix) -MF$(IntermediateDirectory)/module_wn_module_upload$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/module_wn_module_upload$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/module_wn_module_upload$(PreprocessSuffix): ../../../packages/webnet-2.0.0/module/wn_module_upload.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/module_wn_module_upload$(PreprocessSuffix) ../../../packages/webnet-2.0.0/module/wn_module_upload.c

$(IntermediateDirectory)/module_wn_module_ssi$(ObjectSuffix): ../../../packages/webnet-2.0.0/module/wn_module_ssi.c  Lst/module_wn_module_ssi$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/module/wn_module_ssi.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/module_wn_module_ssi$(ObjectSuffix) -MF$(IntermediateDirectory)/module_wn_module_ssi$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/module_wn_module_ssi$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/module_wn_module_ssi$(PreprocessSuffix): ../../../packages/webnet-2.0.0/module/wn_module_ssi.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/module_wn_module_ssi$(PreprocessSuffix) ../../../packages/webnet-2.0.0/module/wn_module_ssi.c

$(IntermediateDirectory)/samples_wn_sample$(ObjectSuffix): ../../../packages/webnet-2.0.0/samples/wn_sample.c  Lst/samples_wn_sample$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/samples/wn_sample.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/samples_wn_sample$(ObjectSuffix) -MF$(IntermediateDirectory)/samples_wn_sample$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/samples_wn_sample$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/samples_wn_sample$(PreprocessSuffix): ../../../packages/webnet-2.0.0/samples/wn_sample.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/samples_wn_sample$(PreprocessSuffix) ../../../packages/webnet-2.0.0/samples/wn_sample.c

$(IntermediateDirectory)/samples_wn_sample_upload$(ObjectSuffix): ../../../packages/webnet-2.0.0/samples/wn_sample_upload.c  Lst/samples_wn_sample_upload$(PreprocessSuffix)
	$(CC) $(SourceSwitch) ../../../packages/webnet-2.0.0/samples/wn_sample_upload.c $(CFLAGS) -MMD -MP -MT$(IntermediateDirectory)/samples_wn_sample_upload$(ObjectSuffix) -MF$(IntermediateDirectory)/samples_wn_sample_upload$(DependSuffix) $(ObjectSwitch)$(IntermediateDirectory)/samples_wn_sample_upload$(ObjectSuffix) $(IncludeCPath) $(IncludePackagePath)
Lst/samples_wn_sample_upload$(PreprocessSuffix): ../../../packages/webnet-2.0.0/samples/wn_sample_upload.c
	$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/samples_wn_sample_upload$(PreprocessSuffix) ../../../packages/webnet-2.0.0/samples/wn_sample_upload.c


$(IntermediateDirectory)/__rt_entry$(ObjectSuffix): $(IntermediateDirectory)/__rt_entry$(DependSuffix)
	@$(AS) $(SourceSwitch) $(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) $(IncludeAPath)
$(IntermediateDirectory)/__rt_entry$(DependSuffix):
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) -MF$(IntermediateDirectory)/__rt_entry$(DependSuffix) -MM $(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S

-include $(IntermediateDirectory)/*$(DependSuffix)
