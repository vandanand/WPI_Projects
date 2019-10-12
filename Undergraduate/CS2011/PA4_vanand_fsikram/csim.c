/*
 * Farey Ikram and Vandana Anand
 * Cache Simulation
 *
 * Basic components:
 * -> getopt for command line
 * -> fscanf to read each line
 * -> use long long int because we are
 *    working with a 64 bits
 * -> basic parameters of cache are global vars
 * -> struct cache is array of set, struct array
 *    is array of struct line
 * -> build cache using malloc
 * -> free cache
 * -> Simulation:
 *      calculation of tag
 *      calculation of set index (in cache)
 *      look through specified index for cache
 *      use of LRU algorithm
 *      inserting tag appropriately
 *
 */
#include <stdlib.h>
#include <stdio.h>
#include <getopt.h>
#include <strings.h>
#include "cachelab.h"
#include <math.h>
// The following are global variables, they keep track of the parameters
int s; //#of sets
int b; //block size
int E; //# of lines
int S; //2^s

int hits;//total hits
int misses;//total misses
int evictions;// total evictions

int verbose = 0;// for the verbose tag

struct cache {
//array of sets
	struct set *csets;
};
struct set {
//array of lines
	struct line *clines;
};
struct line {
	unsigned long long tag;//the bits we are comparing
	int valid;// check if bit is valid
	int mr_time; //most recent time
};

int help() {//help function
	printf("Usage: ./csim-ref [-hv] -s <num> -E <num> -b <num> -t <file>\n Options: \n");
	printf("  -h         Print this help message.\n");
	printf("  -v         Optional verbose flag.\n");
	printf("  -s <num>   Number of set index bits.\n");
	printf("  -E <num>   Number of lines per set.\n");
	printf("  -b <num>   Number of block offset bits.\n");
	printf("  -t <file>  Trace file.\n \n");

	printf("Examples:\n");
	printf("  linux>  ./csim-ref -s 4 -E 1 -b 4 -t traces/yi.trace\n");
	printf("  linux>  ./csim-ref -v -s 8 -E 2 -b 4 -t traces/yi.trace\n");
	return 0;
}

//use malloc to allocate space for cache
struct cache cachealloc() {

	struct cache newCache;// this is what we are  returning
	struct set set;
	struct line line;

	newCache.csets = (struct set *) malloc(sizeof(struct set) * S);
	//use of sizeof sets and multiply it by the number of sets, S

	for (int i = 0; i < S; i++) {
		set.clines = (struct line *) malloc(sizeof(struct line) * E);
		//use sizeof lines to allocate memory fore EACH set
		newCache.csets[i] = set;
		for (int j = 0; j < E; j++) {
			//set each element of Each line
			line.mr_time = 0;
			line.valid = 0;
			line.tag = 0;
			set.clines[j] = line;
		}
	}

	return newCache;// return allocated space
} /* end cachealloc */

/* call free function to clean up cache after main simulation is run */
void cacheFree(struct cache myCache) {
	//first free each line of each set
	// then free each set of the cache
	for (int i= 0; i < S; i++) {
		struct set set = myCache.csets[i];
		if (set.clines != NULL) {
			free(set.clines);
		}
	}
	if (myCache.csets != NULL) {
		free(myCache.csets);
	}
} // end of freeing of cache

