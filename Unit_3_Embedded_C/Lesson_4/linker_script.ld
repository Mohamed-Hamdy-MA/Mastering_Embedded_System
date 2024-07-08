ENTRY(vectors_ArrOfPtrToFunc)

MEMORY
{
	FLASH (rx) : ORIGIN = 0x00000000, LENGTH = 512M
	SRAM (rwx) : ORIGIN = 0x20000000, LENGTH = 512M
}

SECTIONS
{
	.text : {
			*(.vectors*) /*Expected to be 7*4=28B=1C*/
			*(.text*) /*Depend on code size in main.c and startup.c*/
			*.rodata /*Expected to be 0B*/
			_END_text = . ;
	} >FLASH
	

	.data : ALIGN(4) {
			_START_data = . ;
			*(.data) /*Expected to be 0B*/
			. = ALIGN(4);
			_END_data = . ;
		}> SRAM AT>FLASH

	.bss : ALIGN(4) {
			_START_bss = . ;
			*(.bss) /*Expected to be 0B*/
			. = ALIGN(4);
			_END_bss = . ;
		} >SRAM
}	
