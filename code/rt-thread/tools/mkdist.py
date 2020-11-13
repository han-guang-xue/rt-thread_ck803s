#!/usr/bin/python
# -*- coding: UTF-8 -*-
#
# File      : mkdir.py
# This file is part of RT-Thread RTOS
# COPYRIGHT (C) 2006 - 2018, RT-Thread Development Team
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License along
#  with this program; if not, write to the Free Software Foundation, Inc.,
#  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#
# Change Logs:
# Date           Author       Notes
# 2017-10-04     Bernard      The first version
import os
import shutil
import sys
import stat

from shutil import ignore_patterns
from _codecs import decode

def do_copy_file(src, dst):
    # check source file
    if not os.path.exists(src):
        return

    path = os.path.dirname(dst)
    # mkdir if path not exist
    if not os.path.exists(path):
        os.makedirs(path)

    shutil.copy2(src, dst)

def do_copy_folder(src_dir, dst_dir, ignore=None):
    import shutil
    # check source directory
    print(src_dir)
    print(dst_dir)
    if not os.path.exists(src_dir):
        return

    try:
        if os.path.exists(dst_dir):
            shutil.rmtree(dst_dir)
    except:
        print('Deletes folder: %s failed.' % dst_dir)
        return

    shutil.copytree(src_dir, dst_dir, ignore = ignore)

source_ext = ["c", "h", "s", "S", "cpp", "a","xpm"]
source_list = []

def walk_children(child):
    global source_list
    global source_ext

    #print (child)
    full_path = child.rfile().abspath
    #print(full_path)
    strss  = full_path.rsplit('.',1)
    file_type = ''
    if len(strss) == 2:
        file_type = strss[1]
        
    #print file_type
    if file_type in source_ext:
        if full_path not in source_list:
            source_list.append(full_path)

    children = child.all_children()
    if children != []:
        for item in children:
            walk_children(item)

def walk_kconfig(RTT_ROOT, source_list):
    exclude_list = []
    include_list = []
    for parent, dirnames, filenames in os.walk(RTT_ROOT):
        if 'app*' in parent:
            continue
        if '.git' in parent:
            continue
        if 'tools' in parent:
            continue

        if 'Kconfig' in filenames:
            use = 0
            for item in source_list :
                if item.startswith(parent) :
                    use = 1
                    break
            if use == 1:
                pathfile = os.path.join(parent, 'Kconfig')
                source_list.append(pathfile)
                include_list.append(pathfile)
            else:
                pathfile = os.path.join(parent, 'Kconfig')
                exclude_list.append(pathfile)
                
        if 'KConfig' in filenames:
            use = 0
            for item in source_list :
                if item.startswith(parent) :
                    use = 1
                    break
            if use == 1:
                pathfile = os.path.join(parent, 'KConfig')
                source_list.append(pathfile)
                include_list.append(pathfile)
            else:
                pathfile = os.path.join(parent, 'KConfig')
                exclude_list.append(pathfile)
    
    #delete unused code item from Kconfig file
    #like  source "$RTT_DIR/components/net/freemodbus/Kconfig"
    for exclude_item in exclude_list :
        pathfile1 = exclude_item.replace(RTT_ROOT, '')
        pathfile2 = pathfile1.replace('\\', '/')
        for include_item in include_list :
            new_include_item = include_item + '0'
            with open(include_item,'r') as p, \
                open(new_include_item,'wb') as q:
                for i in p:
                    if (i.find(pathfile1) != -1) or (i.find(pathfile2) != -1) :
                        i = ''
                    i.replace(r'\r\n',r'\n')
                    q.write(i)
            p.close()
            q.close()
            os.remove(include_item)
            os.rename(new_include_item, include_item)
    

