#line 1 "C:/Users/Public/Documents/Mikroelektronika/mikroC PRO for PIC/Examples/PracticaInicial.c"
void main (){

PORTC=0;



TRISC=0;



while(1){

PORTC=~PORTC;

Delay_ms(1000);

}

}
