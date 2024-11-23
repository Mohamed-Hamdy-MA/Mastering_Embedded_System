################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../HAL/Buzzer.c \
../HAL/EEPROM_SlaveI2C.c \
../HAL/EEPROM_SlaveSPI.c \
../HAL/IRSensor.c \
../HAL/Keypad.c \
../HAL/LCD2x16.c \
../HAL/LED.c \
../HAL/ServoMotor_PWM.c 

OBJS += \
./HAL/Buzzer.o \
./HAL/EEPROM_SlaveI2C.o \
./HAL/EEPROM_SlaveSPI.o \
./HAL/IRSensor.o \
./HAL/Keypad.o \
./HAL/LCD2x16.o \
./HAL/LED.o \
./HAL/ServoMotor_PWM.o 

C_DEPS += \
./HAL/Buzzer.d \
./HAL/EEPROM_SlaveI2C.d \
./HAL/EEPROM_SlaveSPI.d \
./HAL/IRSensor.d \
./HAL/Keypad.d \
./HAL/LCD2x16.d \
./HAL/LED.d \
./HAL/ServoMotor_PWM.d 


# Each subdirectory must supply rules for building sources it contributes
HAL/%.o HAL/%.su HAL/%.cyclo: ../HAL/%.c HAL/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C6Tx -c -I../Inc -I"F:/STUDY/COURSES/Mastering Embedded System Diploma/Unit_14_ARM/ARM/HAL/Inc" -I"F:/STUDY/COURSES/Mastering Embedded System Diploma/Unit_14_ARM/ARM/MCU/Inc" -O0 -ffunction-sections -fdata-sections -Wall -gdwarf-2 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-HAL

clean-HAL:
	-$(RM) ./HAL/Buzzer.cyclo ./HAL/Buzzer.d ./HAL/Buzzer.o ./HAL/Buzzer.su ./HAL/EEPROM_SlaveI2C.cyclo ./HAL/EEPROM_SlaveI2C.d ./HAL/EEPROM_SlaveI2C.o ./HAL/EEPROM_SlaveI2C.su ./HAL/EEPROM_SlaveSPI.cyclo ./HAL/EEPROM_SlaveSPI.d ./HAL/EEPROM_SlaveSPI.o ./HAL/EEPROM_SlaveSPI.su ./HAL/IRSensor.cyclo ./HAL/IRSensor.d ./HAL/IRSensor.o ./HAL/IRSensor.su ./HAL/Keypad.cyclo ./HAL/Keypad.d ./HAL/Keypad.o ./HAL/Keypad.su ./HAL/LCD2x16.cyclo ./HAL/LCD2x16.d ./HAL/LCD2x16.o ./HAL/LCD2x16.su ./HAL/LED.cyclo ./HAL/LED.d ./HAL/LED.o ./HAL/LED.su ./HAL/ServoMotor_PWM.cyclo ./HAL/ServoMotor_PWM.d ./HAL/ServoMotor_PWM.o ./HAL/ServoMotor_PWM.su

.PHONY: clean-HAL