def MakeCopy(program, BSP_ROOT, RTT_ROOT, Env):
    global source_list

    target_path = os.path.join(BSP_ROOT, 'rt-thread')

    if target_path.startswith(RTT_ROOT):
        print('please use scons --copy to copy rt-thread to local bsp')
        return

    for item in program:
        walk_children(item)

    source_list.sort()

    # fill source file in RT-Thread
    target_list = []
    for src in source_list:
        if Env['PLATFORM'] == 'win32':
            src = src.lower()

        if src.startswith(RTT_ROOT):
            target_list.append(src)

    source_list = target_list
    # get source directory
    src_dir = []
    for src in source_list:
        src = src.replace(RTT_ROOT, '')
        if src[0] == os.sep or src[0] == '/':
            src = src[1:]

        path = os.path.dirname(src)
        sub_path = path.split(os.sep)
        full_path = RTT_ROOT
        for item in sub_path:
            full_path = os.path.join(full_path, item)
            if full_path not in src_dir:
                src_dir.append(full_path)

    for item in src_dir:
        source_list.append(os.path.join(item, 'SConscript'))
    walk_kconfig(RTT_ROOT, source_list)

    for src in source_list:
        dst = src.replace(RTT_ROOT, '')
        if dst[0] == os.sep or dst[0] == '/':
            dst = dst[1:]
        print '=> ', dst
        dst = os.path.join(target_path, dst)
        do_copy_file(src, dst)

    # copy tools directory
    print("=> tools")
    do_copy_folder(os.path.join(RTT_ROOT, "tools"), os.path.join(target_path, "tools"), ignore_patterns('*.pyc'))
    do_copy_file(os.path.join(RTT_ROOT, 'Kconfig'), os.path.join(target_path, 'Kconfig'))
    do_copy_file(os.path.join(RTT_ROOT, 'AUTHORS'), os.path.join(target_path, 'AUTHORS'))
    do_copy_file(os.path.join(RTT_ROOT, 'COPYING'), os.path.join(target_path, 'COPYING'))
    do_copy_file(os.path.join(RTT_ROOT, 'README.md'), os.path.join(target_path, 'README.md'))
    do_copy_file(os.path.join(RTT_ROOT, 'README_zh.md'), os.path.join(target_path, 'README_zh.md'))
    print('=> libc')
    do_copy_folder(os.path.join(RTT_ROOT, "components", 'libc', 'compilers'), os.path.join(target_path, "components", 'libc', 'compilers'))

    print('done!')

def MakeCopyHeader(program, BSP_ROOT, RTT_ROOT, Env):
    global source_list
    global source_ext
    source_ext = []
    source_ext = ["h", "xpm"]

    target_path = os.path.join(BSP_ROOT, 'rt-thread')

    if target_path.startswith(RTT_ROOT):
        print('please use scons --copy-header to copy header files only')
        return

    for item in program:
        walk_children(item)

    source_list.sort()

    # fill source file in RT-Thread
    target_list = []
    for src in source_list:
        if Env['PLATFORM'] == 'win32':
            src = src.lower()

        if src.startswith(RTT_ROOT):
            target_list.append(src)

    source_list = target_list

    for src in source_list:
        dst = src.replace(RTT_ROOT, '')
        if dst[0] == os.sep or dst[0] == '/':
            dst = dst[1:]
        print '=> ', dst
        dst = os.path.join(target_path, dst)
        do_copy_file(src, dst)

    # copy tools directory
    print "=>  tools"
    do_copy_folder(os.path.join(RTT_ROOT, "tools"), os.path.join(target_path, "tools"), ignore_patterns('*.pyc'))
    do_copy_file(os.path.join(RTT_ROOT, 'Kconfig'), os.path.join(target_path, 'Kconfig'))
    do_copy_file(os.path.join(RTT_ROOT, 'AUTHORS'), os.path.join(target_path, 'AUTHORS'))
    do_copy_file(os.path.join(RTT_ROOT, 'COPYING'), os.path.join(target_path, 'COPYING'))
    do_copy_file(os.path.join(RTT_ROOT, 'README.md'), os.path.join(target_path, 'README.md'))
    do_copy_file(os.path.join(RTT_ROOT, 'README_zh.md'), os.path.join(target_path, 'README_zh.md'))

    print('done!')

def MkDist(program, BSP_ROOT, RTT_ROOT, Env):
    print("make distribution....")
#     os.environ['LANG'] = 'zh_CN.UTF-8'
    dist_name = os.path.basename(BSP_ROOT)
    dist_dir  = os.path.join(BSP_ROOT, 'dist')
    
    #set code/document/tools dir
    code_dir  = os.path.join(dist_dir, 'code')
    doc_dir   = os.path.join(dist_dir, 'document')
    tools_dir  = os.path.join(dist_dir, 'tools')
    target_path = os.path.join(code_dir, 'rt-thread')
    
    global source_list

