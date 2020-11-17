##
## Auto Generated makefile by CDK
## Do not modify this file, and any manual changes will be erased!!!   
##
## BuildSet
ProjectName            :=rt-thread
ConfigurationName      :=BuildSet
WorkspacePath          :=E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/
ProjectPath            :=E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/
IntermediateDirectory  :=Obj
OutDir                 :=$(IntermediateDirectory)
User                   :=Administrator
Date                   :=17/11/2020
CDKPath                :=D:/C-Sky/CDK
LinkerName             :=csky-elfabiv2-gcc
LinkerNameoption       :=
SIZE                   :=csky-elf-size
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
ObjectsFileList        :="rt-thread.txt"
MakeDirCommand         :=mkdir
LinkOptions            := -mcpu=ck803s  -nostartfiles -Wl,--gc-sections  -T"$(ProjectPath)/fw_jtag.ld"
IncludeCPath           :=$(IncludeSwitch)entry $(IncludeSwitch). $(IncludeSwitch)../drivers $(IncludeSwitch)../libraries/inc $(IncludeSwitch)../../../components/drivers/include $(IncludeSwitch)../../../components/net/lwip-2.0.2/src $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/arch/include $(IncludeSwitch)../libraries/inc/tih $(IncludeSwitch)../libraries/src $(IncludeSwitch)../../../include $(IncludeSwitch)../../../libcpu/c-sky/ck803 $(IncludeSwitch)../../../libcpu/c-sky/common $(IncludeSwitch)../../../components/dfs/include $(IncludeSwitch)../../../components/dfs/filesystems/devfs $(IncludeSwitch)../../../components/dfs/filesystems/elmfat $(IncludeSwitch)../../../components/dfs/filesystems/net $(IncludeSwitch)../../../components/dfs/filesystems/net/select $(IncludeSwitch)../../../components/dfs/filesystems/net/socket $(IncludeSwitch)../../../components/dfs/filesystems/ramfs $(IncludeSwitch)../../../components/dfs/filesystems/romfs $(IncludeSwitch)../../../components/finsh $(IncludeSwitch)../../../components/libc/compilers/minilibc $(IncludeSwitch)../../../components/libc/time $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include/ipv4 $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include/netif $(IncludeSwitch)../../../packages/netutils-1.0.0/ntp $(IncludeSwitch)../../../packages/netutils-1.0.0/ping 
IncludeAPath           :=$(IncludeSwitch)entry -Wa,$(IncludeSwitch)entry $(IncludeSwitch). -Wa,$(IncludeSwitch). $(IncludeSwitch)../drivers -Wa,$(IncludeSwitch)../drivers $(IncludeSwitch)../libraries/inc -Wa,$(IncludeSwitch)../libraries/inc $(IncludeSwitch)../../../components/drivers/include -Wa,$(IncludeSwitch)../../../components/drivers/include $(IncludeSwitch)../../../components/net/lwip-2.0.2/src -Wa,$(IncludeSwitch)../../../components/net/lwip-2.0.2/src $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include -Wa,$(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/arch/include -Wa,$(IncludeSwitch)../../../components/net/lwip-2.0.2/src/arch/include $(IncludeSwitch)../libraries/inc/tih -Wa,$(IncludeSwitch)../libraries/inc/tih $(IncludeSwitch)../libraries/src -Wa,$(IncludeSwitch)../libraries/src $(IncludeSwitch)../../../include -Wa,$(IncludeSwitch)../../../include $(IncludeSwitch)../../../libcpu/c-sky/ck803 -Wa,$(IncludeSwitch)../../../libcpu/c-sky/ck803 $(IncludeSwitch)../../../libcpu/c-sky/common -Wa,$(IncludeSwitch)../../../libcpu/c-sky/common $(IncludeSwitch)../../../components/dfs/include -Wa,$(IncludeSwitch)../../../components/dfs/include $(IncludeSwitch)../../../components/dfs/filesystems/devfs -Wa,$(IncludeSwitch)../../../components/dfs/filesystems/devfs $(IncludeSwitch)../../../components/dfs/filesystems/elmfat -Wa,$(IncludeSwitch)../../../components/dfs/filesystems/elmfat $(IncludeSwitch)../../../components/dfs/filesystems/net -Wa,$(IncludeSwitch)../../../components/dfs/filesystems/net $(IncludeSwitch)../../../components/dfs/filesystems/net/select -Wa,$(IncludeSwitch)../../../components/dfs/filesystems/net/select $(IncludeSwitch)../../../components/dfs/filesystems/net/socket -Wa,$(IncludeSwitch)../../../components/dfs/filesystems/net/socket $(IncludeSwitch)../../../components/dfs/filesystems/ramfs -Wa,$(IncludeSwitch)../../../components/dfs/filesystems/ramfs $(IncludeSwitch)../../../components/dfs/filesystems/romfs -Wa,$(IncludeSwitch)../../../components/dfs/filesystems/romfs $(IncludeSwitch)../../../components/finsh -Wa,$(IncludeSwitch)../../../components/finsh $(IncludeSwitch)../../../components/libc/compilers/minilibc -Wa,$(IncludeSwitch)../../../components/libc/compilers/minilibc $(IncludeSwitch)../../../components/libc/time -Wa,$(IncludeSwitch)../../../components/libc/time $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include/ipv4 -Wa,$(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include/ipv4 $(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include/netif -Wa,$(IncludeSwitch)../../../components/net/lwip-2.0.2/src/include/netif $(IncludeSwitch)../../../packages/netutils-1.0.0/ntp -Wa,$(IncludeSwitch)../../../packages/netutils-1.0.0/ntp $(IncludeSwitch)../../../packages/netutils-1.0.0/ping -Wa,$(IncludeSwitch)../../../packages/netutils-1.0.0/ping 
Libs                   :=
ArLibs                 := 
LibPath                :=

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
CXXFLAGS := -mcpu=ck803s    -O2  -g3  -Wall  -c -mistack -ffunction-sections -fdata-sections -mno-required-printf  -ffunction-sections 
CFLAGS   := -mcpu=ck803s    -O2  -g3  -Wall  -c -mistack -ffunction-sections -fdata-sections -mno-required-printf  -ffunction-sections 
ASFLAGS  := -mcpu=ck803s   $(PreprocessorSwitch)CONFIG_CKCPU_MMU=0   -Wa,--gdwarf2    


Objects0=$(IntermediateDirectory)/entry_ipraw$(ObjectSuffix) $(IntermediateDirectory)/entry_linklayer$(ObjectSuffix) $(IntermediateDirectory)/entry_main$(ObjectSuffix) $(IntermediateDirectory)/entry_netcont$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_ctimer$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_eth$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_intr$(ObjectSuffix) $(IntermediateDirectory)/drivers_drv_uart$(ObjectSuffix) $(IntermediateDirectory)/drivers_retarget$(ObjectSuffix) $(IntermediateDirectory)/drivers_system$(ObjectSuffix) \
	$(IntermediateDirectory)/src_tih_phy_m88e1512$(ObjectSuffix) $(IntermediateDirectory)/src_tih_phy_rtl8211$(ObjectSuffix) $(IntermediateDirectory)/src_clock$(ObjectSuffix) $(IntermediateDirectory)/src_components$(ObjectSuffix) $(IntermediateDirectory)/src_device$(ObjectSuffix) $(IntermediateDirectory)/src_idle$(ObjectSuffix) $(IntermediateDirectory)/src_ipc$(ObjectSuffix) $(IntermediateDirectory)/src_irq$(ObjectSuffix) $(IntermediateDirectory)/src_kservice$(ObjectSuffix) $(IntermediateDirectory)/src_mem$(ObjectSuffix) \
	$(IntermediateDirectory)/src_memheap$(ObjectSuffix) $(IntermediateDirectory)/src_object$(ObjectSuffix) $(IntermediateDirectory)/src_scheduler$(ObjectSuffix) $(IntermediateDirectory)/src_signal$(ObjectSuffix) $(IntermediateDirectory)/src_thread$(ObjectSuffix) $(IntermediateDirectory)/src_timer$(ObjectSuffix) $(IntermediateDirectory)/ck803_cpuport$(ObjectSuffix) $(IntermediateDirectory)/ck803_stack_ck803$(ObjectSuffix) $(IntermediateDirectory)/ck803_contex_ck803_gcc$(ObjectSuffix) $(IntermediateDirectory)/ck803_startup_gcc$(ObjectSuffix) \
	$(IntermediateDirectory)/common_backtrace$(ObjectSuffix) $(IntermediateDirectory)/common_showmem$(ObjectSuffix) $(IntermediateDirectory)/src_dfs$(ObjectSuffix) $(IntermediateDirectory)/src_dfs_file$(ObjectSuffix) $(IntermediateDirectory)/src_dfs_fs$(ObjectSuffix) $(IntermediateDirectory)/src_dfs_posix$(ObjectSuffix) $(IntermediateDirectory)/src_poll$(ObjectSuffix) $(IntermediateDirectory)/src_select$(ObjectSuffix) $(IntermediateDirectory)/devfs_devfs$(ObjectSuffix) $(IntermediateDirectory)/elmfat_dfs_elm$(ObjectSuffix) \
	$(IntermediateDirectory)/elmfat_ff$(ObjectSuffix) $(IntermediateDirectory)/option_ccsbcs$(ObjectSuffix) $(IntermediateDirectory)/net_dfs_net$(ObjectSuffix) $(IntermediateDirectory)/net_net_netdb$(ObjectSuffix) $(IntermediateDirectory)/net_net_sockets$(ObjectSuffix) $(IntermediateDirectory)/ramfs_dfs_ramfs$(ObjectSuffix) $(IntermediateDirectory)/romfs_dfs_romfs$(ObjectSuffix) $(IntermediateDirectory)/romfs_romfs$(ObjectSuffix) $(IntermediateDirectory)/rtc_rtc$(ObjectSuffix) $(IntermediateDirectory)/rtc_soft_rtc$(ObjectSuffix) \
	$(IntermediateDirectory)/serial_serial$(ObjectSuffix) $(IntermediateDirectory)/src_completion$(ObjectSuffix) $(IntermediateDirectory)/src_dataqueue$(ObjectSuffix) $(IntermediateDirectory)/src_pipe$(ObjectSuffix) $(IntermediateDirectory)/src_ringbuffer$(ObjectSuffix) $(IntermediateDirectory)/src_waitqueue$(ObjectSuffix) $(IntermediateDirectory)/src_workqueue$(ObjectSuffix) $(IntermediateDirectory)/finsh_shell$(ObjectSuffix) $(IntermediateDirectory)/finsh_symbol$(ObjectSuffix) $(IntermediateDirectory)/finsh_cmd$(ObjectSuffix) \
	$(IntermediateDirectory)/finsh_msh$(ObjectSuffix) $(IntermediateDirectory)/finsh_msh_cmd$(ObjectSuffix) $(IntermediateDirectory)/finsh_msh_file$(ObjectSuffix) $(IntermediateDirectory)/minilibc_stdlib$(ObjectSuffix) $(IntermediateDirectory)/minilibc_string$(ObjectSuffix) $(IntermediateDirectory)/minilibc_time$(ObjectSuffix) $(IntermediateDirectory)/time_clock_time$(ObjectSuffix) $(IntermediateDirectory)/time_posix_sleep$(ObjectSuffix) $(IntermediateDirectory)/arch_sys_arch$(ObjectSuffix) $(IntermediateDirectory)/api_api_lib$(ObjectSuffix) \
	$(IntermediateDirectory)/api_api_msg$(ObjectSuffix) $(IntermediateDirectory)/api_err$(ObjectSuffix) $(IntermediateDirectory)/api_netbuf$(ObjectSuffix) $(IntermediateDirectory)/api_netdb$(ObjectSuffix) $(IntermediateDirectory)/api_netifapi$(ObjectSuffix) $(IntermediateDirectory)/api_sockets$(ObjectSuffix) $(IntermediateDirectory)/api_tcpip$(ObjectSuffix) $(IntermediateDirectory)/core_def$(ObjectSuffix) $(IntermediateDirectory)/core_dns$(ObjectSuffix) $(IntermediateDirectory)/core_inet_chksum$(ObjectSuffix) \
	$(IntermediateDirectory)/core_init$(ObjectSuffix) $(IntermediateDirectory)/core_ip$(ObjectSuffix) $(IntermediateDirectory)/core_if$(ObjectSuffix) $(IntermediateDirectory)/core_memp$(ObjectSuffix) $(IntermediateDirectory)/core_netif$(ObjectSuffix) $(IntermediateDirectory)/core_pbuf$(ObjectSuffix) $(IntermediateDirectory)/core_raw$(ObjectSuffix) $(IntermediateDirectory)/core_stats$(ObjectSuffix) $(IntermediateDirectory)/core_sys$(ObjectSuffix) $(IntermediateDirectory)/core_tcp$(ObjectSuffix) \
	$(IntermediateDirectory)/core_tcp_in$(ObjectSuffix) $(IntermediateDirectory)/core_tcp_out$(ObjectSuffix) $(IntermediateDirectory)/core_timeouts$(ObjectSuffix) $(IntermediateDirectory)/core_udp$(ObjectSuffix) $(IntermediateDirectory)/netif_ethernet$(ObjectSuffix) $(IntermediateDirectory)/netif_ethernetif$(ObjectSuffix) $(IntermediateDirectory)/netif_lowpan6$(ObjectSuffix) $(IntermediateDirectory)/ipv4_autoip$(ObjectSuffix) $(IntermediateDirectory)/ipv4_dhcp$(ObjectSuffix) 

Objects1=$(IntermediateDirectory)/ipv4_etharp$(ObjectSuffix) \
	$(IntermediateDirectory)/ipv4_icmp$(ObjectSuffix) $(IntermediateDirectory)/ipv4_igmp$(ObjectSuffix) $(IntermediateDirectory)/ipv4_ip4$(ObjectSuffix) $(IntermediateDirectory)/ipv4_ip4_addr$(ObjectSuffix) $(IntermediateDirectory)/ipv4_ip4_frag$(ObjectSuffix) $(IntermediateDirectory)/ntp_ntp$(ObjectSuffix) $(IntermediateDirectory)/ping_ping$(ObjectSuffix) $(IntermediateDirectory)/__rt_entry$(ObjectSuffix) 



Objects=$(Objects0) $(Objects1) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PostBuild MakeIntermediateDirs
all: $(IntermediateDirectory)/$(OutputFile)

$(IntermediateDirectory)/$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@echo "" > $(IntermediateDirectory)/.d
	@touch  $(ObjectsFileList)
	@echo $(Objects0)  > $(ObjectsFileList)
	@echo $(Objects1) >> $(ObjectsFileList)
	@echo linking...
	@$(LinkerName) $(OutputSwitch)"$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)" $(LinkerNameoption) -Wl,--callgraph_file="$(ProjectPath)/Lst/$(OutputFile).htm" -Wl,--ckmap="$(ProjectPath)/Lst/$(OutputFile).map"  @$(ObjectsFileList) $(LibraryPathSwitch)E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries  $(LibPath) $(Libs)  -Wl,--whole-archive $(LibrarySwitch)t6x0_c   -Wl,--no-whole-archive $(LinkOptions)
	@mv "$(ProjectPath)/Lst/$(OutputFile).map" "$(ProjectPath)/Lst/$(OutputFile).temp" && $(READELF) $(ElfInfoSwitch) "$(ProjectPath)/Obj/$(OutputFile)$(ExeSuffix)" > "$(ProjectPath)/Lst/$(OutputFile).map" && echo ====================================================================== >> "$(ProjectPath)/Lst/$(OutputFile).map" && cat "$(ProjectPath)/Lst/$(OutputFile).temp" >> "$(ProjectPath)/Lst/$(OutputFile).map" && rm -rf "$(ProjectPath)/Lst/$(OutputFile).temp"
	@echo generating hex file...
	@$(OBJCOPY) $(ObjcopySwitch) "$(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)"  "$(ProjectPath)/Obj/$(OutputFile)$(IHexSuffix)" 
	@echo generating bin file...
	@	@echo size of target:
	@$(SIZE) "$(ProjectPath)$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)" 
	@echo -n "checksum value of target:  "
	@$(CHECKSUM) "$(ProjectPath)/$(IntermediateDirectory)/$(OutputFile)$(ExeSuffix)" 
	
PostBuild:
	@echo Executing Post Build commands ...
	@export CDKPath="D:/C-Sky/CDK" ProjectPath="E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app" &&csky-abiv2-elf-objcopy -O binary ./Obj/rt-thread.elf ./Obj/rt-thread.bin
	@echo Done

MakeIntermediateDirs:
	@test -d Obj || $(MakeDirCommand) Obj

	@test -d Lst || $(MakeDirCommand) Lst

$(IntermediateDirectory)/.d:
	@test -d Obj || $(MakeDirCommand) Obj
	@test -d Lst || $(MakeDirCommand) Lst


PreBuild:


##
## Objects
##
$(IntermediateDirectory)/entry_ipraw$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/ipraw.c  Lst/entry_ipraw$(PreprocessSuffix)
	@echo compiling ipraw.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/ipraw.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/entry_ipraw$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/entry_ipraw$(ObjectSuffix) -MF$(IntermediateDirectory)/entry_ipraw$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/ipraw.c"

Lst/entry_ipraw$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/ipraw.c
	@echo generating preprocess file of ipraw.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/entry_ipraw$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/ipraw.c"

$(IntermediateDirectory)/entry_linklayer$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/linklayer.c  Lst/entry_linklayer$(PreprocessSuffix)
	@echo compiling linklayer.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/linklayer.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/entry_linklayer$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/entry_linklayer$(ObjectSuffix) -MF$(IntermediateDirectory)/entry_linklayer$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/linklayer.c"

Lst/entry_linklayer$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/linklayer.c
	@echo generating preprocess file of linklayer.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/entry_linklayer$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/linklayer.c"

$(IntermediateDirectory)/entry_main$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/main.c  Lst/entry_main$(PreprocessSuffix)
	@echo compiling main.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/entry_main$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/entry_main$(ObjectSuffix) -MF$(IntermediateDirectory)/entry_main$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/main.c"

Lst/entry_main$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/main.c
	@echo generating preprocess file of main.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/entry_main$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/main.c"

$(IntermediateDirectory)/entry_netcont$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/netcont.c  Lst/entry_netcont$(PreprocessSuffix)
	@echo compiling netcont.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/netcont.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/entry_netcont$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/entry_netcont$(ObjectSuffix) -MF$(IntermediateDirectory)/entry_netcont$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/netcont.c"

Lst/entry_netcont$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/netcont.c
	@echo generating preprocess file of netcont.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/entry_netcont$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app/entry/netcont.c"

$(IntermediateDirectory)/drivers_drv_ctimer$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_ctimer.c  Lst/drivers_drv_ctimer$(PreprocessSuffix)
	@echo compiling drv_ctimer.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_ctimer.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_ctimer$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/drivers_drv_ctimer$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_ctimer$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_ctimer.c"

Lst/drivers_drv_ctimer$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_ctimer.c
	@echo generating preprocess file of drv_ctimer.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_ctimer$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_ctimer.c"

$(IntermediateDirectory)/drivers_drv_eth$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_eth.c  Lst/drivers_drv_eth$(PreprocessSuffix)
	@echo compiling drv_eth.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_eth.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_eth$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/drivers_drv_eth$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_eth$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_eth.c"

Lst/drivers_drv_eth$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_eth.c
	@echo generating preprocess file of drv_eth.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_eth$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_eth.c"

$(IntermediateDirectory)/drivers_drv_intr$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_intr.c  Lst/drivers_drv_intr$(PreprocessSuffix)
	@echo compiling drv_intr.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_intr.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_intr$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/drivers_drv_intr$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_intr$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_intr.c"

Lst/drivers_drv_intr$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_intr.c
	@echo generating preprocess file of drv_intr.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_intr$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_intr.c"

$(IntermediateDirectory)/drivers_drv_uart$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_uart.c  Lst/drivers_drv_uart$(PreprocessSuffix)
	@echo compiling drv_uart.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_uart.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/drivers_drv_uart$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/drivers_drv_uart$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_drv_uart$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_uart.c"

Lst/drivers_drv_uart$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_uart.c
	@echo generating preprocess file of drv_uart.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_drv_uart$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/drv_uart.c"

$(IntermediateDirectory)/drivers_retarget$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/retarget.c  Lst/drivers_retarget$(PreprocessSuffix)
	@echo compiling retarget.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/retarget.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/drivers_retarget$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/drivers_retarget$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_retarget$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/retarget.c"

Lst/drivers_retarget$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/retarget.c
	@echo generating preprocess file of retarget.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_retarget$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/retarget.c"

$(IntermediateDirectory)/drivers_system$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/system.c  Lst/drivers_system$(PreprocessSuffix)
	@echo compiling system.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/system.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/drivers_system$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/drivers_system$(ObjectSuffix) -MF$(IntermediateDirectory)/drivers_system$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/system.c"

Lst/drivers_system$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/system.c
	@echo generating preprocess file of system.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/drivers_system$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/drivers/system.c"

$(IntermediateDirectory)/src_tih_phy_m88e1512$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_m88e1512.c  Lst/src_tih_phy_m88e1512$(PreprocessSuffix)
	@echo compiling tih_phy_m88e1512.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_m88e1512.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_tih_phy_m88e1512$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_tih_phy_m88e1512$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tih_phy_m88e1512$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_m88e1512.c"

Lst/src_tih_phy_m88e1512$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_m88e1512.c
	@echo generating preprocess file of tih_phy_m88e1512.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_tih_phy_m88e1512$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_m88e1512.c"

$(IntermediateDirectory)/src_tih_phy_rtl8211$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_rtl8211.c  Lst/src_tih_phy_rtl8211$(PreprocessSuffix)
	@echo compiling tih_phy_rtl8211.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_rtl8211.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_tih_phy_rtl8211$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_tih_phy_rtl8211$(ObjectSuffix) -MF$(IntermediateDirectory)/src_tih_phy_rtl8211$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_rtl8211.c"

Lst/src_tih_phy_rtl8211$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_rtl8211.c
	@echo generating preprocess file of tih_phy_rtl8211.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_tih_phy_rtl8211$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/libraries/src/tih_phy_rtl8211.c"

$(IntermediateDirectory)/src_clock$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/clock.c  Lst/src_clock$(PreprocessSuffix)
	@echo compiling clock.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/clock.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_clock$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_clock$(ObjectSuffix) -MF$(IntermediateDirectory)/src_clock$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/clock.c"

Lst/src_clock$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/clock.c
	@echo generating preprocess file of clock.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_clock$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/clock.c"

$(IntermediateDirectory)/src_components$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/components.c  Lst/src_components$(PreprocessSuffix)
	@echo compiling components.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/components.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_components$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_components$(ObjectSuffix) -MF$(IntermediateDirectory)/src_components$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/components.c"

Lst/src_components$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/components.c
	@echo generating preprocess file of components.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_components$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/components.c"

$(IntermediateDirectory)/src_device$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/device.c  Lst/src_device$(PreprocessSuffix)
	@echo compiling device.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/device.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_device$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_device$(ObjectSuffix) -MF$(IntermediateDirectory)/src_device$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/device.c"

Lst/src_device$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/device.c
	@echo generating preprocess file of device.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_device$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/device.c"

$(IntermediateDirectory)/src_idle$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/idle.c  Lst/src_idle$(PreprocessSuffix)
	@echo compiling idle.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/idle.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_idle$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_idle$(ObjectSuffix) -MF$(IntermediateDirectory)/src_idle$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/idle.c"

Lst/src_idle$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/idle.c
	@echo generating preprocess file of idle.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_idle$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/idle.c"

$(IntermediateDirectory)/src_ipc$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/ipc.c  Lst/src_ipc$(PreprocessSuffix)
	@echo compiling ipc.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/ipc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ipc$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_ipc$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ipc$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/ipc.c"

Lst/src_ipc$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/ipc.c
	@echo generating preprocess file of ipc.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ipc$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/ipc.c"

$(IntermediateDirectory)/src_irq$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/irq.c  Lst/src_irq$(PreprocessSuffix)
	@echo compiling irq.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/irq.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_irq$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_irq$(ObjectSuffix) -MF$(IntermediateDirectory)/src_irq$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/irq.c"

Lst/src_irq$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/irq.c
	@echo generating preprocess file of irq.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_irq$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/irq.c"

$(IntermediateDirectory)/src_kservice$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/kservice.c  Lst/src_kservice$(PreprocessSuffix)
	@echo compiling kservice.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/kservice.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_kservice$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_kservice$(ObjectSuffix) -MF$(IntermediateDirectory)/src_kservice$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/kservice.c"

Lst/src_kservice$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/kservice.c
	@echo generating preprocess file of kservice.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_kservice$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/kservice.c"

$(IntermediateDirectory)/src_mem$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/mem.c  Lst/src_mem$(PreprocessSuffix)
	@echo compiling mem.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/mem.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_mem$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_mem$(ObjectSuffix) -MF$(IntermediateDirectory)/src_mem$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/mem.c"

Lst/src_mem$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/mem.c
	@echo generating preprocess file of mem.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_mem$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/mem.c"

$(IntermediateDirectory)/src_memheap$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/memheap.c  Lst/src_memheap$(PreprocessSuffix)
	@echo compiling memheap.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/memheap.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_memheap$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_memheap$(ObjectSuffix) -MF$(IntermediateDirectory)/src_memheap$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/memheap.c"

Lst/src_memheap$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/memheap.c
	@echo generating preprocess file of memheap.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_memheap$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/memheap.c"

$(IntermediateDirectory)/src_object$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/object.c  Lst/src_object$(PreprocessSuffix)
	@echo compiling object.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/object.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_object$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_object$(ObjectSuffix) -MF$(IntermediateDirectory)/src_object$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/object.c"

Lst/src_object$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/object.c
	@echo generating preprocess file of object.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_object$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/object.c"

$(IntermediateDirectory)/src_scheduler$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/scheduler.c  Lst/src_scheduler$(PreprocessSuffix)
	@echo compiling scheduler.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/scheduler.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_scheduler$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_scheduler$(ObjectSuffix) -MF$(IntermediateDirectory)/src_scheduler$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/scheduler.c"

Lst/src_scheduler$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/scheduler.c
	@echo generating preprocess file of scheduler.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_scheduler$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/scheduler.c"

$(IntermediateDirectory)/src_signal$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/signal.c  Lst/src_signal$(PreprocessSuffix)
	@echo compiling signal.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/signal.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_signal$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_signal$(ObjectSuffix) -MF$(IntermediateDirectory)/src_signal$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/signal.c"

Lst/src_signal$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/signal.c
	@echo generating preprocess file of signal.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_signal$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/signal.c"

$(IntermediateDirectory)/src_thread$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/thread.c  Lst/src_thread$(PreprocessSuffix)
	@echo compiling thread.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/thread.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_thread$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_thread$(ObjectSuffix) -MF$(IntermediateDirectory)/src_thread$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/thread.c"

Lst/src_thread$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/thread.c
	@echo generating preprocess file of thread.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_thread$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/thread.c"

$(IntermediateDirectory)/src_timer$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/timer.c  Lst/src_timer$(PreprocessSuffix)
	@echo compiling timer.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/timer.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_timer$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_timer$(ObjectSuffix) -MF$(IntermediateDirectory)/src_timer$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/timer.c"

Lst/src_timer$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/timer.c
	@echo generating preprocess file of timer.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_timer$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/src/timer.c"

$(IntermediateDirectory)/ck803_cpuport$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/cpuport.c  Lst/ck803_cpuport$(PreprocessSuffix)
	@echo compiling cpuport.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/cpuport.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ck803_cpuport$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ck803_cpuport$(ObjectSuffix) -MF$(IntermediateDirectory)/ck803_cpuport$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/cpuport.c"

Lst/ck803_cpuport$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/cpuport.c
	@echo generating preprocess file of cpuport.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ck803_cpuport$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/cpuport.c"

$(IntermediateDirectory)/ck803_stack_ck803$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/stack_ck803.c  Lst/ck803_stack_ck803$(PreprocessSuffix)
	@echo compiling stack_ck803.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/stack_ck803.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ck803_stack_ck803$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ck803_stack_ck803$(ObjectSuffix) -MF$(IntermediateDirectory)/ck803_stack_ck803$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/stack_ck803.c"

Lst/ck803_stack_ck803$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/stack_ck803.c
	@echo generating preprocess file of stack_ck803.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ck803_stack_ck803$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/stack_ck803.c"

$(IntermediateDirectory)/ck803_contex_ck803_gcc$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/contex_ck803_gcc.S  Lst/ck803_contex_ck803_gcc$(PreprocessSuffix)
	@echo assembling contex_ck803_gcc.S...
	@$(AS) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/contex_ck803_gcc.S" $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ck803_contex_ck803_gcc$(ObjectSuffix) $(IncludeAPath)
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/ck803_contex_ck803_gcc$(ObjectSuffix) -MF$(IntermediateDirectory)/ck803_contex_ck803_gcc$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/contex_ck803_gcc.S"

Lst/ck803_contex_ck803_gcc$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/contex_ck803_gcc.S
	@echo generating preprocess file of contex_ck803_gcc.S...
	@$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ck803_contex_ck803_gcc$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/contex_ck803_gcc.S"

$(IntermediateDirectory)/ck803_startup_gcc$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/startup_gcc.S  Lst/ck803_startup_gcc$(PreprocessSuffix)
	@echo assembling startup_gcc.S...
	@$(AS) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/startup_gcc.S" $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ck803_startup_gcc$(ObjectSuffix) $(IncludeAPath)
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/ck803_startup_gcc$(ObjectSuffix) -MF$(IntermediateDirectory)/ck803_startup_gcc$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/startup_gcc.S"

Lst/ck803_startup_gcc$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/startup_gcc.S
	@echo generating preprocess file of startup_gcc.S...
	@$(CC) $(CFLAGS)$(IncludeAPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ck803_startup_gcc$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/ck803/startup_gcc.S"

$(IntermediateDirectory)/common_backtrace$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/common/backtrace.c  Lst/common_backtrace$(PreprocessSuffix)
	@echo compiling backtrace.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/common/backtrace.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/common_backtrace$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/common_backtrace$(ObjectSuffix) -MF$(IntermediateDirectory)/common_backtrace$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/common/backtrace.c"

Lst/common_backtrace$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/common/backtrace.c
	@echo generating preprocess file of backtrace.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/common_backtrace$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/common/backtrace.c"

$(IntermediateDirectory)/common_showmem$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/common/showmem.c  Lst/common_showmem$(PreprocessSuffix)
	@echo compiling showmem.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/common/showmem.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/common_showmem$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/common_showmem$(ObjectSuffix) -MF$(IntermediateDirectory)/common_showmem$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/common/showmem.c"

Lst/common_showmem$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/common/showmem.c
	@echo generating preprocess file of showmem.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/common_showmem$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/libcpu/c-sky/common/showmem.c"

$(IntermediateDirectory)/src_dfs$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs.c  Lst/src_dfs$(PreprocessSuffix)
	@echo compiling dfs.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_dfs$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_dfs$(ObjectSuffix) -MF$(IntermediateDirectory)/src_dfs$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs.c"

Lst/src_dfs$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs.c
	@echo generating preprocess file of dfs.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_dfs$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs.c"

$(IntermediateDirectory)/src_dfs_file$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_file.c  Lst/src_dfs_file$(PreprocessSuffix)
	@echo compiling dfs_file.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_file.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_dfs_file$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_dfs_file$(ObjectSuffix) -MF$(IntermediateDirectory)/src_dfs_file$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_file.c"

Lst/src_dfs_file$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_file.c
	@echo generating preprocess file of dfs_file.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_dfs_file$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_file.c"

$(IntermediateDirectory)/src_dfs_fs$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_fs.c  Lst/src_dfs_fs$(PreprocessSuffix)
	@echo compiling dfs_fs.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_fs.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_dfs_fs$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_dfs_fs$(ObjectSuffix) -MF$(IntermediateDirectory)/src_dfs_fs$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_fs.c"

Lst/src_dfs_fs$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_fs.c
	@echo generating preprocess file of dfs_fs.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_dfs_fs$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_fs.c"

$(IntermediateDirectory)/src_dfs_posix$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_posix.c  Lst/src_dfs_posix$(PreprocessSuffix)
	@echo compiling dfs_posix.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_posix.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_dfs_posix$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_dfs_posix$(ObjectSuffix) -MF$(IntermediateDirectory)/src_dfs_posix$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_posix.c"

Lst/src_dfs_posix$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_posix.c
	@echo generating preprocess file of dfs_posix.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_dfs_posix$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/dfs_posix.c"

$(IntermediateDirectory)/src_poll$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/poll.c  Lst/src_poll$(PreprocessSuffix)
	@echo compiling poll.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/poll.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_poll$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_poll$(ObjectSuffix) -MF$(IntermediateDirectory)/src_poll$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/poll.c"

Lst/src_poll$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/poll.c
	@echo generating preprocess file of poll.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_poll$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/poll.c"

$(IntermediateDirectory)/src_select$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/select.c  Lst/src_select$(PreprocessSuffix)
	@echo compiling select.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/select.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_select$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_select$(ObjectSuffix) -MF$(IntermediateDirectory)/src_select$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/select.c"

Lst/src_select$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/select.c
	@echo generating preprocess file of select.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_select$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/src/select.c"

$(IntermediateDirectory)/devfs_devfs$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/devfs/devfs.c  Lst/devfs_devfs$(PreprocessSuffix)
	@echo compiling devfs.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/devfs/devfs.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/devfs_devfs$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/devfs_devfs$(ObjectSuffix) -MF$(IntermediateDirectory)/devfs_devfs$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/devfs/devfs.c"

Lst/devfs_devfs$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/devfs/devfs.c
	@echo generating preprocess file of devfs.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/devfs_devfs$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/devfs/devfs.c"

$(IntermediateDirectory)/elmfat_dfs_elm$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/dfs_elm.c  Lst/elmfat_dfs_elm$(PreprocessSuffix)
	@echo compiling dfs_elm.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/dfs_elm.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/elmfat_dfs_elm$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/elmfat_dfs_elm$(ObjectSuffix) -MF$(IntermediateDirectory)/elmfat_dfs_elm$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/dfs_elm.c"

Lst/elmfat_dfs_elm$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/dfs_elm.c
	@echo generating preprocess file of dfs_elm.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/elmfat_dfs_elm$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/dfs_elm.c"

$(IntermediateDirectory)/elmfat_ff$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c  Lst/elmfat_ff$(PreprocessSuffix)
	@echo compiling ff.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/elmfat_ff$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/elmfat_ff$(ObjectSuffix) -MF$(IntermediateDirectory)/elmfat_ff$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"

Lst/elmfat_ff$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c
	@echo generating preprocess file of ff.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/elmfat_ff$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/ff.c"

$(IntermediateDirectory)/option_ccsbcs$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/option/ccsbcs.c  Lst/option_ccsbcs$(PreprocessSuffix)
	@echo compiling ccsbcs.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/option/ccsbcs.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/option_ccsbcs$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/option_ccsbcs$(ObjectSuffix) -MF$(IntermediateDirectory)/option_ccsbcs$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/option/ccsbcs.c"

Lst/option_ccsbcs$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/option/ccsbcs.c
	@echo generating preprocess file of ccsbcs.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/option_ccsbcs$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/elmfat/option/ccsbcs.c"

$(IntermediateDirectory)/net_dfs_net$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/dfs_net.c  Lst/net_dfs_net$(PreprocessSuffix)
	@echo compiling dfs_net.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/dfs_net.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/net_dfs_net$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/net_dfs_net$(ObjectSuffix) -MF$(IntermediateDirectory)/net_dfs_net$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/dfs_net.c"

Lst/net_dfs_net$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/dfs_net.c
	@echo generating preprocess file of dfs_net.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/net_dfs_net$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/dfs_net.c"

$(IntermediateDirectory)/net_net_netdb$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/net_netdb.c  Lst/net_net_netdb$(PreprocessSuffix)
	@echo compiling net_netdb.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/net_netdb.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/net_net_netdb$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/net_net_netdb$(ObjectSuffix) -MF$(IntermediateDirectory)/net_net_netdb$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/net_netdb.c"

Lst/net_net_netdb$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/net_netdb.c
	@echo generating preprocess file of net_netdb.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/net_net_netdb$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/net_netdb.c"

$(IntermediateDirectory)/net_net_sockets$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/net_sockets.c  Lst/net_net_sockets$(PreprocessSuffix)
	@echo compiling net_sockets.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/net_sockets.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/net_net_sockets$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/net_net_sockets$(ObjectSuffix) -MF$(IntermediateDirectory)/net_net_sockets$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/net_sockets.c"

Lst/net_net_sockets$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/net_sockets.c
	@echo generating preprocess file of net_sockets.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/net_net_sockets$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/net/net_sockets.c"

$(IntermediateDirectory)/ramfs_dfs_ramfs$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/ramfs/dfs_ramfs.c  Lst/ramfs_dfs_ramfs$(PreprocessSuffix)
	@echo compiling dfs_ramfs.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/ramfs/dfs_ramfs.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ramfs_dfs_ramfs$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ramfs_dfs_ramfs$(ObjectSuffix) -MF$(IntermediateDirectory)/ramfs_dfs_ramfs$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/ramfs/dfs_ramfs.c"

Lst/ramfs_dfs_ramfs$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/ramfs/dfs_ramfs.c
	@echo generating preprocess file of dfs_ramfs.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ramfs_dfs_ramfs$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/ramfs/dfs_ramfs.c"

$(IntermediateDirectory)/romfs_dfs_romfs$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/romfs/dfs_romfs.c  Lst/romfs_dfs_romfs$(PreprocessSuffix)
	@echo compiling dfs_romfs.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/romfs/dfs_romfs.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/romfs_dfs_romfs$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/romfs_dfs_romfs$(ObjectSuffix) -MF$(IntermediateDirectory)/romfs_dfs_romfs$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/romfs/dfs_romfs.c"

Lst/romfs_dfs_romfs$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/romfs/dfs_romfs.c
	@echo generating preprocess file of dfs_romfs.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/romfs_dfs_romfs$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/romfs/dfs_romfs.c"

$(IntermediateDirectory)/romfs_romfs$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/romfs/romfs.c  Lst/romfs_romfs$(PreprocessSuffix)
	@echo compiling romfs.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/romfs/romfs.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/romfs_romfs$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/romfs_romfs$(ObjectSuffix) -MF$(IntermediateDirectory)/romfs_romfs$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/romfs/romfs.c"

Lst/romfs_romfs$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/romfs/romfs.c
	@echo generating preprocess file of romfs.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/romfs_romfs$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/dfs/filesystems/romfs/romfs.c"

$(IntermediateDirectory)/rtc_rtc$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/rtc/rtc.c  Lst/rtc_rtc$(PreprocessSuffix)
	@echo compiling rtc.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/rtc/rtc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/rtc_rtc$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/rtc_rtc$(ObjectSuffix) -MF$(IntermediateDirectory)/rtc_rtc$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/rtc/rtc.c"

Lst/rtc_rtc$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/rtc/rtc.c
	@echo generating preprocess file of rtc.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/rtc_rtc$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/rtc/rtc.c"

$(IntermediateDirectory)/rtc_soft_rtc$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/rtc/soft_rtc.c  Lst/rtc_soft_rtc$(PreprocessSuffix)
	@echo compiling soft_rtc.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/rtc/soft_rtc.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/rtc_soft_rtc$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/rtc_soft_rtc$(ObjectSuffix) -MF$(IntermediateDirectory)/rtc_soft_rtc$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/rtc/soft_rtc.c"

Lst/rtc_soft_rtc$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/rtc/soft_rtc.c
	@echo generating preprocess file of soft_rtc.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/rtc_soft_rtc$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/rtc/soft_rtc.c"

$(IntermediateDirectory)/serial_serial$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/serial/serial.c  Lst/serial_serial$(PreprocessSuffix)
	@echo compiling serial.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/serial/serial.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/serial_serial$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/serial_serial$(ObjectSuffix) -MF$(IntermediateDirectory)/serial_serial$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/serial/serial.c"

Lst/serial_serial$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/serial/serial.c
	@echo generating preprocess file of serial.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/serial_serial$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/serial/serial.c"

$(IntermediateDirectory)/src_completion$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/completion.c  Lst/src_completion$(PreprocessSuffix)
	@echo compiling completion.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/completion.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_completion$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_completion$(ObjectSuffix) -MF$(IntermediateDirectory)/src_completion$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/completion.c"

Lst/src_completion$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/completion.c
	@echo generating preprocess file of completion.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_completion$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/completion.c"

$(IntermediateDirectory)/src_dataqueue$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/dataqueue.c  Lst/src_dataqueue$(PreprocessSuffix)
	@echo compiling dataqueue.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/dataqueue.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_dataqueue$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_dataqueue$(ObjectSuffix) -MF$(IntermediateDirectory)/src_dataqueue$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/dataqueue.c"

Lst/src_dataqueue$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/dataqueue.c
	@echo generating preprocess file of dataqueue.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_dataqueue$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/dataqueue.c"

$(IntermediateDirectory)/src_pipe$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/pipe.c  Lst/src_pipe$(PreprocessSuffix)
	@echo compiling pipe.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/pipe.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_pipe$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_pipe$(ObjectSuffix) -MF$(IntermediateDirectory)/src_pipe$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/pipe.c"

Lst/src_pipe$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/pipe.c
	@echo generating preprocess file of pipe.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_pipe$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/pipe.c"

$(IntermediateDirectory)/src_ringbuffer$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/ringbuffer.c  Lst/src_ringbuffer$(PreprocessSuffix)
	@echo compiling ringbuffer.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/ringbuffer.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ringbuffer$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_ringbuffer$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ringbuffer$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/ringbuffer.c"

Lst/src_ringbuffer$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/ringbuffer.c
	@echo generating preprocess file of ringbuffer.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_ringbuffer$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/ringbuffer.c"

$(IntermediateDirectory)/src_waitqueue$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/waitqueue.c  Lst/src_waitqueue$(PreprocessSuffix)
	@echo compiling waitqueue.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/waitqueue.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_waitqueue$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_waitqueue$(ObjectSuffix) -MF$(IntermediateDirectory)/src_waitqueue$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/waitqueue.c"

Lst/src_waitqueue$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/waitqueue.c
	@echo generating preprocess file of waitqueue.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_waitqueue$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/waitqueue.c"

$(IntermediateDirectory)/src_workqueue$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/workqueue.c  Lst/src_workqueue$(PreprocessSuffix)
	@echo compiling workqueue.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/workqueue.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_workqueue$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/src_workqueue$(ObjectSuffix) -MF$(IntermediateDirectory)/src_workqueue$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/workqueue.c"

Lst/src_workqueue$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/workqueue.c
	@echo generating preprocess file of workqueue.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/src_workqueue$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/drivers/src/workqueue.c"

$(IntermediateDirectory)/finsh_shell$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/shell.c  Lst/finsh_shell$(PreprocessSuffix)
	@echo compiling shell.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/shell.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/finsh_shell$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/finsh_shell$(ObjectSuffix) -MF$(IntermediateDirectory)/finsh_shell$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/shell.c"

Lst/finsh_shell$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/shell.c
	@echo generating preprocess file of shell.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/finsh_shell$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/shell.c"

$(IntermediateDirectory)/finsh_symbol$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/symbol.c  Lst/finsh_symbol$(PreprocessSuffix)
	@echo compiling symbol.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/symbol.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/finsh_symbol$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/finsh_symbol$(ObjectSuffix) -MF$(IntermediateDirectory)/finsh_symbol$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/symbol.c"

Lst/finsh_symbol$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/symbol.c
	@echo generating preprocess file of symbol.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/finsh_symbol$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/symbol.c"

$(IntermediateDirectory)/finsh_cmd$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/cmd.c  Lst/finsh_cmd$(PreprocessSuffix)
	@echo compiling cmd.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/cmd.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/finsh_cmd$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/finsh_cmd$(ObjectSuffix) -MF$(IntermediateDirectory)/finsh_cmd$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/cmd.c"

Lst/finsh_cmd$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/cmd.c
	@echo generating preprocess file of cmd.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/finsh_cmd$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/cmd.c"

$(IntermediateDirectory)/finsh_msh$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh.c  Lst/finsh_msh$(PreprocessSuffix)
	@echo compiling msh.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/finsh_msh$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/finsh_msh$(ObjectSuffix) -MF$(IntermediateDirectory)/finsh_msh$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh.c"

Lst/finsh_msh$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh.c
	@echo generating preprocess file of msh.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/finsh_msh$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh.c"

$(IntermediateDirectory)/finsh_msh_cmd$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh_cmd.c  Lst/finsh_msh_cmd$(PreprocessSuffix)
	@echo compiling msh_cmd.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh_cmd.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/finsh_msh_cmd$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/finsh_msh_cmd$(ObjectSuffix) -MF$(IntermediateDirectory)/finsh_msh_cmd$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh_cmd.c"

Lst/finsh_msh_cmd$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh_cmd.c
	@echo generating preprocess file of msh_cmd.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/finsh_msh_cmd$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh_cmd.c"

$(IntermediateDirectory)/finsh_msh_file$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh_file.c  Lst/finsh_msh_file$(PreprocessSuffix)
	@echo compiling msh_file.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh_file.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/finsh_msh_file$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/finsh_msh_file$(ObjectSuffix) -MF$(IntermediateDirectory)/finsh_msh_file$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh_file.c"

Lst/finsh_msh_file$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh_file.c
	@echo generating preprocess file of msh_file.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/finsh_msh_file$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/finsh/msh_file.c"

$(IntermediateDirectory)/minilibc_stdlib$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/stdlib.c  Lst/minilibc_stdlib$(PreprocessSuffix)
	@echo compiling stdlib.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/stdlib.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/minilibc_stdlib$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/minilibc_stdlib$(ObjectSuffix) -MF$(IntermediateDirectory)/minilibc_stdlib$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/stdlib.c"

Lst/minilibc_stdlib$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/stdlib.c
	@echo generating preprocess file of stdlib.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/minilibc_stdlib$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/stdlib.c"

$(IntermediateDirectory)/minilibc_string$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/string.c  Lst/minilibc_string$(PreprocessSuffix)
	@echo compiling string.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/string.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/minilibc_string$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/minilibc_string$(ObjectSuffix) -MF$(IntermediateDirectory)/minilibc_string$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/string.c"

Lst/minilibc_string$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/string.c
	@echo generating preprocess file of string.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/minilibc_string$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/string.c"

$(IntermediateDirectory)/minilibc_time$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/time.c  Lst/minilibc_time$(PreprocessSuffix)
	@echo compiling time.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/time.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/minilibc_time$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/minilibc_time$(ObjectSuffix) -MF$(IntermediateDirectory)/minilibc_time$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/time.c"

Lst/minilibc_time$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/time.c
	@echo generating preprocess file of time.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/minilibc_time$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/compilers/minilibc/time.c"

$(IntermediateDirectory)/time_clock_time$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/time/clock_time.c  Lst/time_clock_time$(PreprocessSuffix)
	@echo compiling clock_time.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/time/clock_time.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/time_clock_time$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/time_clock_time$(ObjectSuffix) -MF$(IntermediateDirectory)/time_clock_time$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/time/clock_time.c"

Lst/time_clock_time$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/time/clock_time.c
	@echo generating preprocess file of clock_time.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/time_clock_time$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/time/clock_time.c"

$(IntermediateDirectory)/time_posix_sleep$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/time/posix_sleep.c  Lst/time_posix_sleep$(PreprocessSuffix)
	@echo compiling posix_sleep.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/time/posix_sleep.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/time_posix_sleep$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/time_posix_sleep$(ObjectSuffix) -MF$(IntermediateDirectory)/time_posix_sleep$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/time/posix_sleep.c"

Lst/time_posix_sleep$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/time/posix_sleep.c
	@echo generating preprocess file of posix_sleep.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/time_posix_sleep$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/libc/time/posix_sleep.c"

$(IntermediateDirectory)/arch_sys_arch$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/arch/sys_arch.c  Lst/arch_sys_arch$(PreprocessSuffix)
	@echo compiling sys_arch.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/arch/sys_arch.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/arch_sys_arch$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/arch_sys_arch$(ObjectSuffix) -MF$(IntermediateDirectory)/arch_sys_arch$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/arch/sys_arch.c"

Lst/arch_sys_arch$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/arch/sys_arch.c
	@echo generating preprocess file of sys_arch.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/arch_sys_arch$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/arch/sys_arch.c"

$(IntermediateDirectory)/api_api_lib$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/api_lib.c  Lst/api_api_lib$(PreprocessSuffix)
	@echo compiling api_lib.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/api_lib.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/api_api_lib$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/api_api_lib$(ObjectSuffix) -MF$(IntermediateDirectory)/api_api_lib$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/api_lib.c"

Lst/api_api_lib$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/api_lib.c
	@echo generating preprocess file of api_lib.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_api_lib$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/api_lib.c"

$(IntermediateDirectory)/api_api_msg$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/api_msg.c  Lst/api_api_msg$(PreprocessSuffix)
	@echo compiling api_msg.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/api_msg.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/api_api_msg$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/api_api_msg$(ObjectSuffix) -MF$(IntermediateDirectory)/api_api_msg$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/api_msg.c"

Lst/api_api_msg$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/api_msg.c
	@echo generating preprocess file of api_msg.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_api_msg$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/api_msg.c"

$(IntermediateDirectory)/api_err$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/err.c  Lst/api_err$(PreprocessSuffix)
	@echo compiling err.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/err.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/api_err$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/api_err$(ObjectSuffix) -MF$(IntermediateDirectory)/api_err$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/err.c"

Lst/api_err$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/err.c
	@echo generating preprocess file of err.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_err$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/err.c"

$(IntermediateDirectory)/api_netbuf$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netbuf.c  Lst/api_netbuf$(PreprocessSuffix)
	@echo compiling netbuf.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netbuf.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/api_netbuf$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/api_netbuf$(ObjectSuffix) -MF$(IntermediateDirectory)/api_netbuf$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netbuf.c"

Lst/api_netbuf$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netbuf.c
	@echo generating preprocess file of netbuf.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_netbuf$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netbuf.c"

$(IntermediateDirectory)/api_netdb$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netdb.c  Lst/api_netdb$(PreprocessSuffix)
	@echo compiling netdb.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netdb.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/api_netdb$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/api_netdb$(ObjectSuffix) -MF$(IntermediateDirectory)/api_netdb$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netdb.c"

Lst/api_netdb$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netdb.c
	@echo generating preprocess file of netdb.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_netdb$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netdb.c"

$(IntermediateDirectory)/api_netifapi$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netifapi.c  Lst/api_netifapi$(PreprocessSuffix)
	@echo compiling netifapi.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netifapi.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/api_netifapi$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/api_netifapi$(ObjectSuffix) -MF$(IntermediateDirectory)/api_netifapi$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netifapi.c"

Lst/api_netifapi$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netifapi.c
	@echo generating preprocess file of netifapi.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_netifapi$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/netifapi.c"

$(IntermediateDirectory)/api_sockets$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c  Lst/api_sockets$(PreprocessSuffix)
	@echo compiling sockets.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/api_sockets$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/api_sockets$(ObjectSuffix) -MF$(IntermediateDirectory)/api_sockets$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"

Lst/api_sockets$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c
	@echo generating preprocess file of sockets.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_sockets$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/sockets.c"

$(IntermediateDirectory)/api_tcpip$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/tcpip.c  Lst/api_tcpip$(PreprocessSuffix)
	@echo compiling tcpip.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/tcpip.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/api_tcpip$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/api_tcpip$(ObjectSuffix) -MF$(IntermediateDirectory)/api_tcpip$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/tcpip.c"

Lst/api_tcpip$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/tcpip.c
	@echo generating preprocess file of tcpip.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/api_tcpip$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/api/tcpip.c"

$(IntermediateDirectory)/core_def$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/def.c  Lst/core_def$(PreprocessSuffix)
	@echo compiling def.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/def.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_def$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_def$(ObjectSuffix) -MF$(IntermediateDirectory)/core_def$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/def.c"

Lst/core_def$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/def.c
	@echo generating preprocess file of def.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_def$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/def.c"

$(IntermediateDirectory)/core_dns$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/dns.c  Lst/core_dns$(PreprocessSuffix)
	@echo compiling dns.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/dns.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_dns$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_dns$(ObjectSuffix) -MF$(IntermediateDirectory)/core_dns$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/dns.c"

Lst/core_dns$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/dns.c
	@echo generating preprocess file of dns.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_dns$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/dns.c"

$(IntermediateDirectory)/core_inet_chksum$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/inet_chksum.c  Lst/core_inet_chksum$(PreprocessSuffix)
	@echo compiling inet_chksum.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/inet_chksum.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_inet_chksum$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_inet_chksum$(ObjectSuffix) -MF$(IntermediateDirectory)/core_inet_chksum$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/inet_chksum.c"

Lst/core_inet_chksum$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/inet_chksum.c
	@echo generating preprocess file of inet_chksum.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_inet_chksum$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/inet_chksum.c"

$(IntermediateDirectory)/core_init$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/init.c  Lst/core_init$(PreprocessSuffix)
	@echo compiling init.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/init.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_init$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_init$(ObjectSuffix) -MF$(IntermediateDirectory)/core_init$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/init.c"

Lst/core_init$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/init.c
	@echo generating preprocess file of init.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_init$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/init.c"

$(IntermediateDirectory)/core_ip$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ip.c  Lst/core_ip$(PreprocessSuffix)
	@echo compiling ip.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ip.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_ip$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_ip$(ObjectSuffix) -MF$(IntermediateDirectory)/core_ip$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ip.c"

Lst/core_ip$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ip.c
	@echo generating preprocess file of ip.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_ip$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ip.c"

$(IntermediateDirectory)/core_if$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/if.c  Lst/core_if$(PreprocessSuffix)
	@echo compiling if.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/if.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_if$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_if$(ObjectSuffix) -MF$(IntermediateDirectory)/core_if$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/if.c"

Lst/core_if$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/if.c
	@echo generating preprocess file of if.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_if$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/if.c"

$(IntermediateDirectory)/core_memp$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/memp.c  Lst/core_memp$(PreprocessSuffix)
	@echo compiling memp.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/memp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_memp$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_memp$(ObjectSuffix) -MF$(IntermediateDirectory)/core_memp$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/memp.c"

Lst/core_memp$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/memp.c
	@echo generating preprocess file of memp.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_memp$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/memp.c"

$(IntermediateDirectory)/core_netif$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/netif.c  Lst/core_netif$(PreprocessSuffix)
	@echo compiling netif.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/netif.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_netif$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_netif$(ObjectSuffix) -MF$(IntermediateDirectory)/core_netif$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/netif.c"

Lst/core_netif$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/netif.c
	@echo generating preprocess file of netif.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_netif$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/netif.c"

$(IntermediateDirectory)/core_pbuf$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/pbuf.c  Lst/core_pbuf$(PreprocessSuffix)
	@echo compiling pbuf.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/pbuf.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_pbuf$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_pbuf$(ObjectSuffix) -MF$(IntermediateDirectory)/core_pbuf$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/pbuf.c"

Lst/core_pbuf$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/pbuf.c
	@echo generating preprocess file of pbuf.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_pbuf$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/pbuf.c"

$(IntermediateDirectory)/core_raw$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/raw.c  Lst/core_raw$(PreprocessSuffix)
	@echo compiling raw.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/raw.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_raw$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_raw$(ObjectSuffix) -MF$(IntermediateDirectory)/core_raw$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/raw.c"

Lst/core_raw$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/raw.c
	@echo generating preprocess file of raw.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_raw$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/raw.c"

$(IntermediateDirectory)/core_stats$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/stats.c  Lst/core_stats$(PreprocessSuffix)
	@echo compiling stats.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/stats.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_stats$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_stats$(ObjectSuffix) -MF$(IntermediateDirectory)/core_stats$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/stats.c"

Lst/core_stats$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/stats.c
	@echo generating preprocess file of stats.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_stats$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/stats.c"

$(IntermediateDirectory)/core_sys$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/sys.c  Lst/core_sys$(PreprocessSuffix)
	@echo compiling sys.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/sys.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_sys$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_sys$(ObjectSuffix) -MF$(IntermediateDirectory)/core_sys$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/sys.c"

Lst/core_sys$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/sys.c
	@echo generating preprocess file of sys.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_sys$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/sys.c"

$(IntermediateDirectory)/core_tcp$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp.c  Lst/core_tcp$(PreprocessSuffix)
	@echo compiling tcp.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_tcp$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_tcp$(ObjectSuffix) -MF$(IntermediateDirectory)/core_tcp$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp.c"

Lst/core_tcp$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp.c
	@echo generating preprocess file of tcp.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_tcp$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp.c"

$(IntermediateDirectory)/core_tcp_in$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp_in.c  Lst/core_tcp_in$(PreprocessSuffix)
	@echo compiling tcp_in.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp_in.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_tcp_in$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_tcp_in$(ObjectSuffix) -MF$(IntermediateDirectory)/core_tcp_in$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp_in.c"

Lst/core_tcp_in$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp_in.c
	@echo generating preprocess file of tcp_in.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_tcp_in$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp_in.c"

$(IntermediateDirectory)/core_tcp_out$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp_out.c  Lst/core_tcp_out$(PreprocessSuffix)
	@echo compiling tcp_out.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp_out.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_tcp_out$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_tcp_out$(ObjectSuffix) -MF$(IntermediateDirectory)/core_tcp_out$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp_out.c"

Lst/core_tcp_out$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp_out.c
	@echo generating preprocess file of tcp_out.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_tcp_out$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/tcp_out.c"

$(IntermediateDirectory)/core_timeouts$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/timeouts.c  Lst/core_timeouts$(PreprocessSuffix)
	@echo compiling timeouts.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/timeouts.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_timeouts$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_timeouts$(ObjectSuffix) -MF$(IntermediateDirectory)/core_timeouts$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/timeouts.c"

Lst/core_timeouts$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/timeouts.c
	@echo generating preprocess file of timeouts.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_timeouts$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/timeouts.c"

$(IntermediateDirectory)/core_udp$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/udp.c  Lst/core_udp$(PreprocessSuffix)
	@echo compiling udp.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/udp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/core_udp$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/core_udp$(ObjectSuffix) -MF$(IntermediateDirectory)/core_udp$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/udp.c"

Lst/core_udp$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/udp.c
	@echo generating preprocess file of udp.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/core_udp$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/udp.c"

$(IntermediateDirectory)/netif_ethernet$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/ethernet.c  Lst/netif_ethernet$(PreprocessSuffix)
	@echo compiling ethernet.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/ethernet.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/netif_ethernet$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/netif_ethernet$(ObjectSuffix) -MF$(IntermediateDirectory)/netif_ethernet$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/ethernet.c"

Lst/netif_ethernet$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/ethernet.c
	@echo generating preprocess file of ethernet.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/netif_ethernet$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/ethernet.c"

$(IntermediateDirectory)/netif_ethernetif$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/ethernetif.c  Lst/netif_ethernetif$(PreprocessSuffix)
	@echo compiling ethernetif.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/ethernetif.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/netif_ethernetif$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/netif_ethernetif$(ObjectSuffix) -MF$(IntermediateDirectory)/netif_ethernetif$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/ethernetif.c"

Lst/netif_ethernetif$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/ethernetif.c
	@echo generating preprocess file of ethernetif.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/netif_ethernetif$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/ethernetif.c"

$(IntermediateDirectory)/netif_lowpan6$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/lowpan6.c  Lst/netif_lowpan6$(PreprocessSuffix)
	@echo compiling lowpan6.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/lowpan6.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/netif_lowpan6$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/netif_lowpan6$(ObjectSuffix) -MF$(IntermediateDirectory)/netif_lowpan6$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/lowpan6.c"

Lst/netif_lowpan6$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/lowpan6.c
	@echo generating preprocess file of lowpan6.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/netif_lowpan6$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/netif/lowpan6.c"

$(IntermediateDirectory)/ipv4_autoip$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/autoip.c  Lst/ipv4_autoip$(PreprocessSuffix)
	@echo compiling autoip.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/autoip.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_autoip$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ipv4_autoip$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_autoip$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/autoip.c"

Lst/ipv4_autoip$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/autoip.c
	@echo generating preprocess file of autoip.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_autoip$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/autoip.c"

$(IntermediateDirectory)/ipv4_dhcp$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/dhcp.c  Lst/ipv4_dhcp$(PreprocessSuffix)
	@echo compiling dhcp.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/dhcp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_dhcp$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ipv4_dhcp$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_dhcp$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/dhcp.c"

Lst/ipv4_dhcp$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/dhcp.c
	@echo generating preprocess file of dhcp.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_dhcp$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/dhcp.c"

$(IntermediateDirectory)/ipv4_etharp$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/etharp.c  Lst/ipv4_etharp$(PreprocessSuffix)
	@echo compiling etharp.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/etharp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_etharp$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ipv4_etharp$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_etharp$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/etharp.c"

Lst/ipv4_etharp$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/etharp.c
	@echo generating preprocess file of etharp.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_etharp$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/etharp.c"

$(IntermediateDirectory)/ipv4_icmp$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/icmp.c  Lst/ipv4_icmp$(PreprocessSuffix)
	@echo compiling icmp.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/icmp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_icmp$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ipv4_icmp$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_icmp$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/icmp.c"

Lst/ipv4_icmp$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/icmp.c
	@echo generating preprocess file of icmp.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_icmp$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/icmp.c"

$(IntermediateDirectory)/ipv4_igmp$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/igmp.c  Lst/ipv4_igmp$(PreprocessSuffix)
	@echo compiling igmp.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/igmp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_igmp$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ipv4_igmp$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_igmp$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/igmp.c"

Lst/ipv4_igmp$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/igmp.c
	@echo generating preprocess file of igmp.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_igmp$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/igmp.c"

$(IntermediateDirectory)/ipv4_ip4$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4.c  Lst/ipv4_ip4$(PreprocessSuffix)
	@echo compiling ip4.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_ip4$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ipv4_ip4$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_ip4$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4.c"

Lst/ipv4_ip4$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4.c
	@echo generating preprocess file of ip4.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_ip4$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4.c"

$(IntermediateDirectory)/ipv4_ip4_addr$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4_addr.c  Lst/ipv4_ip4_addr$(PreprocessSuffix)
	@echo compiling ip4_addr.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4_addr.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_ip4_addr$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ipv4_ip4_addr$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_ip4_addr$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4_addr.c"

Lst/ipv4_ip4_addr$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4_addr.c
	@echo generating preprocess file of ip4_addr.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_ip4_addr$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4_addr.c"

$(IntermediateDirectory)/ipv4_ip4_frag$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4_frag.c  Lst/ipv4_ip4_frag$(PreprocessSuffix)
	@echo compiling ip4_frag.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4_frag.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ipv4_ip4_frag$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ipv4_ip4_frag$(ObjectSuffix) -MF$(IntermediateDirectory)/ipv4_ip4_frag$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4_frag.c"

Lst/ipv4_ip4_frag$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4_frag.c
	@echo generating preprocess file of ip4_frag.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ipv4_ip4_frag$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/components/net/lwip-2.0.2/src/core/ipv4/ip4_frag.c"

$(IntermediateDirectory)/ntp_ntp$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/packages/netutils-1.0.0/ntp/ntp.c  Lst/ntp_ntp$(PreprocessSuffix)
	@echo compiling ntp.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/packages/netutils-1.0.0/ntp/ntp.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ntp_ntp$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ntp_ntp$(ObjectSuffix) -MF$(IntermediateDirectory)/ntp_ntp$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/packages/netutils-1.0.0/ntp/ntp.c"

Lst/ntp_ntp$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/packages/netutils-1.0.0/ntp/ntp.c
	@echo generating preprocess file of ntp.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ntp_ntp$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/packages/netutils-1.0.0/ntp/ntp.c"

$(IntermediateDirectory)/ping_ping$(ObjectSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/packages/netutils-1.0.0/ping/ping.c  Lst/ping_ping$(PreprocessSuffix)
	@echo compiling ping.c...
	@$(CC) $(SourceSwitch) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/packages/netutils-1.0.0/ping/ping.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ping_ping$(ObjectSuffix) $(IncludeCPath)
	@$(CC) $(CFLAGS) $(IncludeCPath) -MG -MP -MT$(IntermediateDirectory)/ping_ping$(ObjectSuffix) -MF$(IntermediateDirectory)/ping_ping$(DependSuffix) -MM "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/packages/netutils-1.0.0/ping/ping.c"

Lst/ping_ping$(PreprocessSuffix): E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/packages/netutils-1.0.0/ping/ping.c
	@echo generating preprocess file of ping.c...
	@$(CC) $(CFLAGS)$(IncludeCPath) $(PreprocessOnlySwitch) $(OutputSwitch) Lst/ping_ping$(PreprocessSuffix) "E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/packages/netutils-1.0.0/ping/ping.c"


$(IntermediateDirectory)/__rt_entry$(ObjectSuffix): $(IntermediateDirectory)/__rt_entry$(DependSuffix)
	@$(AS) $(SourceSwitch) "$(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S" $(ASFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) $(IncludeAPath)
	@rm -f $(IntermediateDirectory)/__rt_entry.S
$(IntermediateDirectory)/__rt_entry$(DependSuffix):
	@$(CC) $(CFLAGS) $(IncludeAPath) -MG -MP -MT$(IntermediateDirectory)/__rt_entry$(ObjectSuffix) -MF$(IntermediateDirectory)/__rt_entry$(DependSuffix) -MM "$(ProjectPath)/$(IntermediateDirectory)/__rt_entry.S"

-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	@echo Cleaning target...
	@rm -rf $(IntermediateDirectory)/ $(ObjectsFileList) rt-thread.mk Lst/

clean_internal:
	@rm -rf $(IntermediateDirectory)/*.o $(IntermediateDirectory)/.d $(IntermediateDirectory)/*.d $(IntermediateDirectory)/*.a $(IntermediateDirectory)/*.elf $(IntermediateDirectory)/*.ihex Lst/

