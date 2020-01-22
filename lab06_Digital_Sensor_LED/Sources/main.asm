;Main.s by Josh Freund, Lab partner: Josh
;1/24/19
		INCLUDE 'derivative.inc'
		XDEF _Startup, main, _Viic
		XREF __SEG_END_SSTACK	;symbol defined by the linker for the end of the stack
	
	
		ORG	$0060
		
Counter1 DS.B 1
Counter2 DS.B 1
Counter3 DS.B 1
Check	 DS.B 1
Flag	 DS.B 1

	IIC_addr: DS.B 1
	msgLength: DS.B 1
	current: DS.B 1
	IIC_MSG: DS.B 1

		ORG $E000	
		
	LookUpStatic: DC.B %10101010
	LookUpSlideRight: DC.B %11111110, %11111101, %11111011, %11110111, %11101111, %11011111, %10111111, %01111111
	LookUpDiamond: DC.B %00011000, %00100100, %01000010, %10000001, %01000010, %00100100, %00011000
	LookUpArrow: DC.B %00111100, %01111000, %11110000, %11100000, %11000000, %10000000, %11000000, %11100000, %11110000, %01111000, %00111100
	
	
main:

_Startup:

	LDHX #__SEG_END_SSTACK ;initialize the stack pointer
	TXS
	
	CLI
	
	LDA SOPT1			;kill watchdog
	AND #%01111110
	STA SOPT1

	LDA #%11111111 ;set PTBDD as outputs, controls LEDs
	STA PTBDD
	
	LDA #%00000000	;turn off LEDs
	STA PTBD
	
	LDA #%10000001
	STA SOPT2
	
	JSR IIC_Startup_slave
	CLRH
	CLRX

mainLoop:
	
	LDA Flag
	CBEQA #1, Completed
	BRA mainLoop
	
	Completed:
	LDA IIC_MSG
	CBEQA #0, ZERO
	CBEQA #1, ONE
	CBEQA #2, TWO
	BRA mainLoop
	
	
ZERO:
	LDA #%00000000
	STA PTBD
	LDA #0
	STA Flag
	BRA mainLoop

ONE:
	LDA #%00000001
	STA PTBD
	LDA #0
	STA Flag
	BRA mainLoop
TWO:
	LDA #%00000010
	STA PTBD
	LDA #0
	STA Flag
	BRA mainLoop

_Viic:
	LDA #1
	STA Flag
	;clear interrupt
	BSET IICS_IICIF, IICS
	;master mode?
	LDA IICC
	AND #%00100000
	BEQ _Viic_slave ;yes
	;no
	RTI	
	
IIC_Startup_slave:
	;set baud rate kbps
	LDA #%10000111
	STA IICF
	;set slave address
	LDA #$10
	STA IICA
	;Enable IIC and Interrrupts
	BSET IICC_IICEN, IICC
	BSET IICC_IICIE, IICC
	BCLR IICC_MST, IICC
	
	RTS


_Viic_slave:

	;Arbitration lost?
	LDA IICS
	AND #%00010000
	BEQ _Viic_slave_iaas ;No
	BCLR 4, IICS ;if yes clear arbitration lost bit
	BRA _Viic_slave_iaas2

_Viic_slave_iaas:

	;adressed as slave?
	LDA IICS
	AND #%01000000
	BNE _Viic_slave_srw ;yes
	BRA _Viic_slave_txRx ;no
	

_Viic_slave_iaas2:

	;adressed as slave?
	LDA IICS
	AND #%01000000
	BNE _Viic_slave_srw ;yes
	RTI ;if no exist
	

_Viic_slave_srw:

	;slave read/write
	LDA IICS
	AND #%00000100
	BEQ _Viic_slave_setRx ;slave reads
	BRA _Viic_slave_setTx ;slave writes
	

_Viic_slave_setTx:

	;transmits data
	BSET 4, IICC ;transmit mode select
	LDX current
	LDA IIC_MSG, X ;selects current byte of message to send
	STA IICD ;sends message
	INCX
	STX current; increments current
	RTI
	

_Viic_slave_setRx:

	;makes slave ready to receive data
	BCLR 4, IICC ;recieve mode select
	LDA #0
	STA current
	LDA IICD ;dummy read
	RTI
	

_Viic_slave_txRx:

	LDA IICC
	AND #%00010000
	BEQ _Viic_slave_read ;receive
	BRA _Viic_slave_ack ;transmit
	
	

_Viic_slave_ack:

	LDA IICS
	AND #%00000001
	BEQ _Viic_slave_setTx ;yes, transmit next byte
	BRA _Viic_slave_setRx ;no, switch to receive mode
	
	

_Viic_slave_read:

	CLRH
	LDX current
	LDA IICD
	STA IIC_MSG, X ;store recieved data in IIC_MSG
	INCX
	STX current ;increment current
	RTI

Delay:

	LDA #200
	STA $100
	loop1:
		LDA #100
		STA $101
		loop2:
			LDA #10
			STA $102
			loop3:
				LDA $102
				DECA
				STA $102
				BNE loop3
			LDA $101
			DECA
			STA $101
			BNE loop2
		LDA $100
		DECA
		STA $100
		BNE loop1
	RTS
	
