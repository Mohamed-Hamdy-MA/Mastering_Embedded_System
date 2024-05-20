/*
 ============================================================================
 Name        : Ex8_Simple_Calculator.c
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
	char operator;
	float Num1,Num2;
	printf("Enter operator either + or - or * or / : ");
	fflush(stdin);fflush(stdout);
	scanf("%c",&operator);

	printf("Enter two operands: ");
	fflush(stdin);fflush(stdout);
	scanf("%f %f",&Num1,&Num2);

	switch (operator)
	{
	case '+':
		printf("%0.1f %c %0.1f = %0.1f",Num1 , operator , Num2 , Num1+Num2);
		break;
	case '-':
		printf("%0.1f %c %0.1f = %0.1f",Num1 , operator , Num2 , Num1-Num2);
		break;
	case '*':
		printf("%0.1f %c %0.1f = %0.1f",Num1 , operator , Num2 , Num1*Num2);
		break;
	case '/':
		printf("%0.1f %c %0.1f = %0.1f",Num1 , operator , Num2 , Num1/Num2);
		break;
	default:
		printf("Error!!!");
	}
	return EXIT_SUCCESS;
}
