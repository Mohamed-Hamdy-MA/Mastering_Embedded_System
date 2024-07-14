/*
 ============================================================================
 Name        : Queue.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include "Queue.h"

uint8_t IsQueuePointerGoToEnd(Queue_t* FIFOStruct, ElementType* Pointer);
ElementType* PointerResetToBase(Queue_t* FIFOStruct, ElementType* ptr);
uint8_t IsQueueFull(Queue_t* FIFOStruct);
uint8_t IsQueueEmpty(Queue_t* FIFOStruct);
uint8_t IsQueueNotExist(Queue_t* FIFOStruct);


QueueStatus_t Queue_init(Queue_t* FIFOStruct, ElementType* DataBuffer, uint32_t DataBufferLength)
{
	FIFOStruct->length = DataBufferLength;
	FIFOStruct->base = DataBuffer;
	FIFOStruct->head = FIFOStruct->base;
	FIFOStruct->tail = FIFOStruct->base;
	FIFOStruct->count = 0;

	if (IsQueueNotExist(FIFOStruct)){
		printf("Queue is NULL (Not Exist)\n");
		return Queue_Null;
	}

	printf("==========Queue initialization Done successfully==========\n\n");
	return Queue_No_Error;
}

QueueStatus_t Queue_add(Queue_t* FIFOStruct, ElementType* ItemSource)
{
	if (IsQueueNotExist(FIFOStruct)){
		printf("Queue is NULL (Not Exist)\n");
		return Queue_Null;
	}

	if (IsQueueFull(FIFOStruct)){
		printf("Queue is Full");
		printf(" -----> Item %X failed to EnQueued\n", *ItemSource);
		return Queue_Full;
	}

	if (IsQueueEmpty(FIFOStruct)){
		FIFOStruct->head = FIFOStruct->base;
		FIFOStruct->tail = FIFOStruct->base;
	}

	*(FIFOStruct->head) = *ItemSource;
	printf("==========Item %X is EnQueued to index %u successfully==========\n",
			*ItemSource, FIFOStruct->head - FIFOStruct->base);
	FIFOStruct->head++;
	FIFOStruct->count++;
	if (IsQueuePointerGoToEnd(FIFOStruct, FIFOStruct->head))
		FIFOStruct->head = PointerResetToBase(FIFOStruct, FIFOStruct->head);
	return Queue_No_Error;
}

QueueStatus_t Queue_get(Queue_t* FIFOStruct, ElementType* ItemDestination)
{
	if (IsQueueNotExist(FIFOStruct)){
		printf("Queue is NULL (Not Exist)\n");
		return Queue_Null;
	}
	if (IsQueueEmpty(FIFOStruct)){
		printf("Queue is Empty\n");
		return Queue_Empty;
	}

	*ItemDestination = *(FIFOStruct->tail);
	printf("==========Item %X is DeQueued from index %u successfully==========\n",
			*ItemDestination, FIFOStruct->tail - FIFOStruct->base);
	FIFOStruct->tail++;
	FIFOStruct->count--;
	if (IsQueuePointerGoToEnd(FIFOStruct, FIFOStruct->tail))
		FIFOStruct->tail = PointerResetToBase(FIFOStruct, FIFOStruct->tail);
	return Queue_No_Error;
}

QueueStatus_t Queue_print(Queue_t* FIFOStruct)
{
	if (IsQueueNotExist(FIFOStruct)){
		printf("Queue is NULL (Not Exist)\n");
		return Queue_Null;
	}
	if (IsQueueEmpty(FIFOStruct)){
		printf("Queue is Empty\n");
		return Queue_Empty;}

	printf("\n==========Printing Queue==========\n");
	ElementType* ptr_temp = FIFOStruct->tail;
	for (uint32_t i = 0; i < FIFOStruct->count; i++)
	{
		if (IsQueuePointerGoToEnd(FIFOStruct, ptr_temp))
			ptr_temp = PointerResetToBase(FIFOStruct, ptr_temp);
		printf("Index %u: %X\n", ptr_temp - FIFOStruct->base , *ptr_temp);
		ptr_temp++;
	}
	printf("==========Done==========\n\n");
	return Queue_No_Error;
}

uint8_t IsQueuePointerGoToEnd(Queue_t* FIFOStruct, ElementType* Pointer)
{
	if (Pointer == FIFOStruct->base + (FIFOStruct->length * sizeof(ElementType)))
		return 1;
	return 0;
}

ElementType* PointerResetToBase(Queue_t* FIFOStruct, ElementType* ptr)
{
	ptr = FIFOStruct->base;
	return ptr;
}

uint8_t IsQueueFull(Queue_t* FIFOStruct)
{
	if (FIFOStruct->count == FIFOStruct->length) {
		return 1;
	}
	return 0;
}

uint8_t IsQueueEmpty(Queue_t* FIFOStruct)
{
	if (FIFOStruct->count == 0) {
		return 1;
	}
	return 0;
}

uint8_t IsQueueNotExist(Queue_t* FIFOStruct)
{
	if (!FIFOStruct->base || !FIFOStruct->head || !FIFOStruct->tail) {
		return 1;
	}
	return 0;
}
