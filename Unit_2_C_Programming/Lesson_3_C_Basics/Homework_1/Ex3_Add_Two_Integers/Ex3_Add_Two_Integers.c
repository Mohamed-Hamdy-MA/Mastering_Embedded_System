/*
 ============================================================================
 Name        : Ex3_Add_Two_Integers.c
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
	int Num1,Num2;
	printf("Enter Two Integers: ");
	fflush(stdin);fflush(stdout);
	scanf("%d %d",&Num1,&Num2);
	printf("Sum: %d",Num1+Num2);
	return EXIT_SUCCESS;
}
