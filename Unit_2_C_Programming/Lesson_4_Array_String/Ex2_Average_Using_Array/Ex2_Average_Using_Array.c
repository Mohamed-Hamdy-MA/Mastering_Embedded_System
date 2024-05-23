/*
 ============================================================================
 Name        : Ex2_Average_Using_Array.c
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
	float arr[10];
	float sum=0;
	int num;
	int i; //i is a counter

	printf("Enter the numbers of data: ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&num);

	for (i=0; i<num; i++)
	{
		printf("%d. Enter number: ",i+1);
		fflush(stdin);fflush(stdout);
		scanf("%f",&arr[i]);
		sum+=arr[i];
	}
	printf("Average = %0.2f",sum/num);
	return EXIT_SUCCESS;
}
