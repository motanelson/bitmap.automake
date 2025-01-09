printf "\033c\033[43;30m"
cp app.data cd1.iso
nasm mysys.s -o mysys.bin
dd if=mysys.bin of=cd1.iso bs=1k seek=58 conv=notrunc
qemu-system-x86_64 -cdrom cd1.iso