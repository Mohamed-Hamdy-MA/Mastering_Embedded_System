/*
 ============================================================================
 Name        : Ex8_Reverse_String.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
	char str[100];
	char rev_str[100];
	int i; //i is a counter

	//get string and store it in str
	printf("Enter a string : " );
	fflush(stdin);fflush(stdout);
	gets(str);

	//loop in str until found null termination
	for(i=0; str[i]!=0; i++) //check until null termination //not '0'
	{
		rev_str[i]=str[strlen(str)-(i+1)];
	}
	rev_str[strlen(str)]=0;

	//print length
	printf("\nReverse string is : %s",rev_str);
	return EXIT_SUCCESS;
}
