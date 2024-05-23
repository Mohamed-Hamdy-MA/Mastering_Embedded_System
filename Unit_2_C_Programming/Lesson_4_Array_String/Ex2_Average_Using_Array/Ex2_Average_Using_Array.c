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
#include <string.h>

int main(void)
{
	float arr[10];
	float sum=0;
	int num;
	int i; //i is a counter

	printf("Enter the numbers of data: ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&num);

	if (num<0 || num<sizeof(arr)/sizeof(arr[0])-1)
			{
		printf("Error numbers of data should be from 1 to %d",sizeof(arr)/sizeof(arr[0])-1 );
			}
	else
	{
		for (i=0; i<num && i<sizeof(arr)/sizeof(arr[0]-1); i++) //2nd condition for data more the elements in array, in this case take max no of elements in array
		{
			printf("%d. Enter number: ",i+1);
			fflush(stdin);fflush(stdout);
			scanf("%f",&arr[i]);
			sum+=arr[i];
		}
		printf("Average = %0.2f",sum/num);
	}
	return EXIT_SUCCESS;
}
