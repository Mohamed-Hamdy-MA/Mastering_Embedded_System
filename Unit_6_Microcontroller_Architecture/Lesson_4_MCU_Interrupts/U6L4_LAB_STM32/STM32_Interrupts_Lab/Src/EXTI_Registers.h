/*
 * EXTI_Registers.h
 *
 *  Created on: Aug 9, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef EXTI_REGISTERS_H_
#define EXTI_REGISTERS_H_

#define EXTI_BASE	0x40010400

#pragma pack(1)
typedef struct {
    uint32_t MR0  :1;
    uint32_t MR1  :1;
    uint32_t MR2  :1;
    uint32_t MR3  :1;
    uint32_t MR4  :1;
    uint32_t MR5  :1;
    uint32_t MR6  :1;
    uint32_t MR7  :1;
    uint32_t MR8  :1;
    uint32_t MR9  :1;
    uint32_t MR10 :1;
    uint32_t MR11 :1;
    uint32_t MR12 :1;
    uint32_t MR13 :1;
    uint32_t MR14 :1;
    uint32_t MR15 :1;
    uint32_t MR16 :1;
    uint32_t MR17 :1;
    uint32_t MR18 :1;
    uint32_t MR19 :1;
    uint32_t Reserved :12;
} EXTI_IMR_t;

typedef struct {
    uint32_t MR0  :1;
    uint32_t MR1  :1;
    uint32_t MR2  :1;
    uint32_t MR3  :1;
    uint32_t MR4  :1;
    uint32_t MR5  :1;
    uint32_t MR6  :1;
    uint32_t MR7  :1;
    uint32_t MR8  :1;
    uint32_t MR9  :1;
    uint32_t MR10 :1;
    uint32_t MR11 :1;
    uint32_t MR12 :1;
    uint32_t MR13 :1;
    uint32_t MR14 :1;
    uint32_t MR15 :1;
    uint32_t MR16 :1;
    uint32_t MR17 :1;
    uint32_t MR18 :1;
    uint32_t MR19 :1;
    uint32_t Reserved :12;
} EXTI_EMR_t;

typedef struct {
    uint32_t TR0  :1;
    uint32_t TR1  :1;
    uint32_t TR2  :1;
    uint32_t TR3  :1;
    uint32_t TR4  :1;
    uint32_t TR5  :1;
    uint32_t TR6  :1;
    uint32_t TR7  :1;
    uint32_t TR8  :1;
    uint32_t TR9  :1;
    uint32_t TR10 :1;
    uint32_t TR11 :1;
    uint32_t TR12 :1;
    uint32_t TR13 :1;
    uint32_t TR14 :1;
    uint32_t TR15 :1;
    uint32_t TR16 :1;
    uint32_t TR17 :1;
    uint32_t TR18 :1;
    uint32_t TR19 :1;
    uint32_t Reserved :12;
} EXTI_RTSR_t;

typedef struct {
    uint32_t TR0  :1;
    uint32_t TR1  :1;
    uint32_t TR2  :1;
    uint32_t TR3  :1;
    uint32_t TR4  :1;
    uint32_t TR5  :1;
    uint32_t TR6  :1;
    uint32_t TR7  :1;
    uint32_t TR8  :1;
    uint32_t TR9  :1;
    uint32_t TR10 :1;
    uint32_t TR11 :1;
    uint32_t TR12 :1;
    uint32_t TR13 :1;
    uint32_t TR14 :1;
    uint32_t TR15 :1;
    uint32_t TR16 :1;
    uint32_t TR17 :1;
    uint32_t TR18 :1;
    uint32_t TR19 :1;
    uint32_t Reserved :12;
} EXTI_FTSR_t;

typedef struct {
    uint32_t SWIER0  :1;
    uint32_t SWIER1  :1;
    uint32_t SWIER2  :1;
    uint32_t SWIER3  :1;
    uint32_t SWIER4  :1;
    uint32_t SWIER5  :1;
    uint32_t SWIER6  :1;
    uint32_t SWIER7  :1;
    uint32_t SWIER8  :1;
    uint32_t SWIER9  :1;
    uint32_t SWIER10 :1;
    uint32_t SWIER11 :1;
    uint32_t SWIER12 :1;
    uint32_t SWIER13 :1;
    uint32_t SWIER14 :1;
    uint32_t SWIER15 :1;
    uint32_t SWIER16 :1;
    uint32_t SWIER17 :1;
    uint32_t SWIER18 :1;
    uint32_t SWIER19 :1;
    uint32_t Reserved :12;
} EXTI_SWIER_t;

typedef struct {
    uint32_t PR0  :1;
    uint32_t PR1  :1;
    uint32_t PR2  :1;
    uint32_t PR3  :1;
    uint32_t PR4  :1;
    uint32_t PR5  :1;
    uint32_t PR6  :1;
    uint32_t PR7  :1;
    uint32_t PR8  :1;
    uint32_t PR9  :1;
    uint32_t PR10 :1;
    uint32_t PR11 :1;
    uint32_t PR12 :1;
    uint32_t PR13 :1;
    uint32_t PR14 :1;
    uint32_t PR15 :1;
    uint32_t PR16 :1;
    uint32_t PR17 :1;
    uint32_t PR18 :1;
    uint32_t PR19 :1;
    uint32_t Reserved :12;
} EXTI_PR_t;
#pragma pack()


#endif /* EXTI_REGISTERS_H_ */