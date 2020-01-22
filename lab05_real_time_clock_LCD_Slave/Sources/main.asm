;*******************************************************************
;* This stationery serves as the framework for a user application. *
;* For a more comprehensive program that demonstrates the more     *
;* advanced functionality of this processor, please see the        *
;* demonstration applications, located in the examples             *
;* subdirectory of the "Freescale CodeWarrior for HC08" program    *
;* directory.                                                      *
;*******************************************************************

; Include derivative-specific definitions
            INCLUDE 'derivative.inc'
            XDEF _Startup, main, _Viic
            XREF __SEG_END_SSTACK   ; symbol defined by the linker for the end of the stack

E		 EQU 0
RW		 EQU 2
RS		 EQU 1

		ORG $0060
		
FLAG	DS.B 1
FLAG2   DS.B 1
Storage DS.B 1
Temperature DS.B 1
Kelvin  DS.B 1
BigDud	DS.B 1

FULLER  DS.B 1
UPPER	DS.B 1
LOWER	DS.B 1
Counter DS.B 1
	IIC_addr: DS.B 1
	msgLength: DS.B 7
	current: DS.B 1
	IIC_MSG: DS.B 7
	TIME: DS.B 1		
		
		
		ORG $E000	
	
	MSG1: DC.B 'Date MM/DD/YY'
		  DC.B 0
	MSG2: DC.B 'Time hh:mm:ss'
		  DC.B 0
		  
	AddressWrite:   DC.B 5, 4, 6, 2, 1, 0	  


	
main:
_Startup:
    LDHX #__SEG_END_SSTACK ;initialize the stack pointer
	TXS
	
	CLI
	
	LDA SOPT1			;kill watchdog
	AND #%00000011
	STA SOPT1
	
	
	LDA #%10000001
	STA SOPT2

	CLR PTAD;LCD_CTRL 	;clears the data
	CLR PTBD;LCD_DATA	;clears the data
	LDA #$FF		;makes ports outputs
	STA PTADD
	STA PTBDD
	
	BCLR RS, PTAD
	LDA #255		;delay
	STA TIME
	JSR VAR_DELAY
	
	LDA #$38		;display control
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	
	;delay
	LDA #200
	STA TIME
	JSR VAR_DELAY
	
	
	LDA #$38
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	
	;delay
	LDA #200
	STA TIME
	JSR VAR_DELAY
	
	LDA #$38
	JSR LCD_WRITE
	
	;show rows
	LDA #$38
	JSR LCD_WRITE
	
	
	;cursor and display
	LDA #$0F
	JSR LCD_WRITE
	
	LDA #%00000010
	JSR LCD_WRITE
	JSR VAR_DELAY
	
	;clear display
	LDA #$01
	JSR LCD_WRITE
	LDA #16
	STA TIME
	JSR VAR_DELAY
	
	;set entry mode - shift right, dont shift display
	LDA #$06
	JSR LCD_WRITE
	CLRH
	CLRX
	JSR MESSAGE1
	CLRH
	CLRX
	MOV #0, Counter
	
	;JSR MESSAGE1
	
	JSR VAR_DELAY
	
	
	JSR DebugBounce
	;--------------------------------
	BCLR RS, PTAD
	LDA #%11000000
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	BSET RS, PTAD
	
	JSR MESSAGE2	
	
	;JSR MESSAGE2
	JSR IIC_Startup_slave
			
	;needs to write number
	;take average adn display	
	
				
mainLoop:

	LDA FLAG
	CBEQA #1, cool
	JSR DebugBounce
	BRA mainLoop
	
	cool:
	JSR DebugBounce

	BCLR RS, PTAD
	LDA #%00000001
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	BSET RS, PTAD	
	JSR DebugBounce

	

	BCLR RS, PTAD
	LDA #%00000010
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	BSET RS, PTAD
	JSR DebugBounce
	CLRH
	CLRX
	
	cool1:
	LDA #%00110000
	STA UPPER
	
	LDX Counter
	LDX AddressWrite, X
	LDA IIC_MSG, X
	
	LSRA
	LSRA
	LSRA
	LSRA
	STA LOWER

	LDA UPPER
	ADD LOWER
	STA FULLER
	
	JSR DebugBounce
	JSR DebugBounce

	LDA FULLER
	JSR LCD_WRITE
	JSR DebugBounce
	JSR DebugBounce

	
	LDX Counter
	LDX AddressWrite, X
	LDA IIC_MSG, X
	
	AND #%00001111
	STA LOWER
	
	LDA UPPER
	ADD LOWER
	STA FULLER
	
	JSR DebugBounce
	JSR DebugBounce
	LDA FULLER
	JSR LCD_WRITE
	JSR DebugBounce
	JSR DebugBounce
	BRA JUMPO
	mainLoop1:
	BRA mainLoop
	JUMPO:
	LDA Counter
	INCA
	STA Counter
	
	LDA Counter 
	CBEQA #4, NEW
	

	BRA cool1
	

