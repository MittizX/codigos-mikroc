#line 1 "C:/Users/Public/Documents/Mikroelektronika/mikroC PRO for PIC/Examples/Practica1.c"
 void main(){

 ADCON1 = 0x07;
 CMCON = 7;

 TRISB=0;
 TRISC=0;
 TRISD=0;
 TRISA=0;





 PORTC=0;
 PORTB=0;
 PORTD=0;
 PORTA=0;








 while(1){


 PORTB=~PORTB;
 PORTC=~PORTC;
 PORTD=~PORTD;
 PORTA=~PORTA;
 Delay_ms(1000);


 }
 }
