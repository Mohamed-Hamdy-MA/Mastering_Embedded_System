/*
 ============================================================================
 Name        : Ex4_Multiply_two_Floating_Point.c
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
	float Num1,Num2;
	printf("Enter Two  Numbers: ");
	fflush(stdin);fflush(stdout);
	scanf("%f %f",&Num1,&Num2);
	printf("Sum: %f",Num1*Num2);
	return EXIT_SUCCESS;
}
