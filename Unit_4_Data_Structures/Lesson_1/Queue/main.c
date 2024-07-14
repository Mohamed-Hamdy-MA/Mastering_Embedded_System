/*
 * main.c
 *
 *  Created on: Jul 11, 2024
 *      Author: Mohamed Hamdy
 */


#include <stdio.h>
#include <stdlib.h>
#include "Queue.h"

int main(void)
{
	ElementType i;
	ElementType temp;
	Queue_t UART_FIFO;
	ElementType UART_Arr[5];

	Queue_print(&UART_FIFO);
	Queue_init(&UART_FIFO, UART_Arr, 5);

	Queue_print(&UART_FIFO);

	for (i = 0; i < 7; i++) {
		Queue_add(&UART_FIFO, &i);
	}
	Queue_print(&UART_FIFO);

	Queue_get(&UART_FIFO, &temp);
	Queue_get(&UART_FIFO, &temp);
	Queue_print(&UART_FIFO);

	for (i = 0; i < 4; i++) {
		Queue_add(&UART_FIFO, &i);
	}
	Queue_print(&UART_FIFO);

	for (i = 0; i < 6; i++) {
		Queue_get(&UART_FIFO, &temp);
	}
	Queue_print(&UART_FIFO);

	for (i = 0; i < 7; i++) {
		Queue_add(&UART_FIFO, &i);
	}
	Queue_print(&UART_FIFO);


	return EXIT_SUCCESS;
}
