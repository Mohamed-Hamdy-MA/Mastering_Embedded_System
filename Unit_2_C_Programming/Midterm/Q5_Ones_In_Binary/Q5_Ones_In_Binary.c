/*
 ============================================================================
 Name        : Q5_Ones_In_Binary.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int dec2bin (int num)
{
	int rem;
	int onescount=0;
	if (num>0){
		rem=num%2;
		if (rem==1) onescount++;
	}
	else return 0;
	onescount+=dec2bin(num/2);
	printf("%d",rem);
	return onescount;
}
int takenumber (void)
{
	int num;
	printf("Enter a number: ");
	fflush(stdin); fflush (stdout);
	scanf ("%d",&num);
	return num;
}
int main()
{
	int num;
	num=takenumber();
	printf("\nnumbers of ones is %d\n",dec2bin (num));

	num=takenumber();
	printf("\nnumbers of ones is %d\n",dec2bin (num));
	return 0;
}
