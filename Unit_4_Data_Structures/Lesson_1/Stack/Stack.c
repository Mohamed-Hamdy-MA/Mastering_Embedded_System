/*
 ============================================================================
 Name        : Stack.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include "Stack.h"

uint8_t IsStackFull(Stack_t* LIFOStruct);
uint8_t IsStackEmpty(Stack_t* LIFOStruct);
uint8_t IsStackNotExist(Stack_t* LIFOStruct);


StackStatus_t Stack_init(Stack_t* LIFOStruct, ElementType* DataBuffer, uint32_t DataBufferLength)
{
	LIFOStruct->length = DataBufferLength;
	LIFOStruct->base = DataBuffer;
	LIFOStruct->head = LIFOStruct->base;
	LIFOStruct->count = 0;

	if (IsStackNotExist(LIFOStruct)){
		printf("Stack is NULL (Not Exist)\n");
		return Stack_Null;
	}

	printf("==========Stack initialization Done successfully==========\n\n");
	return Stack_No_Error;
}

StackStatus_t Stack_push(Stack_t* LIFOStruct, ElementType* ItemSource)
{
	if (IsStackNotExist(LIFOStruct)){
		printf("Stack is NULL (Not Exist)\n");
		return Stack_Null;
	}

	if (IsStackFull(LIFOStruct)){
		printf("Stack is Full");
		printf(" -----> Failed to push Item %X\n", *ItemSource);
		return Stack_Full;
	}

	*(LIFOStruct->head) = *ItemSource;
	printf("==========Item %X is pushed to index %u successfully==========\n",
			*ItemSource, LIFOStruct->head - LIFOStruct->base);
	LIFOStruct->head++;
	LIFOStruct->count++;
	return Stack_No_Error;
}

StackStatus_t Stack_pop(Stack_t* LIFOStruct, ElementType* ItemDestination)
{
	if (IsStackNotExist(LIFOStruct)){
		printf("Stack is NULL (Not Exist)\n");
		return Stack_Null;
	}
	if (IsStackEmpty(LIFOStruct)){
		printf("Stack is Empty\n");
		return Stack_Empty;
	}

	LIFOStruct->head--;
	*ItemDestination = *(LIFOStruct->head);
	printf("==========Item %X is popped from index %u successfully==========\n",
			*ItemDestination, LIFOStruct->head - LIFOStruct->base);
	LIFOStruct->count--;
	return Stack_No_Error;
}

StackStatus_t Stack_print(Stack_t* LIFOStruct)
{
	if (IsStackNotExist(LIFOStruct)){
		printf("Stack is NULL (Not Exist)\n");
		return Stack_Null;
	}
	if (IsStackEmpty(LIFOStruct)){
		printf("Stack is Empty\n");
		return Stack_Empty;}

	printf("\n==========Printing Stack==========\n");
	ElementType* ptr_temp = LIFOStruct->base;
	for (uint32_t i = 0; i < LIFOStruct->count; i++)
	{
		printf("Index %u: %X\n", ptr_temp - LIFOStruct->base , *ptr_temp);
		ptr_temp++;
	}
	printf("==========Done==========\n\n");
	return Stack_No_Error;
}

uint8_t IsStackFull(Stack_t* LIFOStruct)
{
	if (LIFOStruct->count == LIFOStruct->length) {
		return 1;
	}
	return 0;
}

uint8_t IsStackEmpty(Stack_t* LIFOStruct)
{
	if (LIFOStruct->count == 0) {
		return 1;
	}
	return 0;
}

uint8_t IsStackNotExist(Stack_t* LIFOStruct)
{
	if (!LIFOStruct->base || !LIFOStruct->head) {
		return 1;
	}
	return 0;
}
