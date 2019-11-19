#!/bin/bash
set -x

src_list=(${@:1})
obj_list=(${src_list[@]%.*})
obj_list=("${obj_list[@]/%/.o}")
echo srcs: ${src_list[@]}
objs=${obj_list[@]}
echo objs: ${objs}

/usr/local/opt/llvm/bin/clang++ \
	-target x86_64-pc-win32-coff \
	-fno-stack-protector -fshort-wchar \
	-mno-red-zone \
	-nostdlibinc \
	-Wall -std=c++17 \
	-c ${@:1}
/usr/local/opt/llvm/bin/lld-link \
	-subsystem:efi_application -nodefaultlib \
	-entry:efi_main ${objs} -out:BOOTX64.EFI
