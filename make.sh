#!/usr/bin/bash
aaa=$1
/usr/bin/objdump -D -b binary -M intel -m i386:x86-64 -Maddr32,data32 ./uploads/$aaa.bin >./tmp/$aaa.S
  