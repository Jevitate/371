;Main.s by Joshua Freund
;9/19/2018
;Simple program to toggle LED1

	INCLUDE 'derivative.inc'
	XDEF _Startup, main
	XREF __SEG_END_SSTACK
	
	
TEMP EQU $0060
EIGHT EQU $0074 ;Variable EIGHT is in address 74
VALUE EQU $0075 ;Variable VALUE is in address 75
main:

_Startup:

	CLRH
	LDX #$60				;Starting X at the beggining of memory
	MOV #7, EIGHT			;Moving the value 7 into the variable EIGHT
	MOV #%00000010, VALUE	;Storing the 8bit binary for the value 2 into VALUE
	
	mainloop:
	

	
	MOV VALUE, X+			;Moving the 8 bit binary value for 2 into X then incrementing X address by 1
	LDA VALUE				;Loading VALUE into acumlator to then increment the 1 bit in VALUE left one spot
	LSLA 				
	STA VALUE				;Updating VALUE
	
	LDA EIGHT				;Using this for my loop, Calling the value 7
	DECA 					;decrementing 7 by 1
	STA EIGHT				;updating Variable EIGHT
	BNE mainloop			;checking to see if EIGHT is equal to 0, if not it loops up
	
	BRA _Startup
	
	
	
