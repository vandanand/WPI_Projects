#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/syscalls.h>
#include <linux/sched.h>
#include <linux/list.h>
#include <linux/time.h>
#include <linux/cred.h>
#include <linux/types.h>
#include <asm/uaccess.h>
#include <asm-generic/current.h>
#include "struct.h"

unsigned long **sys_call_table;

asmlinkage long (*ref_sys_cs3013_syscall2)(void);

asmlinkage long new_sys_cs3013_syscall2(unsigned short *target_pid, struct ancestry *response){
	struct list_head *node; //accesing list
	struct task_struct *process; //accessing task struct for storing process
	struct task_struct *data; //accessing task struct for storing info on process
	struct ancestry tree; //accessing the struct node 
	int x, y, z = 0; //initializing variables
	pid_t targetPID; //variable to store target PID that we find 

	data = pid_task(find_vpid(*target_pid), PIDTYPE_PID); //search for task with given PID

     //given function to check validity of arguments passed by caller and transfer info between the kernel and user space 
	if(copy_from_user(&tree, response, sizeof tree)){
		return EFAULT;
	}
    
	//find the target PID to find the processes
	targetPID = task_pid_nr(data);
	printk("Target process id: %i\n", (int)targetPID); 
	tree.target[0] = targetPID;

	//find the children
	list_for_each(node, &data->children){//look into list and point to child
		process = list_entry(node, struct task_struct, sibling);
		printk("Child process id: %i\n", process->pid);
		tree.children[x] = process->pid; //store what we found
		x++; //keep going to next one
	}


	//find the siblings
	list_for_each(node, &data->parent->children){//look into list and point to parent children
		process = list_entry(node, struct task_struct, sibling); 
		if (process->pid != targetPID){
			printk("Sibling process id: %i\n", process->pid);
			tree.siblings[z] = process->pid; //store what we found
			z++; //keep going to next one
		}
	}

	//find the ancestors
	while(process->pid > 1){
		process = process->parent; //find parent
		if (process->pid != targetPID){ //if not equal to target PID then...
			printk(KERN_INFO "Ancestor process id: %d\n", process->pid);
			tree.ancestors[y] = process->pid; //store what we found
			y++; //keep going to next one
		}
    	}


    //given function to check validity of arguments passed by caller and transfer info between the kernel and user space 
	if(copy_to_user(response, &tree, sizeof tree)){
		return EFAULT;
	}

     return 1;
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
    ref_sys_cs3013_syscall2 = (void *)sys_call_table[__NR_cs3013_syscall2];

    /* Replace the existing system calls */
    disable_page_protection();

    sys_call_table[__NR_cs3013_syscall2] = (unsigned long *)new_sys_cs3013_syscall2;

    enable_page_protection();

    /* And indicate the load was successful */
    printk(KERN_INFO "Loaded interceptor!\n");

    return 0;
}

static void __exit interceptor_end(void) {
    /* If we don't know what the syscall table is, don't bother. */
    if(!sys_call_table)
        return;

    /* Revert all system calls to what they were before we began. */
    disable_page_protection();
    
    sys_call_table[__NR_cs3013_syscall2] = (unsigned long *)ref_sys_cs3013_syscall2;
    
    enable_page_protection();

    printk(KERN_INFO "Unloaded interceptor!\n");
}

MODULE_LICENSE("GPL");
module_init(interceptor_start);
module_exit(interceptor_end);
