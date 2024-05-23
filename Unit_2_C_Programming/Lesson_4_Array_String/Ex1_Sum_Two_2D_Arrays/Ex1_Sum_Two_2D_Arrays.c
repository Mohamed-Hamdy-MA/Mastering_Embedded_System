/*
 ============================================================================
 Name        : Ex1_Sum_Two_2D_Arrays.c
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
	float mat1[2][2],mat2[2][2];
	int i,j; //i and j are counters

	//Scan mat1 elements
	printf("Enter the elements of 1st matrix\n");
	for (i=0,j=0; i<2; i++)
	{
		for (j=0; j<2; j++)
		{
			printf("Enter a%d%d: ",i+1,j+1);
			fflush(stdin);fflush(stdout);
			scanf("%f",&mat1[i][j]);
		}
	}
	//Scan mat2 elements
	printf("Enter the elements of 2nd matrix\n");
	for (i=0,j=0; i<2; i++)
	{
		for (j=0; j<2; j++)
		{
			printf("Enter b%d%d: ",i+1,j+1);
			fflush(stdin);fflush(stdout);
			scanf("%f",&mat2[i][j]);
		}
	}

	//print result of operation
	printf("sum of matrix\n");
	for (i=0,j=0; i<2; i++)
	{
		for (j=0; j<2; j++)
		{
			printf("%0.1f\t",mat1[i][j]+mat2[i][j]);
		}
		printf("\n");
	}
	return EXIT_SUCCESS;
}
