/*
 ============================================================================
 Name        : Ex3_Reverse_Sentence_Using_Recursion.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* revsentence (char str[]);

int main(void)
{
	char sentence[100];
	printf("Enter a sentence: ");
	fflush(stdin);fflush(stdout);
	gets(sentence);
	printf("%s",revsentence(sentence));
	return EXIT_SUCCESS;
}

char* revsentence (char str[])
{
	static char rev_str[100];
	static int i=0;
	if (i<strlen(str))
	{
		rev_str[i]=str[strlen(str)-1-i];
		i++;
		revsentence(str);
	}
	rev_str[strlen(str)]=0;
	return rev_str;
}
