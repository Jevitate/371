;Main.s by Josh Freund, Lab partner: Cayden
;10/3/18
;Simple program to toggle LED1 on the MC9S08QG8
		INCLUDE 'derivative.inc'
		XDEF _Startup, main
		XREF __SEG_END_SSTACK	;symbol defined by the linker for the end of the stack
		
	LDX #255
	STX $73		
		

SCL	EQU	7
SDA EQU 6

DACADDR EQU $2C

	ORG	   $0060
BitCounter DS.B 1
Value 	   DS.B 1
Direction  DS.B 1



	ORG	   $E000
main:


_Startup:

	LDA SOPT1			;kill watchdog
	AND #%01111111
	STA SOPT1
	
mainLoop:


Start:

	CLR Value
	CLR BitCounter
	CLR Direction
	
	LDA #%11000000
	STA PTBDD
	STA PTBD
	

SendIt:
	JSR 	I2CStartBit
	
	LDA		#DACADDR
	ASLA
	JSR		I2CTxByte
	
	;LDA		#$00
	;JSR		I2CTxByte
	;LDA		Value
	;JSR		I2CTxByte
	
	JSR		I2CStopBit	
	
	JSR		I2CBitDelay
	BRA 	SendIt
	
I2CTxByte:	
	LDX 	#$08
	STX 	BitCounter
	
I2CNextBit:
	ROLA
	BCC		SendLow
SendHigh:
	BSET 	SDA, PTBD
	JSR  	I2CSetupDelay
setup:
	BSET	SCL, PTBD
	JSR		I2CBitDelay
	BRA		I2CTxCont
SendLow:
	BCLR	SDA, PTBD
	JSR		I2CSetupDelay
	BSET	SCL, PTBD
	JSR		I2CBitDelay
I2CTxCont:
	BCLR	SCL, PTBD
	;LDA BitCounter
	;DECA
	;STA BitCounter
	DEC		BitCounter
	BEQ		I2CAckPoll
	BRA		I2CNextBit
I2CAckPoll:
	BSET 	SDA, PTBD
	BCLR 	SDA, PTBDD
	JSR		I2CSetupDelay
	BSET	SCL, PTBD
	JSR		I2CBitDelay
	BRSET	SDA, PTBD, I2CNoAck
	
	BCLR 	SCL, PTBD
	BSET 	SDA, PTBDD
	RTS
I2CNoAck:
	BCLR 	SCL, PTBD
	BSET 	SDA, PTBDD
	RTS
	
I2CStartBit:
	BCLR	SDA, PTBD
	JSR 	I2CBitDelay
	BCLR	SCL, PTBD
	RTS
I2CStopBit:
	BCLR 	SDA, PTBD
	BSET 	SCL, PTBD
	BSET 	SDA, PTBD
	JSR 	I2CBitDelay
	RTS
I2CSetupDelay:
	DEC $73
	BNE I2CSetupDelay
	RTS
I2CBitDelay:
	DEC $73

	BNE I2CBitDelay
	RTS

	

	


