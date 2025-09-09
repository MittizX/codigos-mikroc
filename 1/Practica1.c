 void main(){

      ADCON1 = 0x07;
      CMCON  = 7;

      TRISB=0;
      TRISC=0; //Configura todo el puerto (RC0, RC1, RC2, RC3, RC4, RC5, RC6 y RC7) C como Salida
      TRISD=0;
      TRISA=0;
      // TRISC=0x00;            //Es el equivalente a la línea anterior, pero asignándole valor Hexadecimales
      // TRISC=0b00000000;      //Es otro equivalente, pero asignándole valor Binario



      PORTC=0; // Manda un 0 lógico (LOW) a todos los pines del puerto C. en otras palabras apaga todo el puerto.
      PORTB=0;
      PORTD=0;
      PORTA=0;
      //PORTC=0x00;             //Es el equivalente a la línea anterior, pero asignándole valor Hexadecimales

      //PORTC=0b00000000;       //Es otro equivalente, pero asignándole valor Binario





      while(1){                 //Inicia un ciclo infinito


               PORTB=~PORTB;
               PORTC=~PORTC;    // "~" Invierte el valor del puerto completo: si está apagado lo enciende; si esta encendido lo apaga.
               PORTD=~PORTD;
               PORTA=~PORTA;
               Delay_ms(1000);


               }
                }