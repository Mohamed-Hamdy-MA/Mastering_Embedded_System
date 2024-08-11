/*
 * GPIOx_Registers.h
 *
 *  Created on: Aug 11, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef GPIOX_REGISTERS_H_
#define GPIOX_REGISTERS_H_

#define PORTA_BASE	0x40010800
#define PORTB_BASE	0x40010C00
#define PORTC_BASE	0x40011000
#define PORTD_BASE	0x40011400
#define PORTE_BASE	0x40011800
#define PORTF_BASE	0x40011C00
#define PORTG_BASE	0x40012000

#define GPIOx_CRL_OFFSET 0x00
#define GPIOx_CRH_OFFSET 0x04
#define GPIOx_IDR_OFFSET 0x08
#define GPIOx_ODR_OFFSET 0x0C

#pragma pack(1)
typedef struct {
    uint32_t MODE0 :2;
    uint32_t CNF0  :2;
    uint32_t MODE1 :2;
    uint32_t CNF1  :2;
    uint32_t MODE2 :2;
    uint32_t CNF2  :2;
    uint32_t MODE3 :2;
    uint32_t CNF3  :2;
    uint32_t MODE4 :2;
    uint32_t CNF4  :2;
    uint32_t MODE5 :2;
    uint32_t CNF5  :2;
    uint32_t MODE6 :2;
    uint32_t CNF6  :2;
    uint32_t MODE7 :2;
    uint32_t CNF7  :2;
} GPIOx_CRL_t;

typedef struct {
    uint32_t MODE8  :2;
    uint32_t CNF8   :2;
    uint32_t MODE9  :2;
    uint32_t CNF9   :2;
    uint32_t MODE10 :2;
    uint32_t CNF10  :2;
    uint32_t MODE11 :2;
    uint32_t CNF11  :2;
    uint32_t MODE12 :2;
    uint32_t CNF12  :2;
    uint32_t MODE13 :2;
    uint32_t CNF13  :2;
    uint32_t MODE14 :2;
    uint32_t CNF14  :2;
    uint32_t MODE15 :2;
    uint32_t CNF15  :2;
} GPIOx_CRH_t;

typedef struct {
    uint32_t IDR0  :1;
    uint32_t IDR1  :1;
    uint32_t IDR2  :1;
    uint32_t IDR3  :1;
    uint32_t IDR4  :1;
    uint32_t IDR5  :1;
    uint32_t IDR6  :1;
    uint32_t IDR7  :1;
    uint32_t IDR8  :1;
    uint32_t IDR9  :1;
    uint32_t IDR10 :1;
    uint32_t IDR11 :1;
    uint32_t IDR12 :1;
    uint32_t IDR13 :1;
    uint32_t IDR14 :1;
    uint32_t IDR15 :1;
    uint32_t Reserved :16;
} GPIOx_IDR_t;

typedef struct {
    uint32_t ODR0  :1;
    uint32_t ODR1  :1;
    uint32_t ODR2  :1;
    uint32_t ODR3  :1;
    uint32_t ODR4  :1;
    uint32_t ODR5  :1;
    uint32_t ODR6  :1;
    uint32_t ODR7  :1;
    uint32_t ODR8  :1;
    uint32_t ODR9  :1;
    uint32_t ODR10 :1;
    uint32_t ODR11 :1;
    uint32_t ODR12 :1;
    uint32_t ODR13 :1;
    uint32_t ODR14 :1;
    uint32_t ODR15 :1;
    uint32_t Reserved :16;
} GPIOx_ODR_t;
#pragma pack()

#endif /* GPIOX_REGISTERS_H_ */
