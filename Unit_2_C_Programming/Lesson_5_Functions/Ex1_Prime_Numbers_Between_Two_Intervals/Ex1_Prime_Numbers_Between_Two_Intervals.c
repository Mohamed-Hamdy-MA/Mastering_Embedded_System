/*
 ============================================================================
 Name        : Ex1_Prime_Numbers_Between_Two_Intervals.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern void primeinterval(int x, int y);

int main(void)
{
	int x,y;
	printf("Enter Two numbers (intervals): ");
	fflush(stdin);fflush(stdout);
	scanf("%d %d",&x,&y);
	primeinterval(x, y);
	return EXIT_SUCCESS;
}
