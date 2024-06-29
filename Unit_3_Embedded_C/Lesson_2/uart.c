#include "uart.h"

#define UARTDR *((volatile unsigned int*)(unsigned int*)0x101F1000)

void uart0_tx_string (unsigned char* pstr)
{
	while (*pstr != '\0')
	{
		UARTDR=(unsigned int)(*pstr);
		pstr++;
	}

}