/*
 ============================================================================
 Name        : Ex1_Store_Student_Information_Using_Structures.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

struct Sstudent{
	char m_name[100];
	int m_roll;
	float m_marks;
};
struct Sstudent ReadStudent (){
	struct Sstudent StudentData;
	printf("Enter information of students:\n");
	printf("Enter name: ");
	fflush(stdin); fflush(stdout);
	gets(StudentData.m_name);
	printf("Enter roll number: ");
	fflush(stdin); fflush(stdout);
	scanf("%d",&StudentData.m_roll);
	printf("Enter marks: ");
	fflush(stdin); fflush(stdout);
	scanf("%f",&StudentData.m_marks);
	return StudentData;
}
void PrintStudent (struct Sstudent StudentData){
	printf("Displaying information:\n");
	printf("name: %s\nroll: %d\nmarks: %0.2f",
			StudentData.m_name,
			StudentData.m_roll,
			StudentData.m_marks);
}
int main(void) {
	struct Sstudent Student;
	Student=ReadStudent();
	PrintStudent (Student);
	return EXIT_SUCCESS;
}
