
/*
 ============================================================================
 Name        : Q7_Sum_From_1_To_100.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int takenumber (void)
{
	int num;
	printf("Enter a number: ");
	fflush(stdin); fflush (stdout);
	scanf ("%d",&num);
	return num;
}

int sigma (int num)
{
	if (num==0) return 0;
	return num+sigma (num-1);
}

int main(void)
{
	int x;
	x=takenumber();
	printf("Sum of numbers from 1 to %d is %d",x,sigma(x));
	return EXIT_SUCCESS;
}
