;Main.s by Josh Freund, Lab partner: Cayden
;12/5/18
;Simple program to toggle LED1 on the MC9S08QG8
		INCLUDE 'derivative.inc'
		XDEF _Startup, main
		XREF __SEG_END_SSTACK	;symbol defined by the linker for the end of the stack


		ORG $E000
		
	
		
		
main:

_Startup:


	LDX SOPT1			;kill watchdog
	AND #%01111111
	STX SOPT1
	
	BSET 6, PTBDD	;define LEDs as outputs
	BSET 7, PTBDD

	BSET 6, PTBD	;Initialize the LEDs as off
	BSET 7, PTBD	
	
	
	LDA #$0A
	STA TPMSC
	
	LDA #$28
	STA TPMC0SC
	
	LDA #$4E 
	STA TPMMODH
	
	LDA #$20
	STA TPMMODL
	
	
	
	LDA #$07
	STA TPMC0VH
	
	LDA #$D0
	STA TPMC0VL	
	
	LDA #0
	STA ADCCFG
	STA ADCSC2
	
	LDA #1
	STA ADCSC1
	
	
	CLI
mainLoop:
	CLI
	BSET 6, PTBD
	LDA #1
	STA ADCSC1

	LDHX ADCR
	LDA #5
	MUL
	NOP
	STA $72
	STX $71

	LDHX $71
	AIX #100
	AIX #100
	AIX #100
	AIX #100
	AIX #100
	AIX #100
	AIX #100
	AIX #100
	STHX $71
	STX  $72
	STHX TPMC0V
	
	LDX $71
	CPX #03	;The min is 800us
	BEQ GetTurnt
	
	LDX $71
	CPX #08		;The min is 2200
	BEQ GetTurnt
		
	
	BRA mainLoop



GetTurnt:

	BCLR 6, PTBD

	BRA mainLoop
