;Main.s by Cayden Seiler
;11/8/2018
;Lab 9 - Interrupts

			INCLUDE 'derivative.inc'
			XDEF _Startup, main, keyboard
			XREF __SEG_END_SSTACK	;symbol defined by the linker for the end of the stack

			ORG 	$0060	; Beginning of RAM
			
OUTERLOC DS.B 1				; Initialize memory addresses
MIDDLELOC DS.B 1
INNERLOC DS.B 1
keypress DS.B 1

			ORG		$E000	; Beginning or ROM
			
main:
_Startup:

			
			BSET 6, PTBDD	; Assign bit 6 in PTB (LED1) data direction to output
			BSET 7, PTBDD	; Assign bit 7 in PTB (LED2) data direction to output
			BCLR 2, PTADD	; Assign bit 2 in PTA (SW1) data direction to input
			BCLR 3, PTADD	; Assign bit 3 in PTA (SW2) data direction to input
			
			BSET 6, PTBD	; Initialize LED1 as off
			BSET 7, PTBD	; Initialize LED2 as off
			
			LDA PTAPE
			AND #%11110011	; Disable pullups on inputs
			STA PTAPE
			
			LDA KBIES
			AND #%11110011	; Setup SW1 and SW2 as falling edge sensitive
			STA KBIES
			
			BSET 2, KBIPE	; KBIP2 input enabled
			BSET 3, KBIPE	; KBIP3 input enabled
			
			BSET 1, KBISC	; Enable keyboard interrupts
			
			CLI				; Enable interrupts by clearing interrupt flag
			
			LDA SOPT1		; Load Accumulator with register that contains watchdog in bit 7
			AND #%01111111	; Keep every bit in SOPT1 the same except turn watchdog bit to 0
			STA SOPT1		; Store new SOPT1 in memory with disabled watchdog
			
			LDA #$FF		; Load value 255 to accumulator
		
mainLoop:

			BRCLR 2, keypress, delaySlow	; If key1 pressed, branch to delaySlow and Toggle LED1
			BRCLR 3, keypress, delayFast	; If key2 pressed, branch to delayFast and Toggle Led2
			
			BRA mainLoop

delaySlow:
			BSET 7, PTBD
			
			LDA #$00		; Load value 0x00 to Accumulator
			STA OUTERLOC	; Store Accumulator value to OUTERLOC

delay0:

			LDA PTBD		; Toggle LED1
			EOR #%01000000
			STA PTBD		

			LDA #$00		; Load 0x00 to the accumulator
			STA MIDDLELOC	; Move the value 0x00 to MIDDLELOC

delay1:
			LDA #$00		; Load 0x00 to Accumulator
			STA INNERLOC	; Move the value 0x00 to INNERLOC in loop, so it will reset every iteration of delay1

delay2:
			LDA INNERLOC	; Load the value of INNERLOC to Accumulator
			ADC #$01		; Add 0x01 plus the carry to Accumulator value
			STA INNERLOC	; Store this new added value back in INNERLOC
			BCC delay2		; Branch to delay2 while carry bit is 0 - when 1 break
			
			LDA MIDDLELOC	; Load the value of MIDDLELOC to Accumulator
			ADC #$01		; Add 0x01 plus the carry to Accumulator value
			STA MIDDLELOC	; Store this new added value back in MIDDLELOC
			
			BCC delay1		; Branch to delay1 while carry bit is 0 - when 1 break
			
			CLC				; Clear the carry bit in order to properly loop back to Delay0
			
			LDA OUTERLOC	; Load value of OUTERLOC to Accumulator
			ADC #$01		; Add with Carry value 0x01 to Accumulator Value
			STA OUTERLOC	; Store new added value back to OUTERLOC
			
			BRA mainLoop
			
delayFast:
			BSET 6, PTBD

			LDA #$00		; Load value 0x00 to Accumulator
			STA OUTERLOC	; Store Accumulator value to OUTERLOC

delay3:

			LDA PTBD		; Toggle LED2
			EOR #%10000000
			STA PTBD		

			LDA #$00		; Load 0x00 to the accumulator
			STA MIDDLELOC	; Move the value 0x00 to MIDDLELOC

delay4:
			LDA #$99		; Load 0x99 to Accumulator
			STA INNERLOC	; Move the value 0x00 to INNERLOC in loop, so it will reset every iteration of delay1

delay5:
			LDA INNERLOC	; Load the value of INNERLOC to Accumulator
			ADC #$01		; Add 0x01 plus the carry to Accumulator value
			STA INNERLOC	; Store this new added value back in INNERLOC
			BCC delay5		; Branch to delay2 while carry bit is 0 - when 1 break
			
			LDA MIDDLELOC	; Load the value of MIDDLELOC to Accumulator
			ADC #$01		; Add 0x01 plus the carry to Accumulator value
			STA MIDDLELOC	; Store this new added value back in MIDDLELOC
			
			BCC delay4		; Branch to delay1 while carry bit is 0 - when 1 break
			
			CLC				; Clear the carry bit in order to properly loop back to Delay0
			
			LDA OUTERLOC	; Load value of OUTERLOC to Accumulator
			ADC #$01		; Add with Carry value 0x01 to Accumulator Value
			STA OUTERLOC	; Store new added value back to OUTERLOC

			BRA mainLoop

keyboard:
			LDA PTAD		; Load PTAD to accumulator
			STA keypress	; Store PTAD to keypress
			BSET 2, KBISC	; Clear keyboard interrupt
			RTI				; return from interrupt
			




