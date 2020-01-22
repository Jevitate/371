;Main.s by Josh Freund, Lab partner: Cayden
;11/14/18
;Simple program to toggle LED1 on the MC9S08QG8
		INCLUDE 'derivative.inc'
		XDEF _Startup, main
		XREF __SEG_END_SSTACK	;symbol defined by the linker for the end of the stack
		
		
		
		
main:

_Startup:


	LDX SOPT1			;kill watchdog
	AND #%01111111
	STX SOPT1
	
	
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

	
	
	
	
mainLoop:


	
	BRA mainLoop



