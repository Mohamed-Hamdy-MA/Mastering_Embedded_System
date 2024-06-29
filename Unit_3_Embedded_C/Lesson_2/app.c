#include "uart.h"

unsigned char str[100]="Learn In Depth <Mohamed Hamdy>";

void main(void)
{
	uart0_tx_string (str);
}