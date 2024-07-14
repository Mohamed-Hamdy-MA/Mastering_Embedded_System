/*
 ============================================================================
 Name        : main.c
 Author      : Mohamed Hamdy
 Version     :
 Copyright   : 
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#define DPRINTF(...) 	{fflush(stdout);\
		fflush(stdin);\
		printf(__VA_ARGS__);\
		fflush(stdout);\
		fflush(stdin);}

#define IsEmptyLinkedList HEAD == NULL
#define IsOneNodeLinkedList HEAD->PointerToNext == NULL

struct SStudentData{
	uint32_t ID;
	char name[40];
	float height;
};

struct Node{
	struct SStudentData DataElement;
	struct Node* PointerToNext;
};

struct Node* HEAD = NULL;

void FillNewStudentData (struct Node* NewStudentNode)
{
	char temp_text[40];

	DPRINTF("\nEnter student ID: ");
	NewStudentNode->DataElement.ID = atoi(gets(temp_text));

	DPRINTF("Enter student name: ");
	gets(NewStudentNode->DataElement.name);

	DPRINTF("Enter student height: ");
	NewStudentNode->DataElement.height = atof(gets(temp_text));
}

void AddNode()
{
	struct Node* ptrNewNode = (struct Node*) malloc(sizeof(struct Node));
	FillNewStudentData(ptrNewNode);
	ptrNewNode->PointerToNext = NULL;

	if (IsEmptyLinkedList)
		HEAD = ptrNewNode;
	else
	{
		struct Node* ptrLastNode = HEAD;
		while(ptrLastNode->PointerToNext)
			ptrLastNode = ptrLastNode->PointerToNext;
		ptrLastNode->PointerToNext = ptrNewNode;
	}
	DPRINTF("=====Item is recorded=====\n");

}

uint8_t DeleteNode()
{
	if (IsEmptyLinkedList)
	{
		DPRINTF("\n=====List is empty=====\n");
		return 0;
	}

	uint32_t selected_ID;
	char temp_text[40];
	DPRINTF("\nEnter student ID to be deleted: ");
	selected_ID = atoi(gets(temp_text));

	struct Node* ptrSelectedNode=HEAD; //SelectedNode=1stNode
	struct Node* ptrPreviousNode=NULL; //previousNode=NULL
	while(ptrSelectedNode)
	{
		if(	ptrSelectedNode->DataElement.ID == selected_ID)
		{
			if (ptrPreviousNode)
				ptrPreviousNode->PointerToNext = ptrSelectedNode->PointerToNext;
			else
				HEAD = ptrSelectedNode->PointerToNext;

			free(ptrSelectedNode);
			DPRINTF("=====Item is deleted=====\n");
			return 1;
		}
		ptrPreviousNode = ptrSelectedNode;
		ptrSelectedNode = ptrSelectedNode->PointerToNext;
	}
	DPRINTF("=====No match=====\n");
	return 0;
}

uint32_t ViewList()
{
	if (IsEmptyLinkedList)
	{
		DPRINTF("\n=====List is empty=====\n");
		return 0;
	}

	struct Node* ptrCurrentNode=HEAD;
	uint32_t count=0;
	while(ptrCurrentNode)
	{
		DPRINTF("\nRecord Number %u @%p.\n",count+1,ptrCurrentNode);
		DPRINTF("ID: %u\n",ptrCurrentNode->DataElement.ID);
		DPRINTF("Name: %s\n",ptrCurrentNode->DataElement.name);
		DPRINTF("Height: %0.2f\n",ptrCurrentNode->DataElement.height);
		DPRINTF("Next Node @%p.\n",ptrCurrentNode->PointerToNext);
		ptrCurrentNode = ptrCurrentNode->PointerToNext;
		count++;
	}
	return count;
}

uint32_t DeleteList()
{
	if (IsEmptyLinkedList)
	{
		DPRINTF("\n=====List is empty=====\n");
		return 0;
	}

	struct Node* ptrCurrentNode=HEAD;
	while(ptrCurrentNode)
	{
		struct Node* ptrtempNode=ptrCurrentNode;
		ptrCurrentNode = ptrCurrentNode->PointerToNext;
		free(ptrtempNode);
	}
	HEAD = NULL;
	DPRINTF("\n=====List is deleted=====\n");
	return 1;
}

int main ()
{
	uint32_t option;
	while(1)
	{
		DPRINTF("\n----------Choose on of the following Options----------");
		DPRINTF("\n1: Add Student");
		DPRINTF("\n2: Delete Student");
		DPRINTF("\n3: View All Students");
		DPRINTF("\n4: Delete All Students");

		DPRINTF("\nEnter Option Number: ");
		scanf("%u",&option);
		DPRINTF("--------------------\n");
		switch (option)
		{
		case 1:
			AddNode();
			break;
		case 2:
			DeleteNode();
			break;
		case 3:
			ViewList();
			break;
		case 4:
			DeleteList();
			break;
		default:
			DPRINTF("\n=====Wrong Option=====\n");
			break ;
		}
	}
	return EXIT_SUCCESS;
}
