#include <stdint.h>

#define SYSCTL_RCGC2_R			(*((volatile uint32_t*)0x400FE108))
#define GPIO_PORTF_DATA_R		(*((volatile uint32_t*)0x400253FC))
#define GPIO_PORTF_DIR_R		(*((volatile uint32_t*)0x40025400))
#define GPIO_PORTF_DEN_R		(*((volatile uint32_t*)0x4002551C))


volatile char DataArr[]={1,2,3}; //for 3B data section
volatile struct A {
	char ch;
	uint32_t var;
} BssStruct; //for 8B bss section



int main(void)
{
	volatile uint32_t delay_count; //variable for making delay
	//Enable GPIO
	SYSCTL_RCGC2_R = 0x00000020; 
	for (delay_count = 0; delay_count < 200; delay_count++); //wait till GPIO is ready

	GPIO_PORTF_DIR_R |= 1<<3; //direction of bin 3 is output
	GPIO_PORTF_DEN_R |= 1<<3; //bin 3 enabled

	while (1)
	{
		GPIO_PORTF_DATA_R |= 1<<3;
		for (delay_count=0; delay_count<1000; delay_count++);
		GPIO_PORTF_DATA_R &= ~(1<<3);
		for (delay_count=0; delay_count<1000; delay_count++);
	}
	return 0;
}
