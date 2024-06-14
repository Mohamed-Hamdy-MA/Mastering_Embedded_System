/*
 ============================================================================
 Name        : Ex1_Handle_Pointers.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	int m=29;
	int* ab=NULL;

	printf("address of m: %p\n",&m);
	printf("Value of m: %d\n",m);

	ab=&m; //Now ab is assigned with the address of m.
	printf("\nAddress of ab: %p\n",ab);
	printf("Value of ab: %d\n",*ab);

	m=34; //The value of m assigned to 34 now.
	printf("\nAddress of ab: %p\n",ab);
	printf("Value of ab: %d\n",*ab);

	*ab=7; //The pointer variable ab is assigned with the value 7 now.
	printf("\nAddress of m: %p\n",&m);
	printf("Value of m: %d\n",m);

	return EXIT_SUCCESS;
}
