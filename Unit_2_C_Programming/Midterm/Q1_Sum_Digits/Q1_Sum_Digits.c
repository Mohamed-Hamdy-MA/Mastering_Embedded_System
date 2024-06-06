/*
 ============================================================================
 Name        : Q1_Sum_Digits.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

int sumdigits (int num)
{
    int rem;
    if (num!=0)
    rem=num%10;
    else return 0;
    return rem+sumdigits(num/10);
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
    printf("%d\n",sumdigits (num));

    num=takenumber();
    printf("%d\n",sumdigits (num));
    return 0;
}
