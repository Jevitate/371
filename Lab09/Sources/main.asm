;Main.s by Josh Freund, Lab partner: Cayden
;10/3/18
;Simple program to toggle LED1 on the MC9S08QG8
		INCLUDE 'derivative.inc'
		XDEF _Startup, main, LetsFlash
		XREF __SEG_END_SSTACK	;symbol defined by the linker for the end of the stack
		
		ORG	$0600
		
WhatKey		DS.B 1

FirstLoop 	DS.B 1
SecondLoop 	DS.B 1
ThirdLoop 	DS.B 1

	ORG $E000

main:

_Startup:


	LDX SOPT1			;kill watchdog
	AND #%01111111
	STX SOPT1
	
	
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
	
	CLI					;clears interrupt flag-enables interrupt
	
	JSR LetsFlash
	
	
mainLoop:

	BRCLR 2, WhatKey, Turtle
	BRCLR 3, WhatKey, Rabbit
	BRA mainLoop
	
	
Turtle:

	BSET 7, PTBD
	
	LDA #$00
	STA FirstLoop
	
	LDA PTBD
	EOR #%01000000
	STA PTBD
	
Turtle2:

	LDA #$00
	STA SecondLoop
	


Turtle3:

	LDA #$00
	STA ThirdLoop
	

UberTurtle:

	LDA ThirdLoop
	ADC #$01
	STA ThirdLoop
	BCC UberTurtle
	
	LDA SecondLoop
	ADC #$01
	STA SecondLoop
	BCC Turtle3
	
	CLC
	
	LDA FirstLoop
	ADC #$01
	STA FirstLoop
	
	BRA mainLoop

		
Rabbit:

	BSET 6, PTBD
	
	LDA #$00
	STA FirstLoop
	
	LDA PTBD
	EOR #%01000000
	STA PTBD
	
Rabbit2:

	LDA #$00
	STA SecondLoop

Rabbit3:

	LDA #$00
	STA ThirdLoop

UberRabbit:

	LDA ThirdLoop
	ADC #$01
	STA ThirdLoop
	BCC UberRabbit
	
	LDA SecondLoop
	ADC #$01
	STA SecondLoop
	BCC Rabbit3
	
	CLC
	
	LDA FirstLoop
	ADC #$01
	STA FirstLoop
	
	BRA mainLoop
	

TURNT:
		LDA PTBD		;grabbing memeory from PTBD, 8bits
		EOR #%11000000	;EOR binary code to the memory to chagne the bits, so LEDS turn off and on
		STA PTBD		;storing updated memory back into PTBD
		BRA mainLoop
		
LetsFlash:
	MOV PTAD, WhatKey
	BSET 2, KBISC
	RTI
