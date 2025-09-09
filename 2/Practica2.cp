#line 1 "C:/Users/Public/Documents/Mikroelektronika/mikroC PRO for PIC/Examples/Practica2.c"
void main(){



 TRISC=0;







 PORTC=0;



 PORTC.F0=1;





 Delay_ms(5000);



 while(1){



 PORTC.F0=1;

 PORTC.F1=0;

 PORTC.F2=1;

 PORTC.F3=0;

 PORTC.F4=1;

 PORTC.F5=0;

 PORTC.F6=1;

 PORTC.F7=0;









 Delay_ms(1000);

 PORTC.F0=0;

 PORTC.F1=1;

 PORTC.F2=0;

 PORTC.F3=1;

 PORTC.F4=0;

 PORTC.F5=1;

 PORTC.F6=0;

 PORTC.F7=1;









 Delay_ms(1000);



 }

}
