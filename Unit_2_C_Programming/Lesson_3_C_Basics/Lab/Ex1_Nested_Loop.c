/*
 ============================================================================
 Name        : Ex1_Nested_Loop.c
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
	int Num;
	printf("Enter an integer : ");
	fflush(stdin);fflush(stdout);
	scanf("%d",&Num);

	int i=0, j=0; //i and j are counters
	for(i=0,j=0; i<=Num;i++)
	{
		for (j=i; j<=Num;j++)
		{
			printf("%d ",j);
		}
		printf("\n");
	}
}
