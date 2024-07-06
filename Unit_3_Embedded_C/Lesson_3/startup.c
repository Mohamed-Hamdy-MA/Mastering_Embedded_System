#include <stdint.h>
#define NULL (void*)0

extern int main(void);
void Default_handler(void);

extern uint32_t stack_top;
void Reset_handler(void);
void NMI_handler(void)__attribute__((weak,alias("Default_handler")));
void HW_fault_handler(void)__attribute__((weak,alias("Default_handler")));
void MM_fault_handler(void)__attribute__((weak,alias("Default_handler")));
void Bus_fault_handler(void)__attribute__((weak,alias("Default_handler")));
void Usage_fault_handler(void)__attribute__((weak,alias("Default_handler")));

uint32_t vectors[]__attribute__((section(".vectors")))={
	(uint32_t) &stack_top,
	(uint32_t) &Reset_handler,
	(uint32_t) &NMI_handler,
	(uint32_t) &HW_fault_handler,
	(uint32_t) &MM_fault_handler,
	(uint32_t) &Bus_fault_handler,
	(uint32_t) &Usage_fault_handler,
};

extern uint32_t _END_text;
extern uint32_t _START_data;
extern uint32_t _END_data;
extern uint32_t _START_bss;
extern uint32_t _END_bss;

void Reset_handler(void){

	uint32_t section_size;
	uint8_t *p_src, *p_dist;

	//copy .data to SRAM
	section_size=(uint8_t*)&_END_data - (uint8_t*)&_START_data;
	p_src=(uint8_t*)&_END_text;
	p_dist=(uint8_t*)&_START_data;
	for (int i = 0; i < section_size; i++, p_dist++, p_src++)
	{
		*p_dist=*p_src;
	}

	//create .bss in SRAM with 0
	section_size=(uint8_t*)&_END_bss - (uint8_t*)&_START_bss;
	p_src=NULL;
	p_dist=(uint8_t*)&_START_bss;
	for (int i = 0; i < section_size; i++, p_dist++, p_src++)
	{
		*p_dist=0;
	}

	//branch to main
	main();
}

void Default_handler(void){
	Reset_handler();
}
