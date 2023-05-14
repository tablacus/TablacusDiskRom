;	Tablacus DISK ROM for MSX
;	Programmed by
;	Gaku (Lovers/Tablacus)

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

; Version
	DB	"Tablacus DISK ROM v0.0.2.0",0

	INCLUDE	"MSXINIT.ASM"
	INCLUDE	"MSXDISK.ASM"

	DS	07FFFH-$
	DB	0
LAST_ADR:

	END
