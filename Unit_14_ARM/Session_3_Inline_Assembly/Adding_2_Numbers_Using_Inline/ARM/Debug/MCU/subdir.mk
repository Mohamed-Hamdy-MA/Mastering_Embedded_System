################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MCU/STM32F103x6_EXTI_Driver.c \
../MCU/STM32F103x6_GPIO_Driver.c \
../MCU/STM32F103x6_GPTIM_Driver.c \
../MCU/STM32F103x6_I2C_Driver.c \
../MCU/STM32F103x6_RCC_Driver.c \
../MCU/STM32F103x6_SPI_Driver.c \
../MCU/STM32F103x6_USART_Driver.c 

OBJS += \
./MCU/STM32F103x6_EXTI_Driver.o \
./MCU/STM32F103x6_GPIO_Driver.o \
./MCU/STM32F103x6_GPTIM_Driver.o \
./MCU/STM32F103x6_I2C_Driver.o \
./MCU/STM32F103x6_RCC_Driver.o \
./MCU/STM32F103x6_SPI_Driver.o \
./MCU/STM32F103x6_USART_Driver.o 

C_DEPS += \
./MCU/STM32F103x6_EXTI_Driver.d \
./MCU/STM32F103x6_GPIO_Driver.d \
./MCU/STM32F103x6_GPTIM_Driver.d \
./MCU/STM32F103x6_I2C_Driver.d \
./MCU/STM32F103x6_RCC_Driver.d \
./MCU/STM32F103x6_SPI_Driver.d \
./MCU/STM32F103x6_USART_Driver.d 


# Each subdirectory must supply rules for building sources it contributes
MCU/%.o MCU/%.su MCU/%.cyclo: ../MCU/%.c MCU/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C6Tx -c -I../Inc -I"F:/STUDY/COURSES/Mastering Embedded System Diploma/Unit_14_ARM/ARM/HAL/Inc" -I"F:/STUDY/COURSES/Mastering Embedded System Diploma/Unit_14_ARM/ARM/MCU/Inc" -O0 -ffunction-sections -fdata-sections -Wall -gdwarf-2 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-MCU

clean-MCU:
	-$(RM) ./MCU/STM32F103x6_EXTI_Driver.cyclo ./MCU/STM32F103x6_EXTI_Driver.d ./MCU/STM32F103x6_EXTI_Driver.o ./MCU/STM32F103x6_EXTI_Driver.su ./MCU/STM32F103x6_GPIO_Driver.cyclo ./MCU/STM32F103x6_GPIO_Driver.d ./MCU/STM32F103x6_GPIO_Driver.o ./MCU/STM32F103x6_GPIO_Driver.su ./MCU/STM32F103x6_GPTIM_Driver.cyclo ./MCU/STM32F103x6_GPTIM_Driver.d ./MCU/STM32F103x6_GPTIM_Driver.o ./MCU/STM32F103x6_GPTIM_Driver.su ./MCU/STM32F103x6_I2C_Driver.cyclo ./MCU/STM32F103x6_I2C_Driver.d ./MCU/STM32F103x6_I2C_Driver.o ./MCU/STM32F103x6_I2C_Driver.su ./MCU/STM32F103x6_RCC_Driver.cyclo ./MCU/STM32F103x6_RCC_Driver.d ./MCU/STM32F103x6_RCC_Driver.o ./MCU/STM32F103x6_RCC_Driver.su ./MCU/STM32F103x6_SPI_Driver.cyclo ./MCU/STM32F103x6_SPI_Driver.d ./MCU/STM32F103x6_SPI_Driver.o ./MCU/STM32F103x6_SPI_Driver.su ./MCU/STM32F103x6_USART_Driver.cyclo ./MCU/STM32F103x6_USART_Driver.d ./MCU/STM32F103x6_USART_Driver.o ./MCU/STM32F103x6_USART_Driver.su

.PHONY: clean-MCU

