/*
 ============================================================================
 Name        : Ex3_Add_Two_Complex_Using_Structures.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

struct SComplex{
	float m_real;
	float m_img;
};
struct SComplex ReadComplex (char indexname[]){
	struct SComplex ComplexData;
	printf("Enter %s Complex number\n",indexname);
	printf("Enter real and imaginary respectively: ");
	fflush(stdin); fflush(stdout);
	scanf("%f",&ComplexData.m_real);
	scanf("%f",&ComplexData.m_img);
	return ComplexData;
}
void PrintComplex (struct SComplex ComplexData){
	printf("%0.2f+%0.2fi",
			ComplexData.m_real,
			ComplexData.m_img);
}
struct SComplex SumComplex (struct SComplex c1,struct SComplex c2){
	struct SComplex sumc;
	sumc.m_real=c1.m_real+c2.m_real;
	sumc.m_img=c1.m_img+c2.m_img;
	return sumc;
}
int main(void) {
	struct SComplex c1,c2,sumc;
	c1=ReadComplex("1st");
	c2=ReadComplex("2nd");
	sumc=SumComplex(c1,c2);
	printf("Sum = ");PrintComplex (sumc);
	return EXIT_SUCCESS;
}
