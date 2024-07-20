#include <stdint.h>
#define NULL (void*)0

extern int main(void);
void Default_handler(void);

static uint32_t stack_top[256]; //256*4=1024 B--->0x400 B
void Reset_handler(void);
void NMI_handler(void)__attribute__((weak,alias("Default_handler")));
void HW_fault_handler(void)__attribute__((weak,alias("Default_handler")));
void MM_fault_handler(void)__attribute__((weak,alias("Default_handler")));
void Bus_fault_handler(void)__attribute__((weak,alias("Default_handler")));
void Usage_fault_handler(void)__attribute__((weak,alias("Default_handler")));

void (*const vectors_ArrOfPtrToFunc[])(void)__attribute__((section(".vectors")))={
	(void(*)(void)) ((uint32_t)stack_top+sizeof(stack_top)),
	&Reset_handler,
	&NMI_handler,
	&HW_fault_handler,
	&MM_fault_handler,
	&Bus_fault_handler,
	&Usage_fault_handler,
};

extern uint32_t _END_text;
extern uint32_t _START_data;
extern uint32_t _END_data;
extern uint32_t _START_bss;
extern uint32_t _END_bss;

void Reset_handler(void){
	//uint32_t stak_top_debug=(uint32_t)vectors_ArrOfPtrToFunc[0];
	uint32_t section_size;
	uint8_t *p_src, *p_dist;
	uint32_t i=0;

	//copy .data to SRAM
	section_size=(uint8_t*)&_END_data - (uint8_t*)&_START_data;
	p_src=(uint8_t*)&_END_text;
	p_dist=(uint8_t*)&_START_data;
	for (i = 0; i < section_size; i++, p_dist++, p_src++)
	{
		*p_dist=*p_src;
	}

	//create .bss in SRAM with 0
	section_size=(uint8_t*)&_END_bss - (uint8_t*)&_START_bss;
	p_src=NULL;
	p_dist=(uint8_t*)&_START_bss;
	for (i = 0; i < section_size; i++, p_dist++)
	{
		*p_dist=0;
	}

	//branch to main
	main();
}

void Default_handler(void){
	Reset_handler();
}
