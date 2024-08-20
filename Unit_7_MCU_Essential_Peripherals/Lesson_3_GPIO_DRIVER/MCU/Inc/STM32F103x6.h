/*
 * STM32F103x6.h
 *
 *  Created on: Aug 18, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef INC_STM32F103X6_H_
#define INC_STM32F103X6_H_


//==============================
//Includes
//==============================
#include <stdlib.h>
#include <stdint.h>


//==============================
//Base addresses for Memories
//==============================
#define FLASH_BASE				0x08000000
#define SYSTEM_MEMORY_BASE		0x1FFFF000
#define SRAM_BASE				0x20000000

//==============================
//Base addresses for BUS Peripherals
//==============================

//-------InternalCortexM------
#define M3_INTERNAL_PERIPHERALS	0xE0000000

//-------------AHB------------
//#define FSMC_BASE       0xA0000000
//#define USB_OTG_FS_BASE 0x50000000
//#define ETHERNET_BASE   0x40028000
//#define CRC_BASE        0x40023000
//#define FLASH_IF_BASE   0x40022000
#define RCC_BASE        0x40021000
//#define DMA2_BASE       0x40020400
//#define DMA1_BASE       0x40020000
//#define SDIO_BASE       0x40018000

//-------------APB2-------------
//#define TIM11_BASE     0x40015400
//#define TIM10_BASE     0x40015000
//#define TIM9_BASE      0x40014C00
//#define ADC3_BASE      0x40013C00
//#define USART1_BASE    0x40013800
//#define TIM8_BASE      0x40013400
//#define SPI1_BASE      0x40013000
//#define TIM1_BASE      0x40012C00
//#define ADC2_BASE      0x40012800
//#define ADC1_BASE      0x40012400
//#define GPIOG_BASE     0x40012000	//NOT Included in STM32F103x6
//#define GPIOF_BASE     0x40011C00	//NOT Included in STM32F103x6
//#define GPIOE_BASE     0x40011800	//NOT Included in STM32F103x6
#define GPIOD_BASE     0x40011400
#define GPIOC_BASE     0x40011000
#define GPIOB_BASE     0x40010C00
#define GPIOA_BASE     0x40010800
#define EXTI_BASE      0x40010400
#define AFIO_BASE      0x40010000

//-------------APB1-------------
//#define DAC_BASE       0x40007400
//#define PWR_BASE       0x40007000
//#define BKP_BASE       0x40006C00
//#define bxCAN1_BASE    0x40006400
//#define bxCAN2_BASE    0x40006800
//#define CAN_SRAM_BASE  0x40006000
//#define USB_FS_BASE    0x40005C00
//#define I2C2_BASE      0x40005800
//#define I2C1_BASE      0x40005400
//#define UART5_BASE     0x40005000
//#define UART4_BASE     0x40004C00
//#define USART3_BASE    0x40004800
//#define USART2_BASE    0x40004400
//#define SPI3_I2S_BASE  0x40003C00
//#define SPI2_I2S_BASE  0x40003800
//#define IWDG_BASE      0x40003000
//#define WWDG_BASE      0x40002C00
//#define RTC_BASE       0x40002800
//#define TIM14_BASE     0x40002000
//#define TIM13_BASE     0x40001C00
//#define TIM12_BASE     0x40001800
//#define TIM7_BASE      0x40001400
//#define TIM6_BASE      0x40001000
//#define TIM5_BASE      0x40000C00
//#define TIM4_BASE      0x40000800
//#define TIM3_BASE      0x40000400
//#define TIM2_BASE      0x40000000

//==============================
//Peripheral register:
//==============================

//-------------RCC-------------
typedef struct {
	volatile uint32_t RCC_CR;         // Clock control register (Offset: 0x00)
	volatile uint32_t RCC_CFGR;       // Clock configuration register (Offset: 0x04)
	volatile uint32_t RCC_CIR;        // Clock interrupt register (Offset: 0x08)
	volatile uint32_t RCC_APB2RSTR;   // APB2 peripheral reset register (Offset: 0x0C)
	volatile uint32_t RCC_APB1RSTR;   // APB1 peripheral reset register (Offset: 0x10)
	volatile uint32_t RCC_AHBENR;     // AHB peripheral clock enable register (Offset: 0x14)
	volatile uint32_t RCC_APB2ENR;    // APB2 peripheral clock enable register (Offset: 0x18)
	volatile uint32_t RCC_APB1ENR;    // APB1 peripheral clock enable register (Offset: 0x1C)
	volatile uint32_t RCC_BDCR;       // Backup domain control register (Offset: 0x20)
	volatile uint32_t RCC_CSR;        // Control/status register (Offset: 0x24)
} RCC_REG_t;

//-------------GPIOx-------------
typedef struct {
	volatile uint32_t GPIOx_CRL;   // Port configuration register low (Offset: 0x00)
	volatile uint32_t GPIOx_CRH;   // Port configuration register high (Offset: 0x04)
	volatile uint32_t GPIOx_IDR;   // Port input data register (Offset: 0x08)
	volatile uint32_t GPIOx_ODR;   // Port output data register (Offset: 0x0C)
	volatile uint32_t GPIOx_BSRR;  // Port bit set/reset register (Offset: 0x10)
	volatile uint32_t GPIOx_BRR;   // Port bit reset register (Offset: 0x14)
	volatile uint32_t GPIOx_LCKR;  // Port configuration lock register (Offset: 0x18)
} GPIOx_REG_t;

//-------------EXTI-------------
typedef struct {
	volatile uint32_t EXTI_IMR;      // Interrupt mask register (Offset: 0x00)
	volatile uint32_t EXTI_EMR;      // Event mask register (Offset: 0x04)
	volatile uint32_t EXTI_RTSR;     // Rising trigger selection register (Offset: 0x08)
	volatile uint32_t EXTI_FTSR;     // Falling trigger selection register (Offset: 0x0C)
	volatile uint32_t EXTI_SWIER;    // Software interrupt event register (Offset: 0x10)
	volatile uint32_t EXTI_PR;       // Pending register (Offset: 0x14)
} EXTI_REG_t;

//-------------AFIO-------------
typedef struct {
	volatile uint32_t AFIO_EVCR;      // Event control register (Offset: 0x00)
	volatile uint32_t AFIO_MAPR;      // Remap and debug I/O configuration register 1 (Offset: 0x04)
	volatile uint32_t AFIO_EXTICR1;   // External interrupt configuration register 1 (Offset: 0x08)
	volatile uint32_t AFIO_EXTICR2;   // External interrupt configuration register 2 (Offset: 0x0C)
	volatile uint32_t AFIO_EXTICR3;   // External interrupt configuration register 3 (Offset: 0x10)
	volatile uint32_t AFIO_EXTICR4;   // External interrupt configuration register 4 (Offset: 0x14)
	volatile uint32_t RESERVED0;		 //												(Offset: 0x18)
	volatile uint32_t AFIO_MAPR2;     // Remap and debug I/O configuration register 2 (Offset: 0x1C)
} AFIO_REG_t;


//==============================
//Peripheral Instants:
//==============================
#define RCC			((RCC_REG_t*)RCC_BASE)

#define GPIOA		((GPIOx_REG_t*)GPIOA_BASE)
#define GPIOB		((GPIOx_REG_t*)GPIOB_BASE)
#define GPIOC		((GPIOx_REG_t*)GPIOC_BASE)
#define GPIOD		((GPIOx_REG_t*)GPIOD_BASE)
#define EXTI		((EXTI_REG_t*)EXTI_BASE)
#define AFIO		((AFIO_REG_t*)AFIO_BASE)

//==============================
//clock enable Macros:
//==============================
#define RCC_AFIO_CLK_EN()	RCC->RCC_APB2ENR |= (1<<0) //Bit 0 AFIOEN: Alternate function IO clock enable
#define RCC_GPIOA_CLK_EN()	RCC->RCC_APB2ENR |= (1<<2) //Bit 2 IOPAEN: IO port A clock enable
#define RCC_GPIOB_CLK_EN()	RCC->RCC_APB2ENR |= (1<<3) //Bit 2 IOPAEN: IO port A clock enable

//==============================
//Generic Macros:
//==============================


#endif /* INC_STM32F103X6_H_ */
