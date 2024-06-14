/*
 ============================================================================
 Name        : Ex4_Reverse_Array.c
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
	int arr[15];
	int noe;

	printf("Input the number of elements to store in the array (max 15): ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&noe);
	printf("\nInput %d number of elements in the array :\n",noe);

	for (int i=0; i<noe; i++){
		printf("element - %d : ",i+1);
		fflush(stdin);fflush(stdout);
		scanf("%d",arr+i);
	}

	printf("\nInput the elements of array in reverse order are : \n");
	for (int i=noe; i>0; i--){
		printf("element - %d : %d\n",i,*(arr+i-1));
	}
	return EXIT_SUCCESS;
}
