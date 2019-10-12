/* vanand &fsikram
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N]) {

	int r, c; //row and column of an array
	int i, j; //row and column of the sub-array
	int diagonal; //this variable is there to represent the diagonals -> to move the diaganols to the right spots
	int temp; //temporary variable to hold the array

//just used an overall if condition that goes through each case of array size 

//first case: when M = 32 and N = 32
//using block size 8 here -> this is what works best 
	if (M == 32 && N == 32) { //Setting the N and M size to 32 for 32 x 32 array
		for (c = 0; c < M; c += 8) { //These set of for loops will use the block size 8 to move from one array to another
			for (r = 0; r < N; r += 8) {
				for (i = r; i < r + 8; i++) {
					for (j = c; j < c + 8; j++) {

						if (i != j) //if the row and column of subarray are not equal
							B[j][i] = A[i][j]; //put elements of array B into array A and switch the column and row -> this is the meaning of transpose

						else { //else
							temp = A[i][j]; //store the array A in a temporary variable
							diagonal = i; //set diagonal to row of sub array
						}

					} //end of j for loop
					if (r == c) //if row and column of original array are equal
						B[diagonal][diagonal] = temp; //store the diagonals in array B which is then stored in a temp variable -> this will cause the diagonals to be moved and taken care of in the final array
				} // end of i for loop
			} //end of row for loop
		} //end of column for loop
	} //end of first case
	else
//Second case: when M = 64 and N = 64
//using block size 4 here 
//this function has the exact same idea as above, the only difference is that the block size that works best here is 4 
	if (M == 64 && N == 64) { //Setting the N and M size to 64 for 64 x 64 array
		for (c = 0; c < M; c += 4) { //These set of for loops will use the block size 4 to move from one array to another
			for (r = 0; r < N; r += 4) {
				for (i = r; i < r + 4; i++) {
					for (j = c; j < c + 4; j++) {

						if (i != j) {
							B[j][i] = A[i][j];
						} else {
							temp = A[i][j];
							diagonal = i;
						}

					} //end of j for loop
					if (r == c) {
						B[diagonal][diagonal] = temp;
					}
				} // end of i for loop
			} //end of row for loop
		} //end of column for loop
	} //end of second case
	else
//third case: M = anything and N = anything
// in the cachelab document, it says to use 61 x 67
//using 16 as block size because that is what works best here 
	if (M == 61 && N == 67) { //Setting the M size to 61 and the N size to 67
		for (c = 0; c < M; c += 16) { //same idea as above with a for loop for rows and columns fo original array and using block size 16
			for (r = 0; r < N; r += 16) {
				for (i = r; i < N && i < r + 16; i++) { //same idea as the other two functions except now we are dealing with different sizes for N and M so need to emphasize that the row for the sub array (i) is less than N and same with teh column for the sub array (j)
					for (j = c; j < M && j < c + 16; j++) {

						if (i != j) //same idea as the other to functions
							B[j][i] = A[i][j];

						else {
							temp = A[i][j];
							diagonal = i;
						}

					} //end of j for loop
					if (r == c)
						B[diagonal][diagonal] = temp;
				} // end of i for loop
			} //end of row for loop
		} //end of column for loop
	} //end of third case

}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N]) {
	int i, j, tmp;

	for (i = 0; i < N; i++) {
		for (j = 0; j < M; j++) {
			tmp = A[i][j];
			B[j][i] = tmp;
		}
	}

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions() {
	/* Register your solution function */
	registerTransFunction(transpose_submit, transpose_submit_desc);

	/* Register any additional transpose functions */
	registerTransFunction(trans, trans_desc);

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N]) {
	int i, j;

	for (i = 0; i < N; i++) {
		for (j = 0; j < M; ++j) {
			if (A[i][j] != B[j][i]) {
				return 0;
			}
		}
	}
	return 1;
}


