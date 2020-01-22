;Main.s by Josh Freund, Lab partner: Josh
;1/24/19
		INCLUDE 'derivative.inc'
		XDEF _Startup, main
		XREF __SEG_END_SSTACK	;symbol defined by the linker for the end of the stack
	
	
		ORG	$0060
		
;RowPress	 DS.B 1
;ColumnPress  DS.B 1

	;FullKeypad:	DS.B 1 ;superfluous variable for testing
	IIC_addr:	DS.B 1 ;track IIC address
	msgLength:	DS.B 1 ;track total message length
	current:	DS.B 1 ;track which byte we have sent
	IIC_msg:	DS.B 1 ;enable 32 bit transmission
	


		ORG $E000	
		
;	LookUpStatic: DC.B %01010101, %11111111, %00000000
	
	
main:

_Startup:

	LDHX #__SEG_END_SSTACK ;initialize the stack pointer
	TXS
	LDA SOPT1			;kill watchdog
	AND #$7E
	STA SOPT1

	LDA #%11111111 ;set PTBDD as outputs, controls LEDs
	STA PTBDD
	
	;MOV LookUpStatic1, PTBD
	;LDA #%LookUpStatic
	;STA PTBD
	
	

	
	CLI
	
	
	
mainLoop:

	NOP
	
	LDA #%11001111
	STA PTBD
;	
	LDA #%00000000
	STA PTBD
;	
;	
;	LDA LookUpStatic
;	STA PTBD
;	
;
	NOP
	BRA mainLoop
