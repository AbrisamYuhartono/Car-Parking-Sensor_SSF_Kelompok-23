#define __SFR_OFFSET 0x00
#include "avr/io.h"
;------------------------
.global main
;==============================================================
main:
.equ SCK, 5
.equ MOSI, 3
.equ SS, 2
;--------------------------------------------------------------
    LDI R17, (1<<MOSI)|(1<<SCK)|(1<<SS)
    OUT DDRB, R17 ;set MOSI, SCK, SS as o/p
;--------------------------------------------------------
    LDI R17, (1<<SPE)|(1<<MSTR)|(1<<SPI2X)|(1<<SPR0)
    OUT SPCR, R17 ;enable SPI as master, fsck=fosc/8, SPI mode 0
;--------------------------------------------------------
agn:SBI   PORTB, 1
    LDI   R17, 0b00001100
    OUT   DDRD, R17       ;set PD2 for o/p
    SBI   DDRB, 1         ;pin PB1 as o/p (Trigger)
    CBI   DDRB, 0         ;pin PB0 as i/p (Echo)
    RCALL delay_timer0
    CBI   PORTB, 1        ;send 10us high pulse to sensor
    ;-----------------------------------------------------------
    RCALL echo_PW         ;compute Echo pulse width count
    ;-----------------------------------------------------------
    RCALL byte2decimal    ;covert & display on MAX7219
    RCALL delay_ms        ;call delay
    RJMP agn
    ;-----------------------------------------------------------
send: CBI PORTB, SS ;enable slave device
      OUT SPDR, R18 ;transmit byte to slave
    ;--------------------------------------------------------
loop: 
    IN R19, SPSR
    SBRS R19, SPIF ;wait for byte transmission
    RJMP loop ;to complete
    ;--------------------------------------------------------
    SBI PORTB, SS ;disable slave device
    RET
;=================================================================
echo_PW:
;-------
    LDI   R20, 0b00000000
    STS   TCCR1A, R20     ;Timer 1 normal mode
    LDI   R20, 0b11000101 ;set for rising edge detection &
    STS   TCCR1B, R20     ;prescaler=1024, noise cancellation ON
    ;-----------------------------------------------------------
l1: IN    R21, TIFR1
    SBRS  R21, ICF1
    RJMP  l1              ;loop until rising edge is detected
    ;-----------------------------------------------------------
    LDS   R16, ICR1L      ;store count value at rising edge
    ;-----------------------------------------------------------
    OUT   TIFR1, R21      ;clear flag for falling edge detection
    LDI   R20, 0b10000101
    STS   TCCR1B, R20     ;set for falling edge detection
    ;-----------------------------------------------------------
l2: IN    R21, TIFR1
    SBRS  R21, ICF1
    RJMP  l2              ;loop until falling edge is detected
    ;-----------------------------------------------------------
    LDS   R28, ICR1L      ;store count value at falling edge
    ;-----------------------------------------------------------
    SUB   R28, R16        ;count diff R22 = R22 - R16
    OUT   TIFR1, R21      ;clear flag for next sensor reading
    RET
;===============================================================
byte2decimal:
;------------
      CLR   R26             ;set counter1, initial value 0
      CLR   R27             ;set counter2, initial value 0
      CLR   R18
      ;--------------------------------------------------------
l70:  CPI   R28, 100        ;compare R28 with 100
Ret:  BRMI  l80             ;jump when R28 < 100
      INC   R26             ;increment counter1 by 1
      SUBI  R28, 100        ;R28 = R28 - 100
      RJMP  l70
      ;--------------------------------------------------------
l80:  CPI   R28, 30         ;compare R28 with 30
      BRMI  dsp             ;jump when R28 < 30
      INC   R27             ;increment counter2 by 1
      SUBI  R28, 30         ;R28 = R28 - 30
      RJMP  l80
      ;--------------------------------------------------------  
dsp:  MOV   R18, R28        ;sebd R27 to R18
      RCALL send
      RET
;===============================================================
;delay_subroutine
;===============================================================
delay_timer0:             ;10 usec delay via Timer 0
;------------
    CLR   R20
    OUT   TCNT0, R20      ;initialize timer0 with count=0
    LDI   R20, 20
    OUT   OCR0A, R20      ;OCR0 = 20
    LDI   R20, 0b00001010
    OUT   TCCR0B, R20     ;timer0: CTC mode, prescaler 8
    ;-----------------------------------------------------------
l0: IN    R20, TIFR0      ;get TIFR0 byte & check
    SBRS  R20, OCF0A      ;if OCF0=1, skip next instruction
    RJMP  l0              ;else, loop back & check OCF0 flag
    ;-----------------------------------------------------------
    CLR   R20
    OUT   TCCR0B, R20     ;stop timer0
    ;-----------------------------------------------------------
    LDI   R20, (1<<OCF0A)
    OUT   TIFR0, R20      ;clear OCF0 flag
    RET
;===============================================================
delay_ms:
;--------
    LDI   R21, 255
l6: LDI   R22, 255
l7: LDI   R23, 50
l8: DEC   R23
    BRNE  l8
    DEC   R22
    BRNE  l7
    DEC   R21
    BRNE  l6
    RET
;============================================================================
delay_2s:               ;delay 2s
    LDI   R21, 255      ;LDI 255 into R21
l16: LDI   R22, 255      ;LDI 255 into R22
l17: LDI   R23, 164      ;LDI 164 into R23
l18: DEC   R23           ;Decrement R23
    BRNE  l8            ;Branch if not equal to zero to label l8
    DEC   R22           ;Decrement R22
    BRNE  l7            ;Branch if not equal to zero to label l7
    DEC   R21           ;Decrement R21
    BRNE  l6            ;Branch if not equal to zero to label l6
    RET                 ;Return from subroutine