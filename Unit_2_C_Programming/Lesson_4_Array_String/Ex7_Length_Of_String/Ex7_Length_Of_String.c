/*
 ============================================================================
 Name        : Ex7_Length_Of_String.c
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
	char str[100];
	int i; //i is a counter

	//get string and store it in str
	printf("Enter a string: " );
	fflush(stdin);fflush(stdout);
	gets(str);

	//loop in str until found null termination, counter is length
	for(i=0; str[i]!=0; i++); //check until null termination //not '0'

	//print length
	printf("\nLength of string = %d",i);
	return EXIT_SUCCESS;
}
