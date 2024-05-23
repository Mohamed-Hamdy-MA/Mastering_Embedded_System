/*
 ============================================================================
 Name        : Ex6_Frequency_Of_Character_In_String.c
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
	char character;
	int freq=0;
	int i; //i is a counter

	//get string and store it in str
	printf("Enter a string: " );
	fflush(stdin);fflush(stdout);
	gets(str);

	//enter the character to find freq
	printf("\nEnter a character to find frequency: ");
	fflush(stdin);fflush(stdout);
	scanf("%c",&character);

	//search in str with for loop, continue statement to keep counting and searching
	for(i=0; str[i]!=0; i++) //check until null termination //not '0' //can be i<strlen(str)
	{
		if (str[i]==character)
		{
			freq++;
			continue;
		}
	}

	//print frequency
	printf("\nFrequency of %c = %d",character,freq);

	return EXIT_SUCCESS;
}
