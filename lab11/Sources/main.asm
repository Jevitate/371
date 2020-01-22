;Main.s by Josh Freund, Lab partner: Cayden
;11/28/18
;Simple program to toggle LED1 on the MC9S08QG8
		INCLUDE 'derivative.inc'
		XDEF _Startup, main, LetsFlash
		XREF __SEG_END_SSTACK	;symbol defined by the linker for the end of the stack
	

		
		ORG	$0060


WhatKey		DS.B 1

		ORG $E000
		
	


main:

_Startup:


	LDA SOPT1			;kill watchdog
	AND #%01111111
	STA SOPT1
	
	
	BSET 6, PTBDD		;set LEDS as outputs-LED1
	BSET 7, PTBDD		;LED 2

	BCLR 2, PTADD		;Switch 1-input
	BCLR 3, PTADD		;Switch 2-input
	
	BSET 6, PTBD		;Turn LEDS off
	BSET 7, PTBD

	LDA PTAPE			;disable pull ups
	AND #%11110011
	STA PTAPE
	
	LDA KBIES
	AND #%11110011
	STA KBIES
	
	
	BSET 2, KBIPE		;enable inputs
	BSET 3, KBIPE
	
	BSET 1, KBISC
	
	
	LDA #$0A
	STA TPMSC
	
	LDA #$28
	STA TPMC0SC
	
	LDA #$4E
	STA TPMMODH
	
	LDA #$20
	STA TPMMODL
	
	LDA #$05
	STA TPMC0VH
	
	LDA #$DC
	STA TPMC0VL	
	
	
	CLI					;clears interrupt flag-enables interrupt

	
	LDA #$0F
	STA WhatKey
	
mainLoop:


	BRA mainLoop



CW:
	BCLR 6, PTBD
	
	LDHX TPMC0VH
	CPHX #$0800
	BEQ DontDoIt

	LDHX TPMC0VH
	AIX #+100
	
	STHX TPMC0VH
	LDHX TPMC0VH

	BSET 6, PTBD
	RTI


CCW:
	BCLR 6, PTBD
	
	LDHX TPMC0VH
	CPHX #$2200
	BEQ DontDoIt
	
	
	LDHX TPMC0VH
	AIX #-100
	
	STHX TPMC0VH
	LDHX TPMC0VH
	
	BSET 6, PTBD
	RTI		

DontDoIt:

	RTI

	
LetsFlash:
	LDA PTAD
	STA WhatKey
	BSET 2, KBISC
	LDA #$04
	AND WhatKey
	BEQ CW
	LDA #$08
	AND WhatKey
	BEQ CCW
	RTI
	
	
	BRA mainLoop



