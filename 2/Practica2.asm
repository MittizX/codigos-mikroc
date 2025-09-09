
_main:

;Practica2.c,1 :: 		void main(){
;Practica2.c,5 :: 		TRISC=0; //Configura todo el puerto C (RC0, RC1, RC2, RC3, RC4, RC5, RC6 y RC7) como Salida
	CLRF       TRISC+0
;Practica2.c,13 :: 		PORTC=0;                  //Apaga todo el puerto C
	CLRF       PORTC+0
;Practica2.c,17 :: 		PORTC.F0=1;               // Manda un 1 lógico (HIGH) únicamente al pin RC0
	BSF        PORTC+0, 0
;Practica2.c,23 :: 		Delay_ms(5000);           //Espera 5 segundos
	MOVLW      102
	MOVWF      R11+0
	MOVLW      118
	MOVWF      R12+0
	MOVLW      193
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
;Practica2.c,27 :: 		while(1){                 //Inicia un ciclo infinito
L_main1:
;Practica2.c,31 :: 		PORTC.F0=1;
	BSF        PORTC+0, 0
;Practica2.c,33 :: 		PORTC.F1=0;
	BCF        PORTC+0, 1
;Practica2.c,35 :: 		PORTC.F2=1;
	BSF        PORTC+0, 2
;Practica2.c,37 :: 		PORTC.F3=0;
	BCF        PORTC+0, 3
;Practica2.c,39 :: 		PORTC.F4=1;
	BSF        PORTC+0, 4
;Practica2.c,41 :: 		PORTC.F5=0;
	BCF        PORTC+0, 5
;Practica2.c,43 :: 		PORTC.F6=1;
	BSF        PORTC+0, 6
;Practica2.c,45 :: 		PORTC.F7=0;
	BCF        PORTC+0, 7
;Practica2.c,55 :: 		Delay_ms(1000);        // Espera 1 Segundo
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;Practica2.c,57 :: 		PORTC.F0=0;
	BCF        PORTC+0, 0
;Practica2.c,59 :: 		PORTC.F1=1;
	BSF        PORTC+0, 1
;Practica2.c,61 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;Practica2.c,63 :: 		PORTC.F3=1;
	BSF        PORTC+0, 3
;Practica2.c,65 :: 		PORTC.F4=0;
	BCF        PORTC+0, 4
;Practica2.c,67 :: 		PORTC.F5=1;
	BSF        PORTC+0, 5
;Practica2.c,69 :: 		PORTC.F6=0;
	BCF        PORTC+0, 6
;Practica2.c,71 :: 		PORTC.F7=1;
	BSF        PORTC+0, 7
;Practica2.c,81 :: 		Delay_ms(1000);        // Espera un segundo
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
;Practica2.c,85 :: 		}
	GOTO       L_main1
;Practica2.c,87 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
