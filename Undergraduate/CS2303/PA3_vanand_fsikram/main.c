/*
 * main.c
 *
 *  Created on: Feb 5, 2017
 *      Author: student
 */

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include "tree.h"
#include "string.h"

#define maxline 100
void help();
int main(int argc, const char* argv[]){
	if(argc<3){
	  help();
	  exit(1);
	}
	struct tnode *base=NULL;
	//A temp charcacter array to hold the read line.
	char* temp = (char *) malloc(maxline+1);

	for(int i=2;i<argc;i++){ //loop invariant: i is the argument in the command line
	  //Open each input file one by one
		FILE *input= fopen (argv[i],"r");
		if(input==NULL)
		  continue;
		//Get a line from the opened file and store in temp until it is EOF.
		while(fgets(temp,maxline,input) != NULL){
		  //Check if it is a blank line
		  if(strlen(temp) <= 1)
		    continue;

		  //Get a pointer to the first word the line fetched this time,
		  char *pch  = strtok (temp," ,.-!=;:()?&");

                  //Check if pch is NULL
                  if(pch == NULL)
                    continue;
		  //Check if it is a blank line
                    if(isspace(pch[0]))
                      continue;
                    for(int i=0;i < strlen(pch);i++)//loop invariant: i is the string length and function converts word to lowercase
                      pch[i] = tolower(pch[i]);

		  //until the end of string we got from the current opened file.
                    while (pch != NULL){
                      //pch points to the current word in the current line in the current file
                      //Here you process and clean word and put it in the binary tree.
                      if(base == NULL) {
                        base = addtree(base,pch);
                      } else
                        {
                          addtree(base,pch);
                        }

                       //printf ("%s, len=%d\n",pch,(int)strlen(pch));
                      //Get the next word.
                      pch = strtok (NULL, " ,.-_!=;:()?&");

                      //Check if pch is NULL
                      if(pch == NULL)
                        break;
                      //Check if it is a blank line
                      if(isspace(pch[0]))
                        break;
                      for(int i=0;i < strlen(pch);i++)//loop invariant: i is the string length and function converts word to lowercase
                        pch[i] = tolower(pch[i]);
                    }
                    //close the opened file
		}
		//printf ("Closing the file\n");

		fclose(input);
	}
	//total number of words
	int totalwords=countTotalWords(base);
	//total distinct words
	int totalnode=countNodes(base);
	//printing to output file
	FILE *output = fopen(argv[1], "w");
	//printing the output of tree
	fprintf(output, "Word Count:  \n");
	filePrintTree(base, output);
	fprintf(output, "-------------\n");
	fprintf(output,"Total Words (including duplicates)= %d\n",totalwords);
	fprintf(output,"Total Distinct Words= %d",totalnode);
	freetree(base);
}



