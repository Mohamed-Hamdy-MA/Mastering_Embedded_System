/*
 ============================================================================
 Name        : Ex2_Print_All_Alphabets.c
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
	char* p=(char*)'A';
	for (int i=0;i<26;i++,p++)printf("%c\t",(int)p);
	return EXIT_SUCCESS;
}
