/*
 ============================================================================
 Name        : Ex3_Largest_Of_Three_Numbers.c
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
	float Num1,Num2,Num3;
	printf("Enter three numbers: ");
	fflush(stdin);fflush(stdout);
	scanf("%f %f %f",&Num1,&Num2,&Num3);
	if(Num1>=Num2 && Num1>=Num3)
	{
		printf("Largest number = %f",Num1);
	}
	else if (Num1>=Num2 && Num1<=Num3)
	{
		printf("Largest number = %0.2f",Num3);
	}
	else if (Num1<=Num2 && Num2<=Num3)
	{
		printf("Largest number = %0.2f",Num3);
	}
	else //Num1<=Num2 && Num2>=Num3
		printf("Largest number = %0.2f",Num2);
	return EXIT_SUCCESS;
}
