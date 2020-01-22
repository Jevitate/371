;Main.s by Josh Freund, Lab partner: Cayden
;10/3/18
;Simple program to toggle LED1 on the MC9S08QG8
		INCLUDE 'derivative.inc'
		XDEF _Startup, main
		XREF __SEG_END_SSTACK	;symbol defined by the linker for the end of the stack
		


		

SCL	EQU	7
SDA EQU 6

DACADDR EQU  %11010000  ;w
DACADDR2 EQU %11010001	;r

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
	
	JSR 	I2CStartBit
	LDA 	#DACADDR
	JSR		I2CTxByte
	JSR		SlaveSeconds
	LDA		#%0011000
	JSR		I2CTxByte
	LDA		#%00100101
	JSR		I2CTxByte
	LDA		#%00000001
	JSR		I2CTxByte
	
	JSR		I2CStopBit

SendIt:

	MOV #3, Counter
	
	JSR 	I2CStartBit
	
	LDA		#DACADDR
	JSR		I2CTxByte
	
	;CLR Counter
	;MOV #$00, Counter
	
	JSR		SlaveSeconds
	
	JSR		I2CStopBit
	
	JSR		I2CStartBit
	LDA		#DACADDR2
	JSR		I2CTxByte
	BCLR SDA, PTBDD
	JSR		I2CRxByte
	BCLR SDA, PTBDD
	JSR		I2CRxByte
	BCLR SDA, PTBDD
	JSR		I2CRxByte
	JSR		I2CStopBitR
		
	
	JSR		I2CBitDelay
	BRA 	SendIt
	
I2CRxByte:
	LDX 	#$08
	STX 	BitCounter
	
I2CNextBitR:
	ROLA
	BCC		SendLowR
	
SendHighR:
	JSR  	I2CSetupDelay
	
setupR:
	BSET	SCL, PTBD
	JSR		I2CBitDelay
	BRA		I2CRxCont

SendLowR:
	JSR		I2CSetupDelay
	BSET	SCL, PTBD
	JSR		I2CBitDelay
	
I2CRxCont:
	BCLR	SCL, PTBD
	DEC		BitCounter
	BEQ		GottaGetEmBoth
	BRA		I2CNextBitR
	
I2CAckPollR:
	BSET 	SDA, PTBDD
	BCLR 	SDA, PTBD
	
	;JSR		I2CSetupDelay
	BSET	SCL, PTBD
	JSR		I2CBitDelay
	BRCLR	SDA, PTBD, I2CNoAckR
	JSR		I2CBitDelay
	BCLR 	SCL, PTBD
	BSET 	SDA, PTBDD
	
	RTS
	
I2CNoAckR:
	BCLR 	SCL, PTBD
	BSET 	SDA, PTBDD
	RTS
	
I2CStartBitR:
	JSR 	I2CBitDelay
	BCLR	SCL, PTBD
	RTS

I2CStopBitR:
	BSET 	SCL, PTBD
	JSR 	I2CBitDelay
	RTS
	
GottaGetEmBoth:

	DEC Counter
	BEQ	I2CNoAckR
	BRA I2CAckPollR	
	
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

SlaveSeconds:
	LDA #$00		;for the seconds
	;LDA #$11		;for the temp
	JSR I2CTxByte
	RTS


	
	
	
	

	



