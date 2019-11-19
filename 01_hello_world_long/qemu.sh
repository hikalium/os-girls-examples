set -x
mkdir -p mnt/EFI/BOOT
cp BOOTX64.EFI mnt/EFI/BOOT/
qemu-system-x86_64 -bios ovmf/bios64.bin -m 2G -machine q35 -cpu qemu64 -smp 4 -drive format=raw,file=fat:rw:mnt
