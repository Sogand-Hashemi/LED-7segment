/*****************************************************
Project : 7segment
Author  : Sogand Hashemi                                            
*****************************************************/

#include <mega16.h>
#include <delay.h>
#define xtal 8000000
int number = 0;
void main(void)
{
	DDRC = 0xff;
	DDRD = 0xff;
	PORTC = 0;
	while (1)
	{
		PORTC = number;
		PORTD = 0b00010101;
		delay_ms(250);
		number++;
		if (number>6)
		{
			number = 0;
			continue;
		}
		PORTC = number;
		PORTD = 0b00001010;
		delay_ms(250);
		number++;
	}
}


