/*
 * main.c
 *
 *  Created on: Jul 13, 2024
 *      Author: Mohamed Hamdy
 */

#include <stdio.h>
#include <stdlib.h>
#include "Stack.h"

int main(void)
{
	ElementType i;
	ElementType temp;
	Stack_t UART_LIFO;
	ElementType UART_Arr[5];

	Stack_print(&UART_LIFO);
	Stack_init(&UART_LIFO, UART_Arr, 5);

	Stack_print(&UART_LIFO);

	for (i = 0; i < 7; i++) {
		Stack_push(&UART_LIFO, &i);
	}
	Stack_print(&UART_LIFO);

	Stack_pop(&UART_LIFO, &temp);
	Stack_pop(&UART_LIFO, &temp);
	Stack_print(&UART_LIFO);

	for (i = 0; i < 4; i++) {
		Stack_push(&UART_LIFO, &i);
	}
	Stack_print(&UART_LIFO);

	for (i = 0; i < 6; i++) {
		Stack_pop(&UART_LIFO, &temp);
	}
	Stack_print(&UART_LIFO);

	for (i = 0; i < 7; i++) {
		Stack_push(&UART_LIFO, &i);
	}
	Stack_print(&UART_LIFO);

	return EXIT_SUCCESS;
}

