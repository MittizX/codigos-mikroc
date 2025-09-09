
_main:

;Practica1.c,1 :: 		void main(){
;Practica1.c,3 :: 		ADCON1 = 0x07;
	MOVLW      7
	MOVWF      ADCON1+0
;Practica1.c,4 :: 		CMCON  = 7;
	MOVLW      7
	MOVWF      CMCON+0
;Practica1.c,6 :: 		TRISB=0;
	CLRF       TRISB+0
;Practica1.c,7 :: 		TRISC=0; //Configura todo el puerto (RC0, RC1, RC2, RC3, RC4, RC5, RC6 y RC7) C como Salida
	CLRF       TRISC+0
;Practica1.c,8 :: 		TRISD=0;
	CLRF       TRISD+0
;Practica1.c,9 :: 		TRISA=0;
	CLRF       TRISA+0
;Practica1.c,15 :: 		PORTC=0; // Manda un 0 lógico (LOW) a todos los pines del puerto C. en otras palabras apaga todo el puerto.
	CLRF       PORTC+0
;Practica1.c,16 :: 		PORTB=0;
	CLRF       PORTB+0
;Practica1.c,17 :: 		PORTD=0;
	CLRF       PORTD+0
;Practica1.c,18 :: 		PORTA=0;
	CLRF       PORTA+0
;Practica1.c,27 :: 		while(1){                 //Inicia un ciclo infinito
L_main0:
;Practica1.c,30 :: 		PORTB=~PORTB;
	COMF       PORTB+0, 1
;Practica1.c,31 :: 		PORTC=~PORTC;    // "~" Invierte el valor del puerto completo: si está apagado lo enciende; si esta encendido lo apaga.
	COMF       PORTC+0, 1
;Practica1.c,32 :: 		PORTD=~PORTD;
	COMF       PORTD+0, 1
;Practica1.c,33 :: 		PORTA=~PORTA;
	COMF       PORTA+0, 1
;Practica1.c,34 :: 		Delay_ms(1000);
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
;Practica1.c,37 :: 		}
	GOTO       L_main0
;Practica1.c,38 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
