/*
 ============================================================================
 Name        : Ex2_Print_an_Integer.c
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
	int Num;
	printf("Enter an Integer: ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&Num);
	printf("You entered: %d",Num);
	return EXIT_SUCCESS;
}
