set -x
/usr/local/opt/llvm/bin/clang++ \
	-target x86_64-pc-win32-coff \
	-fno-stack-protector -fshort-wchar \
	-mno-red-zone \
	-nostdlibinc \
	-Wall -std=c++17 \
	-c -o BOOTX64.o ${@:1}
/usr/local/opt/llvm/bin/lld-link \
	-subsystem:efi_application -nodefaultlib \
	-entry:efi_main BOOTX64.o -out:BOOTX64.EFI
