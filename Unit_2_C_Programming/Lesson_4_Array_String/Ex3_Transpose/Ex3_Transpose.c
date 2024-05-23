/*
 ============================================================================
 Name        : Ex3_Transpose.c
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
	int mat[5][5];
	int rows,columns;
	int i,j; //i and j are counters

	//Scan rows and columns
	printf("Enter rows and columns of matrix: ");
	fflush(stdin);fflush(stdout);
	scanf("%d%d",&rows,&columns);

	//Scan mat elements
	printf("Enter the elements of matrix\n");
	for (i=0,j=0; i<rows; i++)
	{
		for (j=0; j<columns; j++)
		{
			printf("Enter element a%d%d: ",i+1,j+1);
			fflush(stdin);fflush(stdout);
			scanf("%d",&mat[i][j]);
		}
	}

	//print matrix
	printf("Entered Matrix:\n");
	for (i=0,j=0; i<rows; i++)
	{
		for (j=0; j<columns; j++)
		{
			printf("%d\t",mat[i][j]);
		}
		printf("\n");
	}


	//print result of operation
	printf("Transpose of Matrix:\n");
	for (i=0,j=0; i<columns; i++)
	{
		for (j=0; j<rows; j++)
		{
			printf("%d\t",mat[j][i]);
		}
		printf("\n");
	}
	return EXIT_SUCCESS;
}
