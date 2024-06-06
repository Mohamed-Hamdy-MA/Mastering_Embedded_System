/*
 ============================================================================
 Name        : Q9_Reverse_Words.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void reversewords (char text[])
{
	//loop in every element in string but from end to start
	for (int i=0; i<strlen(text); i++)
	{
		//check if there is a space
		if (text[strlen(text)-1-i] ==' ')
		{
			//if there is a space, print each character after space "length-1-i+1+j ---> -i+j",
			//if found space or null stop printing "exit from for"
			for (int j=0; text[strlen(text)-i+j] !=' '&&text[strlen(text)-i+j] !=0; j++)
			{
				printf("%c",text[strlen(text)-i+j]);
			}
			//print space after each group of characters "word"
			printf(" ");
		}
	}
	//first word does't have space before it, so this logic will not print it
	//we need to ensure to print it separately
	//if found space or null stop printing "exit from for"
	for (int j=0; text[j] !=' '&&text[j] !=0; j++)
		printf("%c",text[j]);
}
int main(void){
	char text[100];
	printf("Enter a text: ");
	fflush(stdin);fflush(stdout);
	gets(text);
	reversewords(text);
	return EXIT_SUCCESS;
}

