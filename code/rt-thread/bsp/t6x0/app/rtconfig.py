import os
import sys
import platform

if platform.system() == "Windows":
    reload(sys) 
    sys.setdefaultencoding('gbk')
    os.system("CHCP 936")
    from winreg import *
else:
    reload(sys) 
    sys.setdefaultencoding('utf-8')

# toolchains options
ARCH        ='c-sky'
CPU         ='ck803'
CROSS_TOOL  ='gcc'

def cdk_project_find():
    cwd  = os.getcwd()
    dirs = os.listdir(os.getcwd())
    path = ''
    for i in dirs:
        if os.path.splitext(i)[1] == ".cdkproj":
            path = i;
    return os.path.join(cwd, path)

if platform.system() == "Windows":
    def cdk_path_find():
        cdkPath = ''
        aReg = ConnectRegistry(None, HKEY_CLASSES_ROOT)     
        aKey = OpenKey(aReg, r"cdkproj_auto_file\\shell\\open\\command")     
        value = QueryValueEx(aKey, "")     
        substring = value[0]     
        pos = substring.find("cdk.exe")     
        cdkPath = substring[:pos]     
        if cdkPath[0]=="\"":         
            cdkPath = cdkPath[1:pos] 
        return cdkPath

if os.getenv('RTT_CC'):
    CROSS_TOOL = os.getenv('RTT_CC')

if  CROSS_TOOL == 'gcc':
    PLATFORM    = 'gcc'
    CDK_PATH    = ''
    if platform.system() == "Windows":
        CDK_PATH    = cdk_path_find()
        if CDK_PATH != '':
            CDK_TOOLCHAIN_PATH = CDK_PATH + 'CSKY\\MinGW\\csky-abiv2-elf-toolchain\\bin'
            CDK_MINGW_PATH     = CDK_PATH + 'CSKY\\MinGW\\csky-abiv2-elf-toolchain\\bin\\..\\..\\bin'
            CDK_MSYS_PATH      = CDK_PATH + 'CSKY\\MinGW\\csky-abiv2-elf-toolchain\\bin\\..\\..\\msys\\1.0\\bin'
            CDK_MSYS_CMD_PATH  = CDK_PATH + 'CSKY\\MinGW\\csky-abiv2-elf-toolchain\\bin\\..\\..\\msys\\1.0\\local\\share\\bashdb\\command'
            EXEC_PATH = CDK_TOOLCHAIN_PATH
            CDK_PROJECT= cdk_project_find();
            CDK_ACTION = CDK_PATH + 'cdk-make.exe -p ' + CDK_PROJECT +' -d build -c BuildSet > ' + os.getcwd() + '\\build.log'
            CDK_ENV = CDK_TOOLCHAIN_PATH + ';' + CDK_MINGW_PATH + ';' + CDK_MSYS_PATH + ';' + CDK_MSYS_CMD_PATH + ';'
            os.environ["PATH"] += CDK_ENV
            os.environ["RTT_EXEC_PATH"] =  EXEC_PATH
            os.environ["RTT_CDK_PROJECT"] = CDK_PROJECT
    else:
        EXEC_PATH   = ''
    PARSE_FLAGS = ''
else:
    print('Please make sure your toolchains is GNU GCC!')
    exit(0)

if os.getenv('RTT_EXEC_PATH'):
    EXEC_PATH = os.getenv('RTT_EXEC_PATH')

#BUILD = 'debug'
BUILD = 'release'

if PLATFORM == 'gcc':
    if platform.system() == "Windows":
        PREFIX  = 'csky-elfabiv2-'
    else:
        PREFIX  = 'csky-abiv2-elf-'

    # toolchains
    CC      = PREFIX + 'gcc'
    CXX     = PREFIX + 'g++'
    AS      = PREFIX + 'gcc'
    AR      = PREFIX + 'ar'
    LINK    = PREFIX + 'g++'
    TARGET_EXT = 'elf'
    SIZE    = PREFIX + 'size'
    OBJDUMP = PREFIX + 'objdump'
    OBJCPY  = PREFIX + 'objcopy'
    STRIP   = PREFIX + 'strip'

    if CPU == 'ck803':
        DEVICE = ' -mcpu=ck803'

    CFLAGS  = DEVICE + '  -DCONFIG_CPU_CK803 -c -fdata-sections -ffunction-sections  -Wall -mistack -mlittle-endian -mno-required-printf'
    AFLAGS  = ' -c' + DEVICE + ' -mlittle-endian -save-temps=obj' #-x assembler-with-cpp
    LFLAGS  = DEVICE + ' -mlittle-endian -Wl,--gc-sections,-Map=rtthread.map -nostartfiles -static-libgcc -T fw.ld' #-cref,-u,reset_handler -z,max-page-size=0x4
    CPATH   = ''
    LPATH   = ''

    if BUILD == 'debug':
        CFLAGS += ' -O0 -g' #--> generate asm info unalign for -gdwarf-2
        AFLAGS += ' -Wa,--gdwarf2'
    else:
        CFLAGS += ' -O2 -g'
        AFLAGS += ' -Wa,--gdwarf2'

    CXXFLAGS = CFLAGS

    #module build params
    M_CFLAGS = DEVICE + ' -EL -G0 -O2 -mno-abicalls -fno-common -fno-exceptions -fno-omit-frame-pointer -mlong-calls -fno-pic '
    M_CXXFLAGS = M_CFLAGS
    M_LFLAGS = DEVICE + ' -EL -r -Wl,--gc-sections,-z,max-page-size=0x4' +\
                                    ' -nostartfiles -static-libgcc'
    M_POST_ACTION = STRIP + ' -R .hash $TARGET\n' + SIZE + ' $TARGET \n'

    DUMP_ACTION = OBJDUMP + ' -S $TARGET > rtthread.asm\n' #-S -D --> non-use
    POST_ACTION = OBJCPY + ' -O binary $TARGET rtthread.bin\n' + SIZE + ' $TARGET \n'
#                DUMP_ACTION   #generate total asm file by dortain
