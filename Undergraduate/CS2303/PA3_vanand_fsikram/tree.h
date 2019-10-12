/*
 * tree.h
 *
 *  Created on: Feb 1, 2017
 *      Author: vanand
 */

#ifndef TREE_H_
#define TREE_H_

struct tnode *addtree(struct tnode *, char *);
void treeprint(struct tnode *);
char* getword(FILE* f, int lim);
struct tnode *talloc(void);
int countNodes(struct tnode*);
int countNodesRec(struct tnode*);
int countTotalWords(struct tnode*);
int countTotalWordsRec(struct tnode*);
void filePrintTree(struct tnode *, FILE *);
void freetree(struct tnode*);
//char* memory(char*);

struct tnode {
	char *word;
	int count;
	struct tnode *left;
	struct tnode *right;
};

struct nodes {
	int keyval;
	struct nodes *left;
	struct nodes *right;
};

#endif /* TREE_H_ */
