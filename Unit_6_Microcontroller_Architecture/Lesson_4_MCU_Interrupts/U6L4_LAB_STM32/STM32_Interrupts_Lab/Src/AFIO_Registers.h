/*
 * AFIO_Registers.h
 *
 *  Created on: Aug 9, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef AFIO_REGISTERS_H_
#define AFIO_REGISTERS_H_

#define AFIO_BASE	0x40010000

#pragma pack(1)
typedef struct {
    uint32_t EXTI0 :4;
    uint32_t EXTI1 :4;
    uint32_t EXTI2 :4;
    uint32_t EXTI3 :4;
    uint32_t Reserved :16;
} AFIO_EXTICR1_t;

typedef struct {
    uint32_t EXTI4 :4;
    uint32_t EXTI5 :4;
    uint32_t EXTI6 :4;
    uint32_t EXTI7 :4;
    uint32_t Reserved :16;
} AFIO_EXTICR2_t;

typedef struct {
    uint32_t EXTI8  :4;
    uint32_t EXTI9  :4;
    uint32_t EXTI10 :4;
    uint32_t EXTI11 :4;
    uint32_t Reserved :16;
} AFIO_EXTICR3_t;

typedef struct {
    uint32_t EXTI12 :4;
    uint32_t EXTI13 :4;
    uint32_t EXTI14 :4;
    uint32_t EXTI15 :4;
    uint32_t Reserved :16;
} AFIO_EXTICR4_t;
#pragma pack()

#endif /* AFIO_REGISTERS_H_ */
