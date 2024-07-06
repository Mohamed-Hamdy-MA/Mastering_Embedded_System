PROJECT_NAME=Learn_In_Depth
CC=arm-none-eabi-
CFLAGS=-mcpu=arm926ej-s -g
INCS=-I .
LIBS=
C_OBJ_SRC=$(wildcard *.c)
C_OBJ=$(C_OBJ_SRC:.c=.o)
S_OBJ_SRC=$(wildcard *.s)
S_OBJ=$(S_OBJ_SRC:.s=.o)

build: $(PROJECT_NAME).bin
	@echo "===============Successful Build==============="

%.o: %.c
	$(CC)gcc.exe $(CFLAGS) -c $(INCS) $< -o $@

%.o: %.s
	$(CC)as.exe $(CFLAGS) $< -o $@

$(PROJECT_NAME).elf: $(C_OBJ) $(S_OBJ)
	$(CC)ld.exe --script linker_script.ld $(LIBS) $(C_OBJ) $(S_OBJ) -o $(PROJECT_NAME).elf -Map map_file.map

$(PROJECT_NAME).bin: $(PROJECT_NAME).elf
	$(CC)objcopy.exe -O binary $< $@

assembly:
	$(CC)objdump.exe -D $(PROJECT_NAME).elf > $(PROJECT_NAME).s
	@echo "===============Generated Assembly from .elf file==============="

clean_all:
	rm *.o *.elf *.bin *.map $(PROJECT_NAME).s
clean_exe:
	rm *.elf *.bin *.map
