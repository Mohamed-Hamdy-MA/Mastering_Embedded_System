/*
 * Clock_Registers.h
 *
 *  Created on: Aug 9, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef CLOCK_REGISTERS_H_
#define CLOCK_REGISTERS_H_

#define RCC_BASE	0x40021000

#pragma pack(1)
typedef struct {
	uint32_t HSION:1;
	uint32_t HSIRDY:1;
	uint32_t :1;
	uint32_t HSITRIM:5;
	uint32_t HSICAL:8;
	uint32_t HSEON:1;
	uint32_t HSERDY:1;
	uint32_t HSEBYP:1;
	uint32_t CSSON:1;
	uint32_t :4;
	uint32_t PLLON:1;
	uint32_t PLLRDY:1;
	uint32_t :6;
}RCC_CR_t;

#pragma pack(1)
typedef struct {
	uint32_t SW:2;
	uint32_t SWS:2;
	uint32_t HPRE:4;
	uint32_t PPRE1:3;
	uint32_t PPRE2:3;
	uint32_t ADC:2;
	uint32_t PLLSRC:1;
	uint32_t PLLXTPRE:1;
	uint32_t PLLMUL:4;
	uint32_t USBPRE:1;
	uint32_t :1;
	uint32_t MCO:3;
	uint32_t :5;
}RCC_CFGR_t;

#pragma pack(1)
typedef struct {
	uint32_t AFIOEN:1;
	uint32_t :1;
	uint32_t IOPAEN:1;
	uint32_t :29;
}RCC_APB2ENR_t;

#endif /* CLOCK_REGISTERS_H_ */
