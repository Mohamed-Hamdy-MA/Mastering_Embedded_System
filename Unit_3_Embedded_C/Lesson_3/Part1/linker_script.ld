ENTRY(.vectors)

MEMORY
{
	FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 128k
	SRAM (rwx) : ORIGIN = 0x20000000, LENGTH = 20k
}

SECTIONS
{
	.text : {
			*(.vectors*) /*Expected to be 7*4=28B=1C*/
			*(.text*) /*Depend on code size in main.c and startup.s*/
			*.rodata /*Expected to be 0B*/
	} >FLASH

	.data : {
			*(.data) /*Expected to be 0B*/
		} >FLASH

	.bss : {
			*(.bss) /*Expected to be 0B*/
		} >SRAM
	}