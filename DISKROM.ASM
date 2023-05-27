;	Tablacus DISK ROM for MSX
;	Programmed by
;	Gaku (Lovers/Tablacus)
;
;	■アセンブル時にROMのタイプを指定する1
;	ASCII-8K/Konami-8Kの場合
;	FIX_ROM_MODE	EQU	01FH
;	ASCII-16Kの場合
;	FIX_ROM_MODE	EQU	03FH
;
;	■アセンブル時にROMのタイプを指定する2
;	ASCII-8K/ASCII-16Kの場合
;	FIX_ROM_SEL	EQU	high BANK2_SEL
;	Konami-8Kの場合
;	FIX_ROM_SEL	EQU	high KONAMI_BANK2_SEL
;
;	■アセンブル時にドライブAのFDDのサイズを指定する(Bドライブも使用する場合)
;	2DDの場合
	FIX_DRIVE	EQU	720/16+1
;

	INCLUDE	"MSXDEF.ASM"

	ORG	RUN

; MSX ROM header
	DB	"AB"   ; ID for auto-executable ROM
	DW	INIT_ROM   ; Main program execution address.
	DW	0      ; STATEMENT
	DW	0      ; DEVICE
	DW	0      ; TEXT
	DW	0,0,0  ; Reserved

	JP	DISKIO
	JP	DSKCHG
	JP	GETDPB
	JP	CHOICE
	JP	DSKFMT
	JP	DSKSTP
;	JP	BASENT
;	SCF
;	JP	DSKFMT
;	JP	DSKSTP
;	NOP
;	JP	GETSLT
;	LD	HL,(0F34BH)
;	RET

	ORG	0407FH
	RET
; Version
	DB	"Tablacus DISK ROM v0.1.0.0",0

	ORG	040FFH
	RET

	INCLUDE	"MSXINIT.ASM"
	INCLUDE	"MSXDISK.ASM"

	DS	07FFFH-$
	DB	0
LAST_ADR:

	END
