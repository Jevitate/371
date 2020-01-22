;*******************************************************************
;* This stationery serves as the framework for a user application. *
;* For a more comprehensive program that demonstrates the more     *
;* advanced functionality of this processor, please see the        *
;* demonstration applications, located in the examples             *
;* subdirectory of the "Freescale CodeWarrior for HC08" program    *
;* directory.                                                      *
;*******************************************************************
;Joshua Freund  Josh Harthan
; Include derivative-specific definitions
            INCLUDE 'derivative.inc'
            

; export symbols
            XDEF _Startup, main, _RX
            ; we export both '_Startup' and 'main' as symbols. Either can
            ; be referenced in the linker .prm file or from C/C++ later on
            
            XREF __SEG_END_SSTACK   ; symbol defined by the linker for the end of the stack

			ORG $0060
			
			Message: DS.B 100
			
			Count: DS.B 1
			ORG $E000



main:
_Startup:
            LDHX   #__SEG_END_SSTACK ; initialize the stack pointer
            TXS
            
            LDA #%00000011
            STA SOPT1
            
            LDA #%00000000
            STA SCIC1
            
            LDA #%00111100
            STA SCIC2
            
            LDA #%00000000
            STA SCIC3
            
            
            ;BCLR 0, PTBDD
            ;BSET 1, PTBDD
            
            LDA #$00
            STA SCIBDH
            
            LDA #$1A
            STA SCIBDL
            MOV #0, Count
            CLRH
            CLRX
			CLI			; enable interrupts
mainLoop:
            BRA    mainLoop
GetYourSendOn:
	CLRX
	MOV #0, Count
	Awesome:
	LDX Count
	LDA Message, X
	CBEQA #$21, mainLoop
	STA SCID
	BSET 5, SCIS1
	INCX
	STX Count
	BRA Awesome

_RX:

	LDX Count
	LDA SCID
	STA Message, X
	CBEQA #$21, GetYourSendOn
	INCX
	STX Count
	BSET 5, SCIS1
	LDA SCID
	RTI


