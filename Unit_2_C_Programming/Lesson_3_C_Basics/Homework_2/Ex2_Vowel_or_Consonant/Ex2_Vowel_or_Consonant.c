/*
 ============================================================================
 Name        : Ex2_Vowel_or_Consonant.c
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
	char alphabet;
	printf("Enter an alphabet: ");
	fflush(stdin);fflush(stdout);
	scanf("%c",&alphabet);
	switch (alphabet)
	{
	case 'a':
	case 'e':
	case 'i':
	case 'o':
		printf("%c is a vowel.",alphabet);
		break;
	default:
		printf("%c is a consonant.",alphabet);
	}
	return EXIT_SUCCESS;
}
