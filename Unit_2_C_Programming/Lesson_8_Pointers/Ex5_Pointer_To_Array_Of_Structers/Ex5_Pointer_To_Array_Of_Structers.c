/*
 ============================================================================
 Name        : Ex5_Pointer_To_Array_Of_Structers.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>




int main(void)
{
	struct Sperson
	{
		char m_name[50];
		int m_id;
	};

	struct Sperson emp[2]={
			{"Alex",1002},
			{"Frank",1003}};
	struct Sperson* p;
	p=emp;

	for (int i=0; i<2; i++,p++)
	{
		printf("Employee %d name: %s\nEmployee %d ID: %d\n\n",
				i+1,p->m_name,
				i+1,p->m_id);
	}
	return EXIT_SUCCESS;
}
