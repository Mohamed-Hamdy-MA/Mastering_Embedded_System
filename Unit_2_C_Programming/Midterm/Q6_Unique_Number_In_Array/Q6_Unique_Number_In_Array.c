/*
 ============================================================================
 Name        : Q6_Unique_Number_In_Array.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

//Honestly, I get the idea from ChatGPT
//Note: The XOR method is designed specifically for arrays where every element
//appears exactly twice except for one unique element.
int Unique(int arr[], int elements) {
    int unique = 0;
    for (int i = 0; i < elements; i++) {
        unique ^= arr[i];
    }
    return unique;
}
int main() {
    int a1[7]={4,2,5,2,5,7,4};
    int a2[3]={4,2,4};
    printf("The unique number for a1[7]={4,2,5,2,5,7,4} is: %d\n", Unique(a1, 7));
    printf("The unique number for a2[3]={4,2,4} is: %d\n", Unique(a2, 3));
    return 0;
}
