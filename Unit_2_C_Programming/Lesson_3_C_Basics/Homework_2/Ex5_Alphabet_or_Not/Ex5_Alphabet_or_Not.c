/*
 ============================================================================
 Name        : Ex5_Alphabet_or_Not.c
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
	char character;
	printf("Enter a character: ");
	fflush(stdin);fflush(stdout);
	scanf("%c",&character);
	if(((int) character>=65 && (int) character<=90) || ((int) character>=97 && (int) character<=122))
	{
		printf("%c is alphabet.",character);
	}
	else
	{
		printf("%c is not alphabet.",character);
	}
	return EXIT_SUCCESS;
}
