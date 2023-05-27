[Japanese/日本語](https://github.com/tablacus/TablacusDiskRom/blob/main/README.MD)

# Tabacus DISK ROM for MSX Gaku

## Overview of features

This software is a software that converts MSX DISK environment software to ROM.  
After starting ROM, it rewrites the slot used by DRVTBL and replaces low-level disk access with ROM disk.  
It uses the RS-232C work area. Software that uses RS-232C may not work.

Unlike [LSX-Dodgers](https://github.com/tablacus/LSX-Dodgers), you can ROMize BASIC software, but only on MSX with DISK BIOS. LSX-Dodgers can work on C-BIOS

## Download

You can download it from Assets on the following page.   
https://github.com/tablacus/TablacusDiskRom/releases

## How to ROMize DSK files

1. Run `msxcat.bat` on Windows command line to concatenate system and disk image `ROM.DSK`

※As long as you concatenate a 2DD DSK file after DISKROM.BIN (16KB), any method is OK.

You can also ROMize a 2DD two-disc set. I thought it would be limited to a two-drive machine because I was just deceiving it, but I was able to see the second disc as drive B even with one emulator floppy.

1. Concatenate two 2DD DSK files after DISKROM.BIN (16KB).

Example of concatenating two image files on Windows command line
```bat
copy /b DISKROM.BIN + DISK1.DSK + DISK2.dsk DISK1_2.ROM
```

## How to run

1. Set `MSX.ROM` in ROM slot
2. Set ROM image type to either `ASCII-16K`, `ASCII-8K` (only for 2MB or less), or `Konami-8K` (only for 512MB or less)
3. Reset if it does not start

## Switch

Turn off Tablacus DISK ROM
```basic
POKE &HF390,PEEK(&HF348)
```

Turn on Tablacus DISK ROM
```basic
POKE &HF390,PEEK(&HFB1C)
```

## License

[MIT License](https://github.com/tablacus/TablacusDiskRom/blob/main/LICENSE.TXT)

## Special thanks

Thanks to [HRA!](https://twitter.com/thara1129)'s MSX Memory Architecture, I was able to support MegaROM.
I really appreciate it.

https://github.com/hra1129/msx_documents/blob/main/memory/MSX_memory_architecture.pdf
