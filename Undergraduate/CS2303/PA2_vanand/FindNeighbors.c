/*
 * FindNeighbors.c
 *
 *  Created on: Jan 24, 2017
 *      Author: vanand
 */
#include <stdio.h>

int FindNeighbors(int x, int y, int W, int L, int *A[]){
	int neighbors=0;
	for(int f=-1; f<= 1; f++){
     if((x+f)>=0 && (x+f<W)){
    	 for(int g=-1; g<=1; g++){
    		 if((y+g)>=0 && (y+g<L)){
    			 neighbors = neighbors + A[x+f][y+g];
    		 }
    	 }
       }
     }
    printf("Here are neighbors: %d\n", neighbors);
      return neighbors;
}

