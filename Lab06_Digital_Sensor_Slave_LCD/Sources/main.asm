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
BigDudTemp DS.B 1

FULLER  DS.B 1
UPPER	DS.B 1
LOWER	DS.B 1
Counter DS.B 1
	IIC_addr: DS.B 1
	msgLength: DS.B 1 
	current: DS.B 1
	IIC_MSG: DS.B 1
	TIME: DS.B 1		
		
		
		ORG $E000	
	
	MSG1: DC.B 'TEC State:      '
		  DC.B 0
	MSG2: DC.B 'T92:    K@T=   '
		  DC.B 0
	MSG3: DC.B 'TEC State: Heat '
		  DC.B 0
	MSG4: DC.B 'TEC State: Cool '
		  DC.B 0
	MSG5: DC.B 'TEC State: Off  '
		  DC.B 0
	MSG6: DC.B 'T92:'
		  DC.B 0
	AddressWrite:   DC.B 0	  


	
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
	
	;1001000 1/0
				
mainLoop:


	LDA FLAG
	CBEQA #1, completed

	BRA mainLoop
	

completed:

	LDA IIC_MSG
	CBEQA #0, zero
	CBEQA #1, first
	CBEQA #2, secondo
	BRA mainLoop
zero:
	LDA #0
	STA FLAG
	waiter3:
	LDA FLAG
	CBEQA #1, almostdone
	BRA waiter3
	almostdone:
	LDA IIC_MSG
	CBEQA #2, second
	CBEQA #1, first
	BCLR RS, PTAD
	LDA #%00000010			;sets home
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	BSET RS, PTAD
	JSR DebugBounce
	CLRH
	CLRX
	JSR MESSAGE5
	LDA #0
	STA FLAG
	BCLR RS, PTAD
	LDA #%11000000			;sets second line
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	BSET RS, PTAD
	JSR MESSAGE6
	JSR DecimalToHexToAscii
	BRA waiter3
mainLoop1:
	BRA mainLoop
first:
	LDA #0
	STA FLAG
	waiter:
	LDA FLAG
	CBEQA #1, letsgo
	BRA waiter
	letsgo:
	LDA IIC_MSG
	CBEQA #2, second
	CBEQA #0, zero
	BCLR RS, PTAD			;sets home
	LDA #%00000010
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	BSET RS, PTAD
	JSR DebugBounce
	CLRH
	CLRX
	BRA JUMPERS
	zero1:
	BRA zero
	mainLoop2:
	BRA mainLoop1
	secondo:
	BRA second
	JUMPERS:
	JSR MESSAGE3
	LDA #0
	STA FLAG
	BCLR RS, PTAD
	LDA #%11000000			;sets second line
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	BSET RS, PTAD
	JSR MESSAGE6
	JSR DecimalToHexToAscii
	BRA waiter
second:
	LDA #0
	STA FLAG
	waiter2:
	LDA FLAG 
	CBEQA #1, getout
	BRA waiter2
	getout:
	LDA IIC_MSG
	CBEQA #1, first
	CBEQA #0, zero1

	BCLR RS, PTAD
	LDA #%00000010			;setshome
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	BSET RS, PTAD
	JSR DebugBounce
	CLRH
	CLRX
	
	JSR MESSAGE4
	LDA #0
	STA FLAG

	BCLR RS, PTAD
	LDA #%11000000			;sets second line
	STA PTBD;LCD_DATA
	BSET E, PTAD;LCD_CTRL
	NOP
	BCLR E, PTAD;LCD_CTRL
	BSET RS, PTAD
	
	JSR MESSAGE6

	JSR DecimalToHexToAscii

	BRA waiter2
	
DecimalToHexToAscii:

	LDA IIC_MSG
	STA BigDud
	
	
	LDA #0
	STA BigDudTemp
	
	LDA BigDud
	LSRA
	LSRA
	LSRA
	LSRA
	STA BigDudTemp
	
	LDA #%00110000
	ADD BigDudTemp
	STA BigDudTemp
	
	LDA BigDudTemp
	JSR LCD_WRITE
	JSR DebugBounce
	
	LDA BigDud
	AND #%00001111
	STA BigDudTemp
	
	LDA #%00110000
	ADD BigDudTemp
	STA BigDudTemp
	
	LDA BigDudTemp
	JSR LCD_WRITE
	JSR DebugBounce
	
	
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
	L11:
		LDA MSG1, X
		BEQ OUTMSG1
		JSR LCD_WRITE
		JSR VAR_DELAY
		INCX
		BRA L11
		OUTMSG1:
			RTS
MESSAGE2:
	;LDA #$48
	JSR LCD_ADDR
	CLRX
	JSR VAR_DELAY
	L22:
		LDA MSG2, X
		BEQ OUTMSG2
		JSR LCD_WRITE
		JSR VAR_DELAY
		INCX
		BRA L22
		OUTMSG2:
			RTS
MESSAGE3:
	;LDA #$84
	JSR LCD_ADDR
	CLRX
	JSR VAR_DELAY
	L33:
		LDA MSG3, X
		BEQ OUTMSG3
		JSR LCD_WRITE
		JSR VAR_DELAY
		INCX
		BRA L33
		OUTMSG3:
			RTS
			
MESSAGE4:
	;LDA #$84
	JSR LCD_ADDR
	CLRX
	JSR VAR_DELAY
	L44:
		LDA MSG4, X
		BEQ OUTMSG4
		JSR LCD_WRITE
		JSR VAR_DELAY
		INCX
		BRA L44
		OUTMSG4:
			RTS
			
MESSAGE5:
	;LDA #$84
	JSR LCD_ADDR
	CLRX
	JSR VAR_DELAY
	L55:
		LDA MSG5, X
		BEQ OUTMSG5
		JSR LCD_WRITE
		JSR VAR_DELAY
		INCX
		BRA L55
		OUTMSG5:
			RTS	
			
MESSAGE6:
	;LDA #$84
	JSR LCD_ADDR
	CLRX
	JSR VAR_DELAY
	L66:
		LDA MSG6, X
		BEQ OUTMSG6
		JSR LCD_WRITE
		JSR VAR_DELAY
		INCX
		BRA L66
		OUTMSG6:
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