/* runs the trace simulation */
int cacheSim(struct cache myCache, unsigned long long address) {

	int orginalHits = hits;// to check if hits changes
	// following few calculations were given in class
	int tag_size = (64 - (s + b));
	unsigned long long temp = address << (tag_size);
	unsigned long long setIndex = temp >> (tag_size + b);

	unsigned long long Tag = address >> (s + b);
	if (verbose == 1) {// for programmers use
		printf("tag= %llx ", Tag);
	}
    int allValid = 1;// to see if eviction is necessary in future
	struct set myset = myCache.csets[setIndex];

	for (int i = 0; i< E; i++) {// loop too find hit
		struct line line = myset.clines[i];
		if (line.valid) {
			if (line.tag == Tag) { //
				line.mr_time++;
				hits++;
				myset.clines[i] = line;
				if (verbose == 1) {
					printf(" hit ");
				}
				return 1;
			}

		} else if (!(line.valid) && (allValid)) {
			allValid = 0;// if there is an invalid line than the cache is not full
		}
	}
	if (orginalHits == hits) { // same hits= not hits
		misses++;//increments misses
		if (verbose == 1) {
			printf(" miss ");
		}
	}

	// use the least recent used method LRU in order
	// to see what I need to evict
	// max and min are the 0th line in the set
	//to start off with
	int max = myset.clines[0].mr_time;
	int min = myset.clines[0].mr_time;
	int minIndex = 0;//start comparing at 0
	struct line line;

	for (int k = 1; k < E; k++) {//travers through all line of myset
		line = myset.clines[k];
		if (min > line.mr_time) {// current line is less than min
			//updat index and min line
			minIndex = k;
			min = line.mr_time;
		}
		if (max < line.mr_time) {// if current line is greater than max
			max = line.mr_time;
		}
	}
    // at this point LRU in minIndex

	//Here is where the eviction, if necessary will take place
	if (allValid) { // noe empty lines, use LRU and replace
		evictions++;
		myset.clines[minIndex].tag = Tag;
		myset.clines[minIndex].mr_time = max + 1;
	} else { // write into empoty line
		struct line line;
		int empty = 0;
		for (int i = 0; i < E; i++) {
			line = myset.clines[i];
			if (line.valid == 0) {
				empty = i;
				break;
			}
		}
		// update bits
		myset.clines[empty].tag = Tag;
		myset.clines[empty].valid = 1;
		myset.clines[empty].mr_time = max + 1;
	}
	return 1;

} // end cacheSim

// main uses commandline args
int main(int argc, char **argv) {
	struct cache myCache;
	FILE *toread;

	char c1; /* cmd will take in the operation address I, L, S, or M */
	unsigned long long int address;
	int size;

	char *traceFile;
	char c;
	//parse command line using getopt
	//optarg is the global var that stores the result
	while ((c = getopt(argc, argv, "s:E:b:t:vh")) != -1) {
		switch (c) {
		case 's':
			s = atoi(optarg);
			break;
		case 'E':
			E = atoi(optarg);
			break;
		case 'b':
			b = atoi(optarg);
			break;
		case 't':
			traceFile = optarg;
			break;
		case 'v':
			verbose = 1;//for programmers help
			break;
		case 'h':
			help();
			exit(0);
		default:
			help();
			exit(1);
		}
	}
	if (s <= 0 || E <= 0 || b <= 0 || traceFile == NULL) {// used to check invalid args
		printf("%s: Missing required command line argument\n", argv[0]);
		help();
		exit(1);
	}

	// S= 2^s, this is needed to malloc
	S= pow(2.0, s);

	hits = 0;
	misses = 0;
	evictions = 0;

	myCache = cachealloc(); //allocate space for cache
	toread = fopen(traceFile, "r");//read file

	if (toread != NULL) {//check if it is empty or not
		//special note: use long long int for address
		while (fscanf(toread, " %c %llx,%d", &c1, &address, &size) == 3) {
			if (verbose == 1) {
				printf("%c ", c1);// put command in cmd
				printf("\n");
			}
			switch (c1) {
			case 'I':
				break;
			case 'L'://load
				cacheSim(myCache, address);
				break;//store
			case 'S':
				cacheSim(myCache, address);
				break;
			case 'M'://modify
				//run sim twice, evict, and then hit
				cacheSim(myCache, address);
				cacheSim(myCache, address);
				break;
			default:
				break;
			}
			if (verbose == 1) {
				printf("\n");
			}

		}
	}

	//print summary
	printSummary(hits, misses, evictions);

	/* clean up cache resources */
	cacheFree(myCache);
	fclose(toread);

	return 0;
}
