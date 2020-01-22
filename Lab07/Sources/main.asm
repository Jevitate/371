;Main.s by Josh Freund, Lab partner: Cayden
;10/3/18
;Simple program to toggle LED1 on the MC9S08QG8
		INCLUDE 'derivative.inc'
		XDEF _Startup, main
		XREF __SEG_END_SSTACK	;symbol defined by the linker for the end of the stack
		


		

SCL	EQU	7
SDA EQU 6

DACADDR EQU $2C

	ORG	   $0060
BitCounter DS.B 1
Value 	   DS.B 1
Direction  DS.B 1
Counter	   DS.B 1



	ORG	   $E000
main:


_Startup:

	LDA SOPT1			;kill watchdog
	AND #%01111111
	STA SOPT1
	
	LDX #255
	STX $73		
	
	MOV #10, $74
	
mainLoop:


Start:

	CLR Value
	CLR BitCounter
	CLR Direction
	CLR Counter
	
	LDA #%11000000
	STA PTBDD
	STA PTBD
	

SendIt:
	JSR 	I2CStartBit
	
	LDA		#DACADDR
	ASLA
	JSR		I2CTxByte
	
	MOV #10, $74
	CLR Counter
	JSR		IncCounter
	
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
	DEC		BitCounter
	BEQ		I2CAckPoll
	BRA		I2CNextBit
I2CAckPoll:
	BSET 	SDA, PTBD
	BCLR 	SDA, PTBD
	
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

IncCounter:
	LDA Counter
	JSR I2CTxByte
	INC Counter
	DEC $74
	BNE IncCounter
	RTS

	
	

	



