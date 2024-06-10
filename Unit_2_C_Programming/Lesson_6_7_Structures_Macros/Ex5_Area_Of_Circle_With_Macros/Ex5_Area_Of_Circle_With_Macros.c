/*
 ============================================================================
 Name        : Ex5_Area_Of_Circle_With_Macros.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#define PI 3.14159
#define CircArea(r) PI*r*r

int main()
{
	float radius;
	printf("Enter the radius: ");
	fflush(stdin); fflush(stdout);
	scanf("%f",&radius);
	printf("Area = %.2f", CircArea(radius));
	return EXIT_SUCCESS;
}
