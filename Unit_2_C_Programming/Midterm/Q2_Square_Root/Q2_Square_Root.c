/*
 ============================================================================
 Name        : Q2_Square_Root.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

float squareroot (int num)
{
    float x;
    x=sqrt(num);
    return x;
}
int takenumber (void)
{
    int num;
    printf("Enter an integer number: ");
    fflush(stdin); fflush (stdout);
    scanf ("%d",&num);
    return num;
}
int main()
{
    int num;
    num=takenumber();
    printf("%0.3f\n",squareroot (num));

    num=takenumber();
    printf("%0.3f\n",squareroot (num));
    return 0;
}
