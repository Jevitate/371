;Cayden Seiler, Josh Fruend
; Include derivative-specific definitions
            INCLUDE 'derivative.inc'
            

; export symbols
            XDEF _Startup, main, JoshSmells
            
            XREF __SEG_END_SSTACK   ; symbol defined by the linker for the end of the stack

	ORG $0070
Marquise dc.b 1		;Keyboard interrupt variable

main: 
_Startup:
							
	LDHX #__SEG_END_SSTACK	;initializes stack
	TXS

	LDA SOPT1 		;kill the watchdog
	AND #%01111111
	STA SOPT1

	BCLR 2, PTADD 	;define switch ports as inputs
	BCLR 3, PTADD

	BSET 6, PTBDD	;define LEDs as outputs
	BSET 7, PTBDD

	BSET 6, PTBD	;Initialize the LEDs as off
	BSET 7, PTBD

	LDA #$F3		;disable pull-ups
	AND PTAPE
	STA PTAPE

	LDA #$00		;sets the switches as falling edge sensitive
	AND KBIES
	STA KBIES

	LDA #$0C		;sets up KBIP3 and KBIP2 to be inputs
	ORA KBIPE
	STA KBIPE

	LDA #$02		;enable keyborad interrupts
	ORA KBISC
	STA KBISC
	
	CLI 			;enable interrrupts

	LDA #$0A; 		;Duty cycle (initially set the servo here)
	STA TPMSC

	LDA #$28
	STA TPMC0SC	

	LDA #$4E		;set the period
	STA TPMMODH
	LDA #$20
	STA TPMMODL
	
	LDA #$05 		;1.5ms Pulse
	STA TPMC0VH
	LDA #$DC
	STA TPMC0VL
	
	LDA	 #$0F
	STA Marquise
	
	
mainLoop: 			;infinite loop 

	
	BRA mainLoop

InCaseYouMissedMe:
	BCLR 6, PTBD	;led is on

	LDHX TPMC0VH
	CPHX #$0800		;The min is 800us
	BEQ YouveGoneTooFar        ;Compares the value to the min, branches if it's the least value to skip the code below

	LDHX TPMC0VH
	AIX #-100      	;decreases by 100us  

	STHX TPMC0VH   	;stores new values
	LDHX TPMC0VH
	
	BSET 6, PTBD	;turns LED off
	RTI
	  


DidYouKnowImGonnaBeALifeguard:
	BCLR 6, PTBD	;led on

	LDHX TPMC0VH
	CPHX #2200 		;The maximum is 2200 us
	BEQ YouveGoneTooFar        ;Compares the value to the max, branches if it's the largest value to skip the code below

	LDHX TPMC0VH
	AIX #100    	;increases by 100us       

	STHX TPMC0VH 	;Stores values
	LDHX TPMC0VH
	  
	BSET 6, PTBD 	;LED off
	RTI
	  
YouveGoneTooFar:		
	RTI				;Skips over changing pulse width
	
JoshSmells:
	LDA PTAD
	STA keypress    ;detects which key is pressed
	BSET 2, KBISC
	LDA #$04		;switch 1
	AND Marquise
	BEQ InCaseYouMissedMe
	LDA #$08		;switch 2
	AND Marquise
	BEQ DidYouKnowImGonnaBeALifeguard
	RTI