NEW:
	JSR DebugBounce

	;--------------------------------
	BCLR RS, PTAD
	LDA #%11000000
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	BSET RS, PTAD
	JSR DebugBounce

	NEW1:

	LDX Counter
	LDX AddressWrite, X
	LDA IIC_MSG, X
	
	LSRA
	LSRA
	LSRA
	LSRA
	STA LOWER

	LDA UPPER
	ADD LOWER
	STA FULLER
	JSR DebugBounce
	JSR DebugBounce

	LDA FULLER
	JSR LCD_WRITE
	JSR DebugBounce
	JSR DebugBounce

	
	
	LDX Counter
	LDX AddressWrite, X
	LDA IIC_MSG, X
	
	AND #%00001111
	STA LOWER
	
	LDA UPPER
	ADD LOWER
	STA FULLER
	JSR DebugBounce
	JSR DebugBounce
	
	LDA FULLER
	JSR LCD_WRITE
	JSR DebugBounce
	JSR DebugBounce

	
	LDA Counter
	INCA
	STA Counter
	
	LDA Counter 
	CBEQA #7, INT

	BRA NEW1
INT:
	MOV #0, FLAG
	
	MOV #0, Counter
	BRA mainLoop1
	
DebugBounce:
	LDA #2
	STA $120
	loop3:
		LDA #25
		STA $121
		loop4:
			LDA $121
			DECA
			STA $121
			BNE loop4
		LDA $120
		DECA
		STA $120
		BNE loop3
	RTS            

MESSAGE1:
	LDA #$84
	JSR LCD_ADDR
	CLRX
	JSR VAR_DELAY
	L3:
		LDA MSG1, X
		BEQ OUTMSG1
		JSR LCD_WRITE
		JSR VAR_DELAY
		INCX
		BRA L3
		OUTMSG1:
			RTS
MESSAGE2:
	;LDA #$48
	JSR LCD_ADDR
	CLRX
	JSR VAR_DELAY
	L44:
		LDA MSG2, X
		BEQ OUTMSG2
		JSR LCD_WRITE
		JSR VAR_DELAY
		INCX
		BRA L44
		OUTMSG2:
			RTS
VAR_DELAY:
	LDA #200
	L1: DECA
	BNE L1
	DEC TIME
	BNE VAR_DELAY
	RTS

LCD_WRITE:
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	LDA #13
	L2: DECA
	BNE L2
	RTS
	
LCD_ADDR:
	BCLR RS, PTAD;LCD_CTRL
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	LDA #13
	L4: DECA
	BNE L4
	BSET RS, PTAD;LCD_CTRL
	RTS
	
IIC_Startup_slave:
	;set baud rate kbps
	LDA #%10000111
	STA IICF
	;set slave address
	LDA #$12
	STA IICA
	;Enable IIC and Interrrupts
	BSET IICC_IICEN, IICC
	BSET IICC_IICIE, IICC
	BCLR IICC_MST, IICC
	
	RTS
_Viic:
	LDA #1
	STA FLAG
	;clear interrupt
	BSET IICS_IICIF, IICS
	;master mode?
	LDA IICC
	AND #%00100000
	BEQ _Viic_slave ;yes
	;no
	RTI
	

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
;----------------------------------------------------------------------------------------------------------------------
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
	;LDA current
	;INCA 
	;STA current
	NOP
	NOP
	
	INCX
	STX current ;increment current
	
	CPX #7
	BEQ _Viic_slave_read
	;LDA current
	;CBEQA #7, Done
	;JMP _Viic_slave_read
	;Done:
	;MOV #0, current
	NOP
	RTI
