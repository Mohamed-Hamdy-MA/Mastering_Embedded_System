/*
 * Clock_Registers.h
 *
 *  Created on: Aug 11, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef CLOCK_REGISTERS_H_
#define CLOCK_REGISTERS_H_

#define RCC_BASE	0x40021000

#define RCC_CR_OFFSET 0x00
#define RCC_CFGR_OFFSET 0x04
#define RCC_AHBENR_OFFSET 0x14
#define RCC_APB2ENR_OFFSET 0x18
#define RCC_APB1ENR_OFFSET 0x1C

#pragma pack(1)
typedef struct {
	uint32_t HSION    :1;
	uint32_t HSIRDY   :1;
	uint32_t          :1;
	uint32_t HSITRIM  :5;
	uint32_t HSICAL   :8;
	uint32_t HSEON    :1;
	uint32_t HSERDY   :1;
	uint32_t HSEBYP   :1;
	uint32_t CSSON    :1;
	uint32_t          :4;
	uint32_t PLLON    :1;
	uint32_t PLLRDY   :1;
	uint32_t          :6;
}RCC_CR_t;

typedef struct {
	uint32_t SW       :2;
	uint32_t SWS      :2;
	uint32_t HPRE     :4;
	uint32_t PPRE1    :3;
	uint32_t PPRE2    :3;
	uint32_t ADC      :2;
	uint32_t PLLSRC   :1;
	uint32_t PLLXTPRE :1;
	uint32_t PLLMUL   :4;
	uint32_t USBPRE   :1;
	uint32_t          :1;
	uint32_t MCO      :3;
	uint32_t          :5;
}RCC_CFGR_t;

typedef struct {
	uint32_t DMA1EN     :1;
	uint32_t DMA2EN     :1;
	uint32_t SRAMEN     :1;
	uint32_t            :1;
	uint32_t FLITFEN    :1;
	uint32_t            :1;
	uint32_t CRCEN      :1;
	uint32_t            :5;
	uint32_t OTGFSEN    :1;
	uint32_t            :1;
	uint32_t ETHMACEN   :1;
	uint32_t ETHMACTXEN :1;
	uint32_t ETHMACRXEN :1;
	uint32_t            :15;
} RCC_AHBENR_t;

typedef struct {
	uint32_t AFIOEN    :1;
	uint32_t           :1;
	uint32_t IOPAEN    :1;
	uint32_t IOPBEN    :1;
	uint32_t IOPCEN    :1;
	uint32_t IOPDEN    :1;
	uint32_t IOPEEN    :1;
	uint32_t           :2;
	uint32_t ADC1EN    :1;
	uint32_t ADC2EN    :1;
	uint32_t TIM1EN    :1;
	uint32_t SPI1EN    :1;
	uint32_t           :1;
	uint32_t USART1EN  :1;
	uint32_t           :17;
}RCC_APB2ENR_t;

typedef struct {
	uint32_t TIM2EN    :1;
	uint32_t TIM3EN    :1;
	uint32_t TIM4EN    :1;
	uint32_t TIM5EN    :1;
	uint32_t TIM6EN    :1;
	uint32_t TIM7EN    :1;
	uint32_t           :5;
	uint32_t WWDGEN    :1;
	uint32_t           :2;
	uint32_t SPI2EN    :1;
	uint32_t SPI3EN    :1;
	uint32_t           :1;
	uint32_t USART2EN  :1;
	uint32_t USART3EN  :1;
	uint32_t UART4EN   :1;
	uint32_t UART5EN   :1;
	uint32_t I2C1EN    :1;
	uint32_t I2C2EN    :1;
	uint32_t           :2;
	uint32_t CAN1EN    :1;
	uint32_t CAN2EN    :1;
	uint32_t BKPEN     :1;
	uint32_t PWREN     :1;
	uint32_t DACEN     :1;
	uint32_t           :2;
} RCC_APB1ENR_t;
#pragma pack()

#endif /* CLOCK_REGISTERS_H_ */
