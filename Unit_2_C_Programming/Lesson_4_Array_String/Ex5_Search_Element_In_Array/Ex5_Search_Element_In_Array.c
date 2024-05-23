/*
 ============================================================================
 Name        : Ex5_Search_Element_In_Array.c
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
	int elements,value,location=0;
	int i; //i is a counter

	//scan numbers of elements
	printf("Enter no of elements: ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&elements);

	//assign initial values
	for (i=0; i<elements; i++)
	{
		mat[i]=(i+1)*10+(i+1);
	}

	//print initial values
	printf("\n");
	for (i=0; i<elements; i++)
	{
		printf("%d\t",mat[i]);
	}

	//scan value from user
	printf("\nEnter the element to be searched: ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&value);

	//search in Array using for loop and break it when value found
	for(i=0; i<elements; i++)
	{
		if(mat[i]==value)
		{
			location=i+1;
			break;
		}
	}

	//print Founded location or not found
	if (location!=0)
		printf("\nNumber found at the location = %d",location);
	else
		printf("Number not found");
	return EXIT_SUCCESS;
}
