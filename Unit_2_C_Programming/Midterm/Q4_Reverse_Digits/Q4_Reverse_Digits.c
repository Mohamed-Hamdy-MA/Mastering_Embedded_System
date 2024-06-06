/*
 ============================================================================
 Name        : Q4_Reverse_Digits.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int reversedigits (int num)
{
    int rem;
    if (num!=0)
    rem=num%10;
    else return 0;
    printf ("%d",rem);
    reversedigits(num/10);
    return 1;
}
int takenumber (void)
{
    int num;
    printf("\nEnter a number: ");
    fflush(stdin); fflush (stdout);
    scanf ("%d",&num);
    return num;
}
int main()
{
    int num;
    num=takenumber();
    reversedigits (num);

    num=takenumber();
    reversedigits (num);
    return 0;
}
