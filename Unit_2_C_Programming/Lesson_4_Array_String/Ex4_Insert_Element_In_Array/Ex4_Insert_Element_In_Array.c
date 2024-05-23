/*
 ============================================================================
 Name        : Ex4_Insert_Element_In_Array.c
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
	int mat[20];
	int elements,value,location;
	int i; //i is a counter

	//scan numbers of elements
	printf("Enter no of elements: ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&elements);

	//assign initial values
	for (i=0; i<elements; i++)
	{
		mat[i]=i+1;
	}

	//print initial values
	printf("\n");
	for (i=0; i<elements; i++)
	{
		printf("%d\t",mat[i]);
	}

	//scan value from user
	printf("\nEnter the element to be inserted: ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&value);

	//scan location from user
	printf("\nEnter the location: ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&location);

	//stretch the Array
	for (i=elements-1; i>=location-1; i--)
	{
		mat[i+1]=mat[i];
	}

	//put that value in related location in Array
	mat[location-1]=value;

	//print updated values
	printf("\n");
	for (i=0; i<elements+1; i++)
	{
		printf("%d\t",mat[i]);
	}
	return EXIT_SUCCESS;
}
