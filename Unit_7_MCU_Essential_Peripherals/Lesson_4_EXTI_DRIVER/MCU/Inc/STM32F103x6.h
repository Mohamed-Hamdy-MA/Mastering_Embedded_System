/*
 * STM32F103x6.h
 *
 *  Created on: Aug 18, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef INC_STM32F103X6_H_
#define INC_STM32F103X6_H_


//==========================================================================================
//=========================================Includes=========================================
//==========================================================================================
#include <stdlib.h>
#include <stdint.h>

//==========================================================================================
//================================Base addresses for Memories===============================
//==========================================================================================
#define FLASH_BASE				0x08000000UL
#define SYSTEM_MEMORY_BASE		0x1FFFF000UL
#define SRAM_BASE				0x20000000UL


//==========================================================================================
//============================Base addresses for BUS Peripherals============================
//==========================================================================================

//-------InternalCortexM------
#define M3_INTERNAL_PERIPHERALS	0xE0000000UL
#define NVIC_BASE				0xE000E100UL

//-------------AHB------------
//#define FSMC_BASE       0xA0000000
//#define USB_OTG_FS_BASE 0x50000000
//#define ETHERNET_BASE   0x40028000
//#define CRC_BASE        0x40023000
//#define FLASH_IF_BASE   0x40022000
#define RCC_BASE        0x40021000UL
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
#define GPIOD_BASE     0x40011400UL
#define GPIOC_BASE     0x40011000UL
#define GPIOB_BASE     0x40010C00UL
#define GPIOA_BASE     0x40010800UL
#define EXTI_BASE      0x40010400UL
#define AFIO_BASE      0x40010000UL

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

//==========================================================================================
//===================================Peripheral registers===================================
//==========================================================================================

//-------------NVIC-------------
#define NVIC_ISER0      (*(volatile uint32_t*)(NVIC_BASE + 0x00))  // Interrupt Set-Enable Register 0
#define NVIC_ISER1      (*(volatile uint32_t*)(NVIC_BASE + 0x04))  // Interrupt Set-Enable Register 1
#define NVIC_ISER2      (*(volatile uint32_t*)(NVIC_BASE + 0x08))  // Interrupt Set-Enable Register 2

#define NVIC_ICER0      (*(volatile uint32_t*)(NVIC_BASE + 0x80))  // Interrupt Clear-Enable Register 0
#define NVIC_ICER1      (*(volatile uint32_t*)(NVIC_BASE + 0x84))  // Interrupt Clear-Enable Register 1
#define NVIC_ICER2      (*(volatile uint32_t*)(NVIC_BASE + 0x88))  // Interrupt Clear-Enable Register 2

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
	volatile uint32_t AFIO_EXTICR[4]; // External interrupt configuration register 1,2,3,4 (Offset: 0x08,0x0C,0x10,0x14)
	volatile uint32_t RESERVED0;	  //												(Offset: 0x18)
	volatile uint32_t AFIO_MAPR2;     // Remap and debug I/O configuration register 2 (Offset: 0x1C)
} AFIO_REG_t;


//==========================================================================================
//===================================Peripheral instants====================================
//==========================================================================================
#define RCC			((RCC_REG_t*)RCC_BASE)

#define GPIOA		((GPIOx_REG_t*)GPIOA_BASE)
#define GPIOB		((GPIOx_REG_t*)GPIOB_BASE)
#define GPIOC		((GPIOx_REG_t*)GPIOC_BASE)
#define GPIOD		((GPIOx_REG_t*)GPIOD_BASE)
#define EXTI		((EXTI_REG_t*)EXTI_BASE)
#define AFIO		((AFIO_REG_t*)AFIO_BASE)

//==========================================================================================
//================================NVIC EXTI IRQ number Macros===============================
//==========================================================================================
#define EXTI0_iqrNUMBER      (uint8_t)6   // EXTI0 interrupt (IRQ6)
#define EXTI1_iqrNUMBER      (uint8_t)7   // EXTI1 interrupt (IRQ7)
#define EXTI2_iqrNUMBER      (uint8_t)8   // EXTI2 interrupt (IRQ8)
#define EXTI3_iqrNUMBER      (uint8_t)9   // EXTI3 interrupt (IRQ9)
#define EXTI4_iqrNUMBER      (uint8_t)10  // EXTI4 interrupt (IRQ10)
#define EXTI5_iqrNUMBER      (uint8_t)23  // EXTI5 interrupt (IRQ23)
#define EXTI6_iqrNUMBER      (uint8_t)23  // EXTI6 interrupt (IRQ23)
#define EXTI7_iqrNUMBER      (uint8_t)23  // EXTI7 interrupt (IRQ23)
#define EXTI8_iqrNUMBER      (uint8_t)23  // EXTI8 interrupt (IRQ23)
#define EXTI9_iqrNUMBER      (uint8_t)23  // EXTI9 interrupt (IRQ23)
#define EXTI10_iqrNUMBER     (uint8_t)40  // EXTI10 interrupt (IRQ40)
#define EXTI11_iqrNUMBER     (uint8_t)40  // EXTI11 interrupt (IRQ40)
#define EXTI12_iqrNUMBER     (uint8_t)40  // EXTI12 interrupt (IRQ40)
#define EXTI13_iqrNUMBER     (uint8_t)40  // EXTI13 interrupt (IRQ40)
#define EXTI14_iqrNUMBER     (uint8_t)40  // EXTI14 interrupt (IRQ40)
#define EXTI15_iqrNUMBER     (uint8_t)40  // EXTI15 interrupt (IRQ40)


//==========================================================================================
//============================NVIC EXTI IRQ enable/disable Macros===========================
//==========================================================================================
#define NVIC_EXTI0_IRQ6_EN    		 NVIC_ISER0 |= (1 << 6)  // Enable EXTI0 interrupt (IRQ6)
#define NVIC_EXTI1_IRQ7_EN   		 NVIC_ISER0 |= (1 << 7)  // Enable EXTI1 interrupt (IRQ7)
#define NVIC_EXTI2_IRQ8_EN    		 NVIC_ISER0 |= (1 << 8)  // Enable EXTI2 interrupt (IRQ8)
#define NVIC_EXTI3_IRQ9_EN    		 NVIC_ISER0 |= (1 << 9)  // Enable EXTI3 interrupt (IRQ9)
#define NVIC_EXTI4_IRQ10_EN  		 NVIC_ISER0 |= (1 << 10) // Enable EXTI4 interrupt (IRQ10)
#define NVIC_EXTI9_5_IRQ23_EN		 NVIC_ISER0 |= (1 << 23) // Enable EXTI5 to EXTI9 interrupts (IRQ23)
#define NVIC_EXTI15_10_IRQ40_EN 	 NVIC_ISER1 |= (1 << 8) // Enable EXTI10 to EXTI15 interrupts (IRQ40)

#define NVIC_EXTI0_IRQ6_DIS    		 NVIC_ICER0 |= (1 << 6)  // Disable EXTI0 interrupt (IRQ6)
#define NVIC_EXTI1_IRQ7_DIS   		 NVIC_ICER0 |= (1 << 7)  // Disable EXTI1 interrupt (IRQ7)
#define NVIC_EXTI2_IRQ8_DIS    		 NVIC_ICER0 |= (1 << 8)  // Disable EXTI2 interrupt (IRQ8)
#define NVIC_EXTI3_IRQ9_DIS   		 NVIC_ICER0 |= (1 << 9)  // Disable EXTI3 interrupt (IRQ9)
#define NVIC_EXTI4_IRQ10_DIS  		 NVIC_ICER0 |= (1 << 10) // Disable EXTI4 interrupt (IRQ10)
#define NVIC_EXTI9_5_IRQ23_DIS		 NVIC_ICER0 |= (1 << 23) // Disable EXTI5 to EXTI9 interrupts (IRQ23)
#define NVIC_EXTI15_10_IRQ40_DIS 	 NVIC_ICER1 |= (1 << 8) // Disable EXTI10 to EXTI15 interrupts (IRQ40)


//==========================================================================================
//====================================clock enable Macros===================================
//==========================================================================================
#define RCC_AFIO_CLK_EN()	RCC->RCC_APB2ENR |= (1 << 0) //Bit 0 AFIOEN: Alternate function IO clock enable
#define RCC_GPIOA_CLK_EN()	RCC->RCC_APB2ENR |= (1 << 2) //Bit 2 IOPAEN: IO port A clock enable
#define RCC_GPIOB_CLK_EN()	RCC->RCC_APB2ENR |= (1 << 3) //Bit 2 IOPAEN: IO port A clock enable

//==========================================================================================
//======================================Generic Macros======================================
//==========================================================================================


#endif /* INC_STM32F103X6_H_ */