#     target_path = os.path.join(dist_dir, 'rt-thread')
    print("=> code")    
    for item in program:
        walk_children(item)

    source_list.sort()

    # copy the source files in RT-Thread
    target_list = []
    for src in source_list:
        if src.lower().startswith(BSP_ROOT.lower()):
            continue
        
        if src.lower().startswith(RTT_ROOT.lower()):
            target_list.append(src)

    source_list = target_list

    # get source directory
    src_dir = []
    for src in source_list:
        src = src.replace(RTT_ROOT, '')
        if src[0] == os.sep or src[0] == '/':
            src = src[1:]

        path = os.path.dirname(src)
        sub_path = path.split(os.sep)
        full_path = RTT_ROOT
        for item in sub_path:
            full_path = os.path.join(full_path, item)
            if full_path not in src_dir:
                src_dir.append(full_path)

    for item in src_dir:
        source_list.append(os.path.join(item, 'SConscript'))

    # add all of Kconfig files
    walk_kconfig(RTT_ROOT, source_list)

    source_list.sort()
    for src in source_list:
        dst = src.replace(RTT_ROOT, '')
        if dst[0] == os.sep or dst[0] == '/':
            dst = dst[1:]

        print('=> %s' % dst)
        dst = os.path.join(target_path, dst)
        do_copy_file(src, dst)

    do_copy_folder(os.path.join(os.path.dirname(RTT_ROOT), 'header'), os.path.join(code_dir,'header'), 
                   ignore_patterns('setup.h'))
    do_copy_folder(os.path.join(os.path.dirname(RTT_ROOT), 'software'), os.path.join(code_dir,'software'))
   
    # copy RT-Thread src files
    print('=> RT-Thread base components')
    do_copy_folder(os.path.join(RTT_ROOT, 'src'), os.path.join(target_path,'src'))
    do_copy_folder(os.path.join(RTT_ROOT, 'include'), os.path.join(target_path,'include'))
    do_copy_folder(os.path.join(RTT_ROOT, 'examples'), os.path.join(target_path,'examples'))
    do_copy_folder(os.path.join(RTT_ROOT, "libcpu", 'c-sky'), os.path.join(target_path, "libcpu", 'c-sky'))
    do_copy_folder(os.path.join(RTT_ROOT, "components", 'libc'), os.path.join(target_path, "components", 'libc'))
    do_copy_folder(os.path.join(RTT_ROOT, "components", 'finsh'), os.path.join(target_path, "components", 'finsh'))
    do_copy_folder(os.path.join(RTT_ROOT, "components", 'dfs'), os.path.join(target_path, "components", 'dfs'), 
                   ignore_patterns('jffs2', 'skeleton', 'uffs','yaffs2', 'Makefile','makefile'))
    do_copy_folder(os.path.join(RTT_ROOT, "components", 'net', 'lwip-2.0.2'), os.path.join(target_path, "components", 'net', 'lwip-2.0.2'), 
                   ignore_patterns('doc', 'test', '*.mk', 'UPGRADING', 'Makefile','makefile'))
    
    # copy BSP files
    do_copy_folder(os.path.join(RTT_ROOT, "bsp", 't6x0', 'drivers'), os.path.join(target_path, "bsp", 't6x0', 'drivers'))
    do_copy_folder(os.path.join(RTT_ROOT, "bsp", 't6x0', 'libraries'), os.path.join(target_path, "bsp", 't6x0', 'libraries'))
    do_copy_folder(os.path.join(BSP_ROOT), target_path +'\\bsp\\t6x0\\app', 
        ignore_patterns('Lst', 'Obj', '.cdk','*.mk', 'Makefile','makefile','*.txt','*.cdkproj','*.cdkws','build',
                        'dist', '*.pyc', '*.old', '*.map', '*.config','rtthread.bin', '.sconsign.dblite', 
                        '*.elf', '*.axf', 'cconfig.h'))

    #copy package files
    print("=> code : packages")
