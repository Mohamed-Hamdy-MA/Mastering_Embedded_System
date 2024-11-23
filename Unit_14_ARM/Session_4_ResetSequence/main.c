/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Auto-generated by STM32CubeIDE
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * Copyright (c) 2024 STMicroelectronics.
 * All rights reserved.
 *
 * This software is licensed under terms that can be found in the LICENSE file
 * in the root directory of this software component.
 * If no LICENSE file comes with this software, it is provided AS-IS.
 *
 ******************************************************************************
 */

#include "STM32F103x6.h"
#include "STM32F103x6_GPIO_Driver.h"
#include "STM32F103x6_EXTI_Driver.h"

#if !defined(__SOFT_FP__) && defined(__ARM_FP)
#warning "FPU is not initialized, but the project is compiling for an FPU. Please initialize the FPU before use."
#endif


typedef enum
{
	Privileged,
	NonPrivileged,
}CPU_AccessLevel_ENUM_t;

void Switch_CPU_AccessLevel(CPU_AccessLevel_ENUM_t AccessLevel)
{
	switch (AccessLevel)
	{
	case NonPrivileged:

		// Clear bit 0 nPRIV of CPU CONTROL register.
		__asm volatile (	"MRS r0, CONTROL	\n"
							"ORR r0, r0, #0x1	\n"
							"MSR CONTROL, r0		"
							:
							:
							: "r0", "cc"	);

		break;

	case Privileged:

		// Set bit 0 nPRIV of CPU CONTROL register.
		__asm volatile (	"MRS r0, CONTROL			\n"
							"AND r0, r0, #0xFFFFFFFE	\n"
							"MSR CONTROL, r0				"
							:
							:
							: "r0", "cc"	);

		break;
	}
}

void myPB9EXTIHandler()
{
	__asm(	"nop\n"
			"nop\n"	);

	Switch_CPU_AccessLevel(Privileged);

	__asm(	"nop\n"
			"nop\n"	);

	MCAL_GPIO_TogglePin(GPIOA, GPIO_PinNumber_13); //Toggle GPIOA.13
}

void clock_init()
{
	RCC_GPIOA_CLK_EN(); //Enable PORTA Clock
	RCC_GPIOB_CLK_EN(); //Enable PORTB Clock
	RCC_AFIO_CLK_EN();	//Enable AFIO Clock
}
void GPIO_init()
{
	EXTI_Config_t myextiConfig;
	GPIO_PinConfig_t mypinConfig;

	//PB.9 EXTI.
	myextiConfig.EXTI_Pin = PB9_EXTI9;
	myextiConfig.EXTI_Trigger = EXTI_Trigger_RISING;
	myextiConfig.EXTI_EN_OR_DIS = EXTI_ENABLED;
	myextiConfig.ptr_CallbackFUN = &myPB9EXTIHandler;
	MCAL_EXTI_Init(&myextiConfig);

	//PA.13 General purpose output push-pull, max speed 2 MHz.
	mypinConfig.GPIO_PinNumber = GPIO_PinNumber_13;
	mypinConfig.GPIO_PinMode = GPIO_PinMode_Output_PUSHPULL;
	mypinConfig.GPIO_PinSpeed = GPIO_PinSpeed_2MHz;
	MCAL_GPIO_InitPin(GPIOA, &mypinConfig);

	//PA.14 General purpose output push-pull, max speed 2 MHz.
	mypinConfig.GPIO_PinNumber = GPIO_PinNumber_14;
	mypinConfig.GPIO_PinMode = GPIO_PinMode_Output_PUSHPULL;
	mypinConfig.GPIO_PinSpeed = GPIO_PinSpeed_2MHz;
	MCAL_GPIO_InitPin(GPIOA, &mypinConfig);
}


int main(void)
{
	clock_init();
	GPIO_init();

	__asm(	"nop\n"
			"nop\n"	);

	Switch_CPU_AccessLevel(NonPrivileged);

	__asm(	"nop\n"
			"nop\n"	);

	while(1)
	{
		MCAL_GPIO_TogglePin(GPIOA, GPIO_PinNumber_14); //Toggle GPIOA.13
	}
}
