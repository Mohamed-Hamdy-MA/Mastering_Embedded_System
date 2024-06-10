/*
 ============================================================================
 Name        : Ex4_Store_Students_Information_Using_Structures.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

struct Sstudent{
	char m_name[100];
	int m_roll;
	int m_marks;
};
struct Sstudent ReadStudent (int index){
	struct Sstudent StudentData;
	StudentData.m_roll=index;
	printf("\nFor roll number %d\n",index);
	printf("Enter name: ");fflush(stdin); fflush(stdout);
	gets(StudentData.m_name);
	printf("Enter marks: ");
	fflush(stdin); fflush(stdout);
	scanf("%d",&StudentData.m_marks);
	return StudentData;
}
void PrintStudent (struct Sstudent StudentData){
	printf("\nInformation for roll number %d:\nname: %s\nmarks: %d\n",
			StudentData.m_roll,
			StudentData.m_name,
			StudentData.m_marks);
}
int main(void) {
	struct Sstudent Student[10];
	int count=0;

	printf("Enter information of students:\n");
	do {
		Student[count]=ReadStudent(count+1);
		count++;
	}
	while(count<10);

	printf("\nDisplaying information:\n");
	for (int i=0;i<count;i++){
		PrintStudent (Student[i]);
	}
	return EXIT_SUCCESS;
}
