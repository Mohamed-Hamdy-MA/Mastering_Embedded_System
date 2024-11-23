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


#define Switch_To_UnPrivileged		__asm volatile (	"MRS r0, CONTROL	\n"		\
														"ORR r0, r0, #0x1	\n"		\
														"MSR CONTROL, r0		"	\
														:							\
														:							\
														: "r0", "cc"	)

#define Switch_To_Privileged		__asm volatile (	"MRS r0, CONTROL			\n"		\
														"AND r0, r0, #0xFFFFFFFE	\n"		\
														"MSR CONTROL, r0				"	\
														:									\
														:									\
														: "r0", "cc"	)

#define Switch_To_PSP				__asm volatile (	"MRS r0, CONTROL	\n"		\
														"ORR r0, r0, #0x2	\n"		\
														"MSR CONTROL, r0		"	\
														:							\
														:							\
														: "r0", "cc"	)

#define Switch_To_MSP				__asm volatile (	"MRS r0, CONTROL			\n"		\
														"AND r0, r0, #0xFFFFFFFD	\n"		\
														"MSR CONTROL, r0				"	\
														:									\
														:									\
														: "r0", "cc"	)

#define Set_PSP_Address(Address)	__asm volatile (	"MOV r0, %0			\n"		\
														"MSR PSP, r0			"	\
														:							\
														:"r" (Address)				\
														: "r0", "cc"	)

#define Set_MSP_Address(Address)	__asm volatile (	"MOV r0, %0			\n"		\
														"MSR MSP, r0			"	\
														:							\
														:"r" (Address)				\
														: "r0", "cc"	)

#define MSP_StackSize		512U		// 512 bytes = 0x200
#define TaskA_StackSize		100U		// 100 bytes = 0x64
#define TaskB_StackSize		100U		// 100 bytes = 0x64

extern uint32_t _estack;
uint32_t _sMSP = (uint32_t) &_estack;

uint8_t TaskAFlag = 0;
int32_t TaskA(int32_t a, int32_t b, int32_t c, int32_t d)
{
	return a+b+c+d;
}

uint8_t TaskBFlag = 0;
int32_t TaskB(int32_t a, int32_t b, int32_t c, int32_t d, int32_t e)
{
	return a+b+c+d+e;
}

uint8_t irqFlag = 1;
void myPB9EXTIHandler(void)
{
	if (irqFlag == 1)
	{
		irqFlag = 0;
		TaskAFlag = 1;
	}
	else
	{
		irqFlag = 1;
		TaskBFlag = 1;
	}
}

void SVC_Handler(void)
{
	Switch_To_Privileged;
}

void mainOS(void)
{
	// MSP
	uint32_t _eMSP = (_sMSP - MSP_StackSize);

	// TaskA
	uint32_t _sTaskAStack = (_eMSP - 8);
	uint32_t _eTaskAStack = (_sTaskAStack - TaskA_StackSize);

	// TaskB
	uint32_t _sTaskBStack = (_eTaskAStack - 8);
	uint32_t _eTaskBStack = (_sTaskBStack - TaskB_StackSize);

	while (1)
	{
		if (TaskAFlag == 1)
		{
			TaskAFlag = 0;

			// Switch Context (Write TaskA stack -return- address to PSP, Switch SP to PSP, Switch to UnPrivileged, Call TaskA)
			Set_PSP_Address(_sTaskAStack);
			Switch_To_PSP;
			Switch_To_UnPrivileged;
			TaskA(1, 2, 3, 4);

			// Switch Restore (Switch to Privileged, Switch SP to MSP)
			__asm volatile ("SVC #0x3");	//--> SVC_Handler [handler mode:  Switch to Privileged inside SVC_Handler()]
			Switch_To_MSP;
		}
		else if (TaskBFlag == 1)
		{
			TaskBFlag = 0;

			// Switch Context (Write TaskB stack -return- address to PSP, Switch SP to PSP, Switch to UnPrivileged, Call TaskB)
			Set_PSP_Address(_sTaskBStack);
			Switch_To_PSP;
			Switch_To_UnPrivileged;
			TaskB(1, 2, 3, 4, 5);

			// Switch Restore (Switch to Privileged, Switch SP to MSP)
			__asm volatile ("SVC #0x3");	//--> SVC_Handler [handler mode:  Switch to Privileged inside SVC_Handler()]
			Switch_To_MSP;
		}
	}
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

	mainOS();

	while(1)
	{
	}
}