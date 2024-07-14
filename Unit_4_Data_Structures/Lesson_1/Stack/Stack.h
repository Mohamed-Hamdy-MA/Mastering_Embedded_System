/*
 * Stack.h
 *
 *  Created on: Jul 13, 2024
 *      Author: Mohamed Hamdy
 */

#ifndef STACK_H_
#define STACK_H_

#include <stdio.h>
#include <stdint.h>
#include <stdint.h>

#define ElementType uint8_t

typedef struct {
	uint32_t length;
	ElementType* base;
	ElementType* head;
	uint32_t count;
}Stack_t;

typedef enum {
	Stack_No_Error,
	Stack_Full,
	Stack_Empty,
	Stack_Null,
}StackStatus_t;

StackStatus_t Stack_init(Stack_t* LIFOStruct, ElementType* DataBuffer, uint32_t DataBufferLength);
StackStatus_t Stack_push(Stack_t* LIFOStruct, ElementType* Item);
StackStatus_t Stack_pop(Stack_t* LIFOStruct, ElementType* ItemDestination);
StackStatus_t Stack_print(Stack_t* LIFOStruct);




#endif /* STACK_H_ */
