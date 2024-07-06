#include <stdint.h>

#define RCC_BASE		0x40021000
#define PORTA_BASE		0x40010800

#define RCC_APB2ENR		*(volatile uint32_t*)(RCC_BASE+0x18)
#define GPIOA_CRH		*(volatile uint32_t*)(PORTA_BASE+0x04)
#define GPIOA_ODR		*(volatile uint32_t*)(PORTA_BASE+0x0C)

volatile char DataArr[]={1,2,3}; //for 3B data section
volatile struct A {
	char ch;
	uint32_t var;
} BssStruct; //for 8B bss section



int main(void)
{
	RCC_APB2ENR |=1<<2;
	GPIOA_CRH &=0xFF0FFFFF;
	GPIOA_CRH |=0x00200000;
	while (1)
	{
		GPIOA_ODR |=1<<13;
		for (int i=0; i<5000; i++);
		GPIOA_ODR &=~(1<<13);
		for (int i=0; i<5000; i++);
	}
	return 0;
}
