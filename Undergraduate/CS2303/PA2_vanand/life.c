/*
 * life.c
 *
 *  Created on: Jan 24, 2017
 *      Author: vanand
 */
#include <stdio.h>
#include <stdlib.h>
#include "life.h"

int main(int argc, const char* argv[]){
	FILE *input;
	int X, Y, gens;
	 X = atoi(argv[1]);
	 Y = atoi(argv[2]);
	 gens = atoi(argv[3]); //must be greater than 0 and program
	//must stop before this if reaches termination point
	if(gens==0 || gens<0){
		printf("Warning and error");
	}


char print ='n'; //print function
	if(argc >=6 && *argv[5]=='y'){
	print = 1;
	}
	else{
		print = 0;
	}
printf("%c", print);

char pause = 'n'; //pause function
	if(argc >= 7 && *argv[6] == 'y'){
		pause = 1;
	}
	else{
		pause = 0;
		}
	printf("%c", pause);


	input = fopen(argv[4], "r"); //r means read only
	if(!input){
			printf("Unable to open file");
		}

	if(argc < 5){ //error checking
			printf("Error!");
		}
	else if(argc == 6) {
		print = atoi(argv[5]);
	}

	else if(argc > 6) {
			print = atoi(argv[5]);
			print = atoi(argv[6]);
		}

	int **A = malloc(X * sizeof(int *)); //leaving space for arrays
	unsigned int i;


	if (A) for (i=0; i<X; i++){
		A[i] =malloc(Y * sizeof (int));
		if (!A[i]) exit(-1); //error
	}

	int **B= malloc(X*sizeof(int *));
	unsigned int l;

	if (B) for (l=0; l<X; l++){
		B[l] =malloc(Y * sizeof (int));
		if (!B[l]) exit(-1); //error
	}

	int **C = malloc(X*sizeof(int *));
	unsigned int o;


	if (C) for (o=0; o<X; o++){
		C[o] =malloc(Y * sizeof (int));
		if (!C[o]) exit(-1); //error
	}

	int **temp = malloc(X*sizeof(int *));
		unsigned int e;


		if (temp) for (e=0; e<X; e++){
			temp[e] =malloc(Y * sizeof (int));
			if (!temp[e]) exit(-1); //error
		}

//checking the input file patterns
int y=0, x=1, d, widthofline=0, heightofline =0;
	while((d = fgetc(input)) !=EOF){

		if(d == '\n'){
			if(y>widthofline){
			widthofline=y;

			}
			x++;
			heightofline = x;
			y=0;
			printf("\n");
		}
		else if(d == 'o'){
		temp[x][y] = 0;
			y++;
			printf("%c", d);

		}
		else if(d == 'x'){
		temp[x][y] = 1;
			y++;
			printf("%c", d);
		}


	}printf("\n height: %d longest line: %d\n", heightofline, widthofline);
//function to center the array
int W = X/2-(widthofline/2); //offset of
int L = Y/2-(heightofline/2);

    for(int j=0;j<widthofline;j++){ //loop invariant
        for(int k=0; k<heightofline;k++){
            printf("Moving %d, %d to A [%d][%d]\n", j, k, W+j, L+k);
            A[W+j][L+k]=temp[j][k];
        }
    }//rows is y and columns is x
    printf("Move complete!\n");
    for(int j=0;j<X;j++){ //loop invariant
        for(int k=0;k<Y;k++){
            if(A[j][k]==0){
                printf("o");
            }else{
                printf("x");
            }
        }
        printf("\n");
    }

//FindNeighbors(x, y, W, L, A);

   /* int check1=FindNeighbors(0,2, x, y, A);
          printf("check1: %d", check1);*/

    void PlayGame (int *A[], int *B[], int W, int L, int n)
    {
    	for(int x=0; W<x; ++x){
    		for(int y=0; L<y; ++y){
    			int n = FindNeighbors(x,y,W,L,A);
    			if(n==2){
    				printf("Alive!");
    				B[x][y]=1;
    				}
    			else if(n==3){
    				printf("You're alive!");
    				printf("New birth");
    				B[x][y]=1;
    				}
    			else if(n==0 || n==1){
    				printf("Dead because of loneliness");
    				B[x][y]=0;
    				}
    			else {
    				printf("Dead because of overcrowding");
    				B[x][y]=0;
    				}
    		}
    	}
    }
//for loop and go through all of array A and array B and check if each element is the same
      //go through all again and adding all the one's in the array and if greater than 0 ou terminate
      //generations

/*void PlayOne (unsigned int x, unsigned int y, int Old[][], int New[][]){
	int Board[0];
	int **Boards[3];
	int b=0;
	for(int h=0; h<gens; h+1){
		Play(Board[b], Board[b+1]%3);
		Board[b+1], Board[b];
		Board[b+1], Board[b-1];


	}
}*/



}



