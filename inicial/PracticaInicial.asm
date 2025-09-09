
_main:

;PracticaInicial.c,1 :: 		void main (){ 			//función principal
;PracticaInicial.c,3 :: 		PORTC=0;
	CLRF       PORTC+0
;PracticaInicial.c,7 :: 		TRISC=0;
	CLRF       TRISC+0
;PracticaInicial.c,11 :: 		while(1){
L_main0:
;PracticaInicial.c,13 :: 		PORTC=~PORTC; //aplica un NOT al puerto invirtiendo los valores.
	COMF       PORTC+0, 1
;PracticaInicial.c,15 :: 		Delay_ms(1000); //Espera un segundo
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;PracticaInicial.c,17 :: 		}
	GOTO       L_main0
;PracticaInicial.c,19 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
