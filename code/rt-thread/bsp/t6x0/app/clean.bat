@echo off

del *.mk
del *.txt
del *.cdkws
del *.bin
del *.pyc
del *.log
del *.db
del .config
del .config.*
del .sconsign.*
del Makefile
del cconfig.h

rmdir /q /s Lst
rmdir /q /s Obj
rmdir /q /s build
rmdir /q /s .cdk
rmdir /q /s dist
del  .\..\..\..\tools\*.pyc

