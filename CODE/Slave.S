#define __SFR_OFFSET 0x00
#include "avr/io.h"
;------------------------
.global main
;============================================================
main:
;------------------------------------------------------------
    LDI   R17, 0b00111100
    OUT   DDRD, R17       ;set PD2 for o/p
    ;------------------------------------------------------
    LDI   R17, (1<<SPE)
    OUT   SPCR, R17       ;enable SPI as slave
;------------------------------------------------------------
agn:  IN    R18, SPSR
      SBRS  R18, SPIF       ;wait for byte reception
      RJMP  agn             ;to complete
      ;------------------------------------------------------
      IN    R18, SPDR       ;i/p byte from data register
      ;------------------------------------------------------
      CPI R18, 10
      BRCS STATE0
      RJMP STATE1
;===============================================================
STATE0:
  SBI PORTD, 5 ; menyalakan led pertama
  CBI PORTD, 4 ; mematikan led kedua
  SBI PORTD, 3 ; menyalakan buzzer pertama
  SBI PORTD, 2 ; menyalakan buzzer kedua
  RJMP agn
;------------------------------------------------------------------
STATE1:
  SBI PORTD, 5 ; menyalakan led pertama
  SBI PORTD, 4 ; menyalakan led kedua
  SBI PORTD, 3 ; menyalakan buzzer pertama
  CBI PORTD, 2 ; mematikan buzzer kedua
  RJMP agn
;===============================================================
