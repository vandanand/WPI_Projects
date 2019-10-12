#include <sys/syscall.h>
#include <stdio.h>
#include <unistd.h>
#include <linux/string.h>
#include <sys/stat.h>
#include <fcntl.h>

#define __NR_cs3013_syscall1 333
#define __NR_cs3013_syscall2 334
#define __NR_cs3013_syscall3 335

long testCall1(void) {
	return (long) syscall(__NR_cs3013_syscall1);
}

long testCall2(void) {
	return (long) syscall(__NR_cs3013_syscall2);
}


long testCall3(void) {
	return (long) syscall(__NR_cs3013_syscall3);
}

//sample test to see if strstr works 
int contains_virus(char scan[]){
	if(strstr(scan, "VIRUS") != NULL)
		return 1; //has virus
	else
		return 0; //doesn't have virus
}

int main() {
	printf("The return values of the system calls are:\n");
	printf("\tcs3013_syscall1: %ld\n", testCall1());
	printf("\tcs3013_syscall2: %ld\n", testCall2());
	printf("\tcs3013_syscall3: %ld\n", testCall3());
	printf("\ttest1: %d\n", contains_virus("dfVIRUSbhg"));
	printf("\ttest2: %d\n", contains_virus("dfyueiui"));

	int file = open("commands.txt", O_RDONLY, O_APPEND);
	printf("\topen: %d\n", file);
	char buf[10];
	printf("\tread: %ld\n", read(file, buf, 10));
	printf("\tclose: %i\n", close(file));




}
