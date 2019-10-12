
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include "tree.h"
#include "string.h"
/*
 * The purpose of the following function is to add/ update the tree
 * accordingly
 * it takes one node and a character array
 *
 */
struct tnode *addtree(struct tnode *p, char *w){

	int cond; //variable name
	if(p == NULL){ //if node is not equal to null
		p = talloc();
		p->word = strdup(w); //look at word
		p->count = 1; //count
		p->left = p->right = NULL;  //look at left and right

	}
	else if((cond = strcmp(w, p->word)) ==0){ //set equal to string compare
		p->count++; //keep counting if equal to 0
	}
	else if(cond<0){
		p->left = addtree(p->left, w); //less than 0 then look at left side of tree
	}
	else{
		p->right = addtree(p->right, w); //greater than 0 then look at right side of tree
	}
	return p;
}

struct tnode *talloc(void){ //for memory allocation
	return (struct tnode *) malloc(sizeof(struct tnode));
}
void treeprint(struct tnode *p){ //actually printing the tree

	if(p != NULL){
		treeprint(p->left); //print left
		printf("%4d %s\n", p->count, p->word); //prints count and word
		treeprint(p->right); //print right
	}
}
void freetree(struct tnode *leaf){ //destroy the tree after use
	if(leaf != 0){
		freetree(leaf->left);//free left tree
		freetree(leaf->right);//free right tree
		free(leaf);
	}
}


char *strdup(const char *s) { //allocates enough space for the word
  char *d = malloc(strlen(s) + 1); //keeps 1 more space than how long word actually is
  if(d == NULL) return NULL;
  strcpy(d,s);
  return d;
}


//prints the whole tree to the output file
void filePrintTree(struct tnode *root, FILE *output){
  if(root != NULL){
    filePrintTree(root->left, output); //prints left
    fprintf(output, "%6d | %s\n", root->count, root->word);
    filePrintTree(root->right, output); //prints right
  }
}

//counts the nodes of tree
int countNodes(struct tnode *leaf){
  int count=0;
  if(leaf!=NULL ){
    count=countNodesRec(leaf);
  }
  return count;
}

int countNodesRec(struct tnode *leaf){
  int count=1;
  if(leaf->left !=NULL){
    count+=countNodesRec(leaf->left); //left side
  }
  if(leaf->right!=NULL){
    count+=countNodesRec(leaf->right); //right side
  }
  return count;
}

//counts the total words in an input file
int countTotalWords(struct tnode *leaf){
  int count=0;
  if(leaf!=NULL){
    count=countTotalWordsRec(leaf);
  }
  return count;
}
int countTotalWordsRec(struct tnode *leaf){
 int count=leaf->count;
   if(leaf->left !=NULL){
    count+=countTotalWordsRec(leaf->left); //left side
  }
  if(leaf->right!=NULL){
    count+=countTotalWordsRec(leaf->right); //right side
  }
  return count;
}

void help(){//error if entered only one file
	printf("There must be at least two inputs.\n");
	printf("The first input must be the file you want to write."
			"\n");
	printf("The second one, and all the following must be the"
			"\n ones that you want to read.\n");
	printf("If you still get errors make sure that this program is\n"
			" built properly.");
}