#     do_copy_folder(os.path.join(RTT_ROOT, "packages","lwext4-1.0.0"), os.path.join(target_path, "packages","lwext4-1.0.0"), 
#         ignore_patterns('toolchain','docs','linux','windows','fs_test','*.mk','CMakeLists.txt','Makefile','.gitignore','.git','.github'))
    do_copy_folder(os.path.join(RTT_ROOT, "packages","mbedtls-2.6.0"), os.path.join(target_path, "packages","mbedtls-2.6.0"), 
        ignore_patterns('doxygen','docs','doxygen','programs','scripts','tests','visualc','yotta','*.yml','*.tcl','CMakeLists.txt',
                        '*.mk','Makefile','.gitignore','.git','.github'))
    do_copy_folder(os.path.join(RTT_ROOT, "packages","netutils-1.0.0"), os.path.join(target_path, "packages","netutils-1.0.0"), 
                   ignore_patterns('Makefile','.gitignore','.git','.github'))
    do_copy_folder(os.path.join(RTT_ROOT, "packages","webclient-2.0.1"), os.path.join(target_path, "packages","webclient-2.0.1"), 
                   ignore_patterns('Makefile','docs','.gitignore','.git','.github'))
    do_copy_folder(os.path.join(RTT_ROOT, "packages","webnet-2.0.0"), os.path.join(target_path, "packages","webnet-2.0.0"), 
                   ignore_patterns('Makefile','docs','.gitignore','.git','.github'))

    print("=> code : tools")
    do_copy_folder(os.path.join(RTT_ROOT, "tools"), os.path.join(target_path, "tools"), ignore_patterns('release.py','*.cbp','*.pyc'))
    do_copy_file(os.path.join(RTT_ROOT, 'Kconfig'), os.path.join(target_path, 'Kconfig'))
    do_copy_file(os.path.join(RTT_ROOT, 'AUTHORS'), os.path.join(target_path, 'AUTHORS'))
    do_copy_file(os.path.join(RTT_ROOT, 'COPYING'), os.path.join(target_path, 'COPYING'))
    do_copy_file(os.path.join(RTT_ROOT, 'README.md'), os.path.join(target_path, 'README.md'))
    do_copy_file(os.path.join(RTT_ROOT, 'README_zh.md'), os.path.join(target_path, 'README_zh.md'))

    if os.path.exists(RTT_ROOT + '\\tools\\release.py'):
        from release import *
        
        print("=>config dist project")
        MakeProject(target_path)

        print("=> document")
        os.mkdir(doc_dir)
        MakeDoc(doc_dir)
        #todo
        print("=> tih tools")
        os.mkdir(tools_dir)
        MakeTihTools(tools_dir)
        
        print("=> change log")
        MakeLog(dist_dir)
    
    #modify dir name
    print("=> rename")
    os.chdir(BSP_ROOT)
    src_path = os.path.join(BSP_ROOT, 'dist')
    dst_path = os.path.join(BSP_ROOT, 'T6x0_RTOS_SDK_Vx.x.x')
    if os.path.exists(dst_path) :
        os.system("rm -fr " + dst_path)

    os.rename(src_path, dst_path)
    
        # make zip package
#         import zipfile
#         dist_name = 'T6x0_RTOS_SDK_Vx.x.x_bx'
#         zip_filename = os.path.join(BSP_ROOT, 'dist', dist_name)
#         print(zip_filename)
#         zip = zipfile.ZipFile(zip_filename + ".zip", 'w')
#         pre_len = len(os.path.dirname(dist_dir))
#     
#         pre_len = len(os.path.dirname(code_dir))
#         for parent, dirnames, filenames in os.walk(code_dir):
#             for filename in filenames:
#                 pathfile = os.path.join(parent, filename)
#                 arcname = pathfile[pre_len:].strip(os.path.sep)
#                 zip.write(pathfile, arcname)
#                 
#         pre_len = len(os.path.dirname(doc_dir))
#         for parent, dirnames, filenames in os.walk(doc_dir):
#             for filename in filenames:
#                 pathfile = os.path.join(parent, filename)
#                 arcname = pathfile[pre_len:].strip(os.path.sep)
#                 zip.write(pathfile, arcname)
#                 
#         pre_len = len(os.path.dirname(tools_dir))
#         for parent, dirnames, filenames in os.walk(tools_dir):
#             for filename in filenames:
#                 pathfile = os.path.join(parent, filename)
#                 arcname = pathfile[pre_len:].strip(os.path.sep)
#                 zip.write(pathfile, arcname)
#         #add log txt
#         log_path = dist_dir + '\\ChangeLog.txt'
#         if os.path.exists(log_path) :
#             arcname = log_path[pre_len:].strip(os.path.sep)
#             print(log_path)
#             print(arcname)
#             zip.write(log_path, arcname)
# 
#         zip.close()

    print('done!')
