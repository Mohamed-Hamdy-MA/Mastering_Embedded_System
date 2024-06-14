/*
 ============================================================================
 Name        : Ex3_Print_String_In_Reverse.c
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
	char temp;
	int i=0;

	printf("Input a string : ");
	fflush(stdin);fflush(stdout);
	gets(str);

/*/////////////////////////////////////////////*/
	printf("\n(Method_1_without_Changing_Array) Reverse of the string is : ");
	char* pstr=str+strlen(str)-1;
	for (i=0; *(str+i)!=0; i++,pstr--)printf("%c",*pstr);
/*/////////////////////////////////////////////*/
	for (i=0; i<=strlen(str)/2; i++)
	{
		temp=*(str+i);
		*(str+i)=*(str+strlen(str)-1-i);
		*(str+strlen(str)-1-i)=temp;
	}
	printf("\n(Method_2_With_Changing_Array) Reverse of the string is : %s\n",str);

	return EXIT_SUCCESS;
}
