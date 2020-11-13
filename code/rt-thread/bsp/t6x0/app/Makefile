.PHONY: clean All Project_Title Project_Build Project_PostBuild

All: Project_Title Project_Build Project_PostBuild

Project_Title:
	@echo "----------Building project:[ rt-thread - BuildSet ]----------"

Project_Build:
	@make -r -f rt-thread.mk -j 6 -C  ./ 

Project_PostBuild:
	@echo Executing Post Build commands ...
	@export CDKPath="D:/C-Sky/CDK" CDK_VERSION="V2.6.4" ProjectPath="E:/YCXGIT/T6x0_RTOS_SDK_V0.9.3_b1/T6x0_RTOS_SDK_V0.9.3/code/rt-thread/bsp/t6x0/app" && csky-abiv2-elf-objcopy -O binary ./Obj/rt-thread.elf ./Obj/rt-thread.bin
	@echo Done


clean:
	@echo "----------Cleaning project:[ rt-thread - BuildSet ]----------"

