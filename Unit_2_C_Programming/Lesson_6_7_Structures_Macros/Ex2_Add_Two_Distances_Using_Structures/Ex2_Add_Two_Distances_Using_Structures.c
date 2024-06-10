/*
 ============================================================================
 Name        : Ex2_Add_Two_Distances_Using_Structures.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

struct SDistance{
	int m_feet;
	float m_inch;
};
struct SDistance ReadDistance (char indexname[]){
	struct SDistance DistanceData;
	printf("Enter information of %s distance:\n",indexname);
	printf("Enter feet: ");fflush(stdin); fflush(stdout);
	scanf("%d",&DistanceData.m_feet);
	printf("Enter inch: ");fflush(stdin); fflush(stdout);
	scanf("%f",&DistanceData.m_inch);
	return DistanceData;
}
void PrintDistance (struct SDistance DistanceData){
	printf("%d\' %0.2f\"",
			DistanceData.m_feet,
			DistanceData.m_inch);
}
struct SDistance SumDistance (struct SDistance d1,struct SDistance d2){
	struct SDistance sumd;
	sumd.m_feet=d1.m_feet+d2.m_feet;
	sumd.m_inch=d1.m_inch+d2.m_inch;
	if (sumd.m_inch>=12){
		sumd.m_feet+=sumd.m_inch/12;
		sumd.m_inch-=((int)sumd.m_inch/12)*12;
	}
	return sumd;
}
int main(void) {
	struct SDistance d1,d2,sumd;
	d1=ReadDistance("1st");
	d2=ReadDistance("2nd");
	sumd=SumDistance(d1,d2);
	printf("Sum of distances = ");PrintDistance (sumd);
	return EXIT_SUCCESS;
}
