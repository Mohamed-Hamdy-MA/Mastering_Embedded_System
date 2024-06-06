/*
 ============================================================================
 Name        : Q8_Reverse_Array.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int reversearray (int arr[], int elements)
{
	if(elements==0)return 0;
	reversearray(arr+1,elements-1);
	printf("%d ",arr[0]);
	return 1;
}

int main(void)
{
	int a[5]={1,2,3,4,5};
	reversearray(a,5);
	return EXIT_SUCCESS;
}

