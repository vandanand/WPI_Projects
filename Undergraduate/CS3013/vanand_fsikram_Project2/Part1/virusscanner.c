#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/syscalls.h>
#include <linux/string.h>

unsigned long **sys_call_table;

asmlinkage long (*ref_sys_cs3013_syscall1)(void);
asmlinkage long (*ref_sys_open)(const char *file, int flag, mode_t mode);
asmlinkage long (*ref_sys_read)(int filenumber, void *buf, size_t num);
asmlinkage long (*ref_sys_close)(int filenumber);


asmlinkage long new_sys_cs3013_syscall1(void) {
  printk(KERN_INFO "\"'Hello world?!' More like 'Goodbye, world!' EXTERMINATE!\" -- Dalek");
  return 0;
}

asmlinkage long new_sys_open(const char *filename, int flag, mode_t mode){
	uid_t uid = current_uid().val;
	if(uid >= 1000){
		printk(KERN_INFO "User %d is opening file: %s\n", uid, filename);
	}
	return ref_sys_open(filename, flag, mode);
}

asmlinkage long new_sys_read(int filenumber, void *buf, size_t num){
	uid_t uid = current_uid().val;
	int value = ref_sys_read(filenumber, buf, num);
	if(uid >= 1000 && value > 0) {

		if(strstr(buf, "VIRUS") !=NULL) {
			printk(KERN_INFO "User %d is reading file: %d\n BUT IT HAS A VIRUS!", uid, filenumber);
		}
		else {
			printk(KERN_INFO "User %d is reading file: %d\n", uid, filenumber);
		}
	}
	return value;
}

asmlinkage long new_sys_close(unsigned int filenumber){
	uid_t uid = current_uid().val;
	if(uid >= 1000){
		printk(KERN_INFO "User %d is closing file: %d\n", uid, filenumber);
	}
	return ref_sys_close(filenumber);
}

static unsigned long **find_sys_call_table(void) {
  unsigned long int offset = PAGE_OFFSET;
  unsigned long **sct;
  
  while (offset < ULLONG_MAX) {
    sct = (unsigned long **)offset;

    if (sct[__NR_close] == (unsigned long *) sys_close) {
      printk(KERN_INFO "Interceptor: Found syscall table at address: 0x%02lX",
	     (unsigned long) sct);
      return sct;
    }
    
    offset += sizeof(void *);
  }
  
  return NULL;
}

static void disable_page_protection(void) {
  /*
    Control Register 0 (cr0) governs how the CPU operates.

    Bit #16, if set, prevents the CPU from writing to memory marked as
    read only. Well, our system call table meets that description.
    But, we can simply turn off this bit in cr0 to allow us to make
    changes. We read in the current value of the register (32 or 64
    bits wide), and AND that with a value where all bits are 0 except
    the 16th bit (using a negation operation), causing the write_cr0
    value to have the 16th bit cleared (with all other bits staying
    the same. We will thus be able to write to the protected memory.

    It's good to be the kernel!
  */
  write_cr0 (read_cr0 () & (~ 0x10000));
}

static void enable_page_protection(void) {
  /*
   See the above description for cr0. Here, we use an OR to set the 
   16th bit to re-enable write protection on the CPU.
  */
  write_cr0 (read_cr0 () | 0x10000);
}

static int __init interceptor_start(void) {
  /* Find the system call table */
  if(!(sys_call_table = find_sys_call_table())) {
    /* Well, that didn't work. 
       Cancel the module loading step. */
    return -1;
  }
  
  /* Store a copy of all the existing functions */
  ref_sys_cs3013_syscall1 = (void *)sys_call_table[__NR_cs3013_syscall1];
  ref_sys_open = (void *)sys_call_table[__NR_open];
  ref_sys_read = (void *)sys_call_table[__NR_read];
  ref_sys_close = (void *)sys_call_table[__NR_close];

  /* Replace the existing system calls */
  disable_page_protection();

  sys_call_table[__NR_cs3013_syscall1] = (unsigned long *)new_sys_cs3013_syscall1;
  sys_call_table[__NR_open] = (unsigned long *)new_sys_open;
  sys_call_table[__NR_read] = (unsigned long *)new_sys_read;
  sys_call_table[__NR_close] = (unsigned long *)new_sys_close;
  
  enable_page_protection();
  
  /* And indicate the load was successful */
  printk(KERN_INFO "Loaded interceptor!");

  return 0;
}

static void __exit interceptor_end(void) {
  /* If we don't know what the syscall table is, don't bother. */
  if(!sys_call_table)
    return;
  
  /* Revert all system calls to what they were before we began. */
  disable_page_protection();
  sys_call_table[__NR_cs3013_syscall1] = (unsigned long *)ref_sys_cs3013_syscall1;
  sys_call_table[__NR_open] = (unsigned long *)ref_sys_open;
  sys_call_table[__NR_read] = (unsigned long *)ref_sys_read;
  sys_call_table[__NR_close] = (unsigned long *)ref_sys_close;
  enable_page_protection();

  printk(KERN_INFO "Unloaded interceptor!");
}

MODULE_LICENSE("GPL");
module_init(interceptor_start);
module_exit(interceptor_end);
