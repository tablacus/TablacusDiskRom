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
	JP	BASENT
	SCF
	JP	DSKFMT
	JP	DSKSTP
	NOP
	JP	GETSLT
	LD	HL,(0F34BH)
	RET

	ORG	0407FH
	RET
; Version
	DB	"Tablacus DISK ROM v0.0.3.0",0

	ORG	040FFH
	RET

	INCLUDE	"MSXINIT.ASM"
	INCLUDE	"MSXDISK.ASM"

	DS	07FFFH-$
	DB	0
LAST_ADR:

	END
