
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c48 <_init>:
  400c48:	48 83 ec 08          	sub    $0x8,%rsp
  400c4c:	48 8b 05 a5 43 20 00 	mov    0x2043a5(%rip),%rax        # 604ff8 <_DYNAMIC+0x1d0>
  400c53:	48 85 c0             	test   %rax,%rax
  400c56:	74 05                	je     400c5d <_init+0x15>
  400c58:	e8 43 02 00 00       	callq  400ea0 <socket@plt+0x10>
  400c5d:	48 83 c4 08          	add    $0x8,%rsp
  400c61:	c3                   	retq   

Disassembly of section .plt:

0000000000400c70 <strcasecmp@plt-0x10>:
  400c70:	ff 35 92 43 20 00    	pushq  0x204392(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c76:	ff 25 94 43 20 00    	jmpq   *0x204394(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c80 <strcasecmp@plt>:
  400c80:	ff 25 92 43 20 00    	jmpq   *0x204392(%rip)        # 605018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400c86:	68 00 00 00 00       	pushq  $0x0
  400c8b:	e9 e0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400c90 <__errno_location@plt>:
  400c90:	ff 25 8a 43 20 00    	jmpq   *0x20438a(%rip)        # 605020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400c96:	68 01 00 00 00       	pushq  $0x1
  400c9b:	e9 d0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400ca0 <srandom@plt>:
  400ca0:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 605028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400ca6:	68 02 00 00 00       	pushq  $0x2
  400cab:	e9 c0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400cb0 <strncmp@plt>:
  400cb0:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 605030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400cb6:	68 03 00 00 00       	pushq  $0x3
  400cbb:	e9 b0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400cc0 <strcpy@plt>:
  400cc0:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400cc6:	68 04 00 00 00       	pushq  $0x4
  400ccb:	e9 a0 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400cd0 <puts@plt>:
  400cd0:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 605040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400cd6:	68 05 00 00 00       	pushq  $0x5
  400cdb:	e9 90 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400ce0 <write@plt>:
  400ce0:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 605048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400ce6:	68 06 00 00 00       	pushq  $0x6
  400ceb:	e9 80 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400cf0 <__stack_chk_fail@plt>:
  400cf0:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 605050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400cf6:	68 07 00 00 00       	pushq  $0x7
  400cfb:	e9 70 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d00 <mmap@plt>:
  400d00:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 605058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400d06:	68 08 00 00 00       	pushq  $0x8
  400d0b:	e9 60 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d10 <memset@plt>:
  400d10:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400d16:	68 09 00 00 00       	pushq  $0x9
  400d1b:	e9 50 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d20 <alarm@plt>:
  400d20:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400d26:	68 0a 00 00 00       	pushq  $0xa
  400d2b:	e9 40 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d30 <close@plt>:
  400d30:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400d36:	68 0b 00 00 00       	pushq  $0xb
  400d3b:	e9 30 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d40 <read@plt>:
  400d40:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400d46:	68 0c 00 00 00       	pushq  $0xc
  400d4b:	e9 20 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d50 <__libc_start_main@plt>:
  400d50:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400d56:	68 0d 00 00 00       	pushq  $0xd
  400d5b:	e9 10 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d60 <signal@plt>:
  400d60:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d66:	68 0e 00 00 00       	pushq  $0xe
  400d6b:	e9 00 ff ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d70 <gethostbyname@plt>:
  400d70:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 605090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d76:	68 0f 00 00 00       	pushq  $0xf
  400d7b:	e9 f0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d80 <__memmove_chk@plt>:
  400d80:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 605098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400d86:	68 10 00 00 00       	pushq  $0x10
  400d8b:	e9 e0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400d90 <strtol@plt>:
  400d90:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 6050a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400d96:	68 11 00 00 00       	pushq  $0x11
  400d9b:	e9 d0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400da0 <memcpy@plt>:
  400da0:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 6050a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400da6:	68 12 00 00 00       	pushq  $0x12
  400dab:	e9 c0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400db0 <time@plt>:
  400db0:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 6050b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400db6:	68 13 00 00 00       	pushq  $0x13
  400dbb:	e9 b0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400dc0 <random@plt>:
  400dc0:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 6050b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400dc6:	68 14 00 00 00       	pushq  $0x14
  400dcb:	e9 a0 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400dd0 <_IO_getc@plt>:
  400dd0:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 6050c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400dd6:	68 15 00 00 00       	pushq  $0x15
  400ddb:	e9 90 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400de0 <__isoc99_sscanf@plt>:
  400de0:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 6050c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400de6:	68 16 00 00 00       	pushq  $0x16
  400deb:	e9 80 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400df0 <munmap@plt>:
  400df0:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 6050d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400df6:	68 17 00 00 00       	pushq  $0x17
  400dfb:	e9 70 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e00 <__printf_chk@plt>:
  400e00:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 6050d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400e06:	68 18 00 00 00       	pushq  $0x18
  400e0b:	e9 60 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e10 <fopen@plt>:
  400e10:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 6050e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400e16:	68 19 00 00 00       	pushq  $0x19
  400e1b:	e9 50 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e20 <getopt@plt>:
  400e20:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 6050e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400e26:	68 1a 00 00 00       	pushq  $0x1a
  400e2b:	e9 40 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e30 <strtoul@plt>:
  400e30:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 6050f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400e36:	68 1b 00 00 00       	pushq  $0x1b
  400e3b:	e9 30 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e40 <gethostname@plt>:
  400e40:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 6050f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400e46:	68 1c 00 00 00       	pushq  $0x1c
  400e4b:	e9 20 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e50 <exit@plt>:
  400e50:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 605100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400e56:	68 1d 00 00 00       	pushq  $0x1d
  400e5b:	e9 10 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e60 <connect@plt>:
  400e60:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 605108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400e66:	68 1e 00 00 00       	pushq  $0x1e
  400e6b:	e9 00 fe ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e70 <__fprintf_chk@plt>:
  400e70:	ff 25 9a 42 20 00    	jmpq   *0x20429a(%rip)        # 605110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400e76:	68 1f 00 00 00       	pushq  $0x1f
  400e7b:	e9 f0 fd ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e80 <__sprintf_chk@plt>:
  400e80:	ff 25 92 42 20 00    	jmpq   *0x204292(%rip)        # 605118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400e86:	68 20 00 00 00       	pushq  $0x20
  400e8b:	e9 e0 fd ff ff       	jmpq   400c70 <_init+0x28>

0000000000400e90 <socket@plt>:
  400e90:	ff 25 8a 42 20 00    	jmpq   *0x20428a(%rip)        # 605120 <_GLOBAL_OFFSET_TABLE_+0x120>
  400e96:	68 21 00 00 00       	pushq  $0x21
  400e9b:	e9 d0 fd ff ff       	jmpq   400c70 <_init+0x28>

Disassembly of section .plt.got:

0000000000400ea0 <.plt.got>:
  400ea0:	ff 25 52 41 20 00    	jmpq   *0x204152(%rip)        # 604ff8 <_DYNAMIC+0x1d0>
  400ea6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400eb0 <_start>:
  400eb0:	31 ed                	xor    %ebp,%ebp
  400eb2:	49 89 d1             	mov    %rdx,%r9
  400eb5:	5e                   	pop    %rsi
  400eb6:	48 89 e2             	mov    %rsp,%rdx
  400eb9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400ebd:	50                   	push   %rax
  400ebe:	54                   	push   %rsp
  400ebf:	49 c7 c0 40 2f 40 00 	mov    $0x402f40,%r8
  400ec6:	48 c7 c1 d0 2e 40 00 	mov    $0x402ed0,%rcx
  400ecd:	48 c7 c7 b5 11 40 00 	mov    $0x4011b5,%rdi
  400ed4:	e8 77 fe ff ff       	callq  400d50 <__libc_start_main@plt>
  400ed9:	f4                   	hlt    
  400eda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ee0 <deregister_tm_clones>:
  400ee0:	b8 b7 54 60 00       	mov    $0x6054b7,%eax
  400ee5:	55                   	push   %rbp
  400ee6:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
  400eec:	48 83 f8 0e          	cmp    $0xe,%rax
  400ef0:	48 89 e5             	mov    %rsp,%rbp
  400ef3:	76 1b                	jbe    400f10 <deregister_tm_clones+0x30>
  400ef5:	b8 00 00 00 00       	mov    $0x0,%eax
  400efa:	48 85 c0             	test   %rax,%rax
  400efd:	74 11                	je     400f10 <deregister_tm_clones+0x30>
  400eff:	5d                   	pop    %rbp
  400f00:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f05:	ff e0                	jmpq   *%rax
  400f07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400f0e:	00 00 
  400f10:	5d                   	pop    %rbp
  400f11:	c3                   	retq   
  400f12:	0f 1f 40 00          	nopl   0x0(%rax)
  400f16:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f1d:	00 00 00 

0000000000400f20 <register_tm_clones>:
  400f20:	be b0 54 60 00       	mov    $0x6054b0,%esi
  400f25:	55                   	push   %rbp
  400f26:	48 81 ee b0 54 60 00 	sub    $0x6054b0,%rsi
  400f2d:	48 c1 fe 03          	sar    $0x3,%rsi
  400f31:	48 89 e5             	mov    %rsp,%rbp
  400f34:	48 89 f0             	mov    %rsi,%rax
  400f37:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f3b:	48 01 c6             	add    %rax,%rsi
  400f3e:	48 d1 fe             	sar    %rsi
  400f41:	74 15                	je     400f58 <register_tm_clones+0x38>
  400f43:	b8 00 00 00 00       	mov    $0x0,%eax
  400f48:	48 85 c0             	test   %rax,%rax
  400f4b:	74 0b                	je     400f58 <register_tm_clones+0x38>
  400f4d:	5d                   	pop    %rbp
  400f4e:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f53:	ff e0                	jmpq   *%rax
  400f55:	0f 1f 00             	nopl   (%rax)
  400f58:	5d                   	pop    %rbp
  400f59:	c3                   	retq   
  400f5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f60 <__do_global_dtors_aux>:
  400f60:	80 3d 81 45 20 00 00 	cmpb   $0x0,0x204581(%rip)        # 6054e8 <completed.7585>
  400f67:	75 11                	jne    400f7a <__do_global_dtors_aux+0x1a>
  400f69:	55                   	push   %rbp
  400f6a:	48 89 e5             	mov    %rsp,%rbp
  400f6d:	e8 6e ff ff ff       	callq  400ee0 <deregister_tm_clones>
  400f72:	5d                   	pop    %rbp
  400f73:	c6 05 6e 45 20 00 01 	movb   $0x1,0x20456e(%rip)        # 6054e8 <completed.7585>
  400f7a:	f3 c3                	repz retq 
  400f7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f80 <frame_dummy>:
  400f80:	bf 20 4e 60 00       	mov    $0x604e20,%edi
  400f85:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400f89:	75 05                	jne    400f90 <frame_dummy+0x10>
  400f8b:	eb 93                	jmp    400f20 <register_tm_clones>
  400f8d:	0f 1f 00             	nopl   (%rax)
  400f90:	b8 00 00 00 00       	mov    $0x0,%eax
  400f95:	48 85 c0             	test   %rax,%rax
  400f98:	74 f1                	je     400f8b <frame_dummy+0xb>
  400f9a:	55                   	push   %rbp
  400f9b:	48 89 e5             	mov    %rsp,%rbp
  400f9e:	ff d0                	callq  *%rax
  400fa0:	5d                   	pop    %rbp
  400fa1:	e9 7a ff ff ff       	jmpq   400f20 <register_tm_clones>

0000000000400fa6 <usage>:
  400fa6:	48 83 ec 08          	sub    $0x8,%rsp
  400faa:	48 89 fa             	mov    %rdi,%rdx
  400fad:	83 3d 74 45 20 00 00 	cmpl   $0x0,0x204574(%rip)        # 605528 <is_checker>
  400fb4:	74 3e                	je     400ff4 <usage+0x4e>
  400fb6:	be 58 2f 40 00       	mov    $0x402f58,%esi
  400fbb:	bf 01 00 00 00       	mov    $0x1,%edi
  400fc0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fc5:	e8 36 fe ff ff       	callq  400e00 <__printf_chk@plt>
  400fca:	bf 90 2f 40 00       	mov    $0x402f90,%edi
  400fcf:	e8 fc fc ff ff       	callq  400cd0 <puts@plt>
  400fd4:	bf 08 31 40 00       	mov    $0x403108,%edi
  400fd9:	e8 f2 fc ff ff       	callq  400cd0 <puts@plt>
  400fde:	bf b8 2f 40 00       	mov    $0x402fb8,%edi
  400fe3:	e8 e8 fc ff ff       	callq  400cd0 <puts@plt>
  400fe8:	bf 22 31 40 00       	mov    $0x403122,%edi
  400fed:	e8 de fc ff ff       	callq  400cd0 <puts@plt>
  400ff2:	eb 32                	jmp    401026 <usage+0x80>
  400ff4:	be 3e 31 40 00       	mov    $0x40313e,%esi
  400ff9:	bf 01 00 00 00       	mov    $0x1,%edi
  400ffe:	b8 00 00 00 00       	mov    $0x0,%eax
  401003:	e8 f8 fd ff ff       	callq  400e00 <__printf_chk@plt>
  401008:	bf e0 2f 40 00       	mov    $0x402fe0,%edi
  40100d:	e8 be fc ff ff       	callq  400cd0 <puts@plt>
  401012:	bf 08 30 40 00       	mov    $0x403008,%edi
  401017:	e8 b4 fc ff ff       	callq  400cd0 <puts@plt>
  40101c:	bf 5c 31 40 00       	mov    $0x40315c,%edi
  401021:	e8 aa fc ff ff       	callq  400cd0 <puts@plt>
  401026:	bf 00 00 00 00       	mov    $0x0,%edi
  40102b:	e8 20 fe ff ff       	callq  400e50 <exit@plt>

0000000000401030 <initialize_target>:
  401030:	55                   	push   %rbp
  401031:	53                   	push   %rbx
  401032:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  401039:	89 f5                	mov    %esi,%ebp
  40103b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401042:	00 00 
  401044:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  40104b:	00 
  40104c:	31 c0                	xor    %eax,%eax
  40104e:	89 3d c4 44 20 00    	mov    %edi,0x2044c4(%rip)        # 605518 <check_level>
  401054:	8b 3d 0e 41 20 00    	mov    0x20410e(%rip),%edi        # 605168 <target_id>
  40105a:	e8 46 1e 00 00       	callq  402ea5 <gencookie>
  40105f:	89 05 bf 44 20 00    	mov    %eax,0x2044bf(%rip)        # 605524 <cookie>
  401065:	89 c7                	mov    %eax,%edi
  401067:	e8 39 1e 00 00       	callq  402ea5 <gencookie>
  40106c:	89 05 ae 44 20 00    	mov    %eax,0x2044ae(%rip)        # 605520 <authkey>
  401072:	8b 05 f0 40 20 00    	mov    0x2040f0(%rip),%eax        # 605168 <target_id>
  401078:	8d 78 01             	lea    0x1(%rax),%edi
  40107b:	e8 20 fc ff ff       	callq  400ca0 <srandom@plt>
  401080:	e8 3b fd ff ff       	callq  400dc0 <random@plt>
  401085:	89 c7                	mov    %eax,%edi
  401087:	e8 03 03 00 00       	callq  40138f <scramble>
  40108c:	89 c3                	mov    %eax,%ebx
  40108e:	85 ed                	test   %ebp,%ebp
  401090:	74 18                	je     4010aa <initialize_target+0x7a>
  401092:	bf 00 00 00 00       	mov    $0x0,%edi
  401097:	e8 14 fd ff ff       	callq  400db0 <time@plt>
  40109c:	89 c7                	mov    %eax,%edi
  40109e:	e8 fd fb ff ff       	callq  400ca0 <srandom@plt>
  4010a3:	e8 18 fd ff ff       	callq  400dc0 <random@plt>
  4010a8:	eb 05                	jmp    4010af <initialize_target+0x7f>
  4010aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4010af:	01 c3                	add    %eax,%ebx
  4010b1:	0f b7 db             	movzwl %bx,%ebx
  4010b4:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  4010bb:	89 c0                	mov    %eax,%eax
  4010bd:	48 89 05 dc 43 20 00 	mov    %rax,0x2043dc(%rip)        # 6054a0 <buf_offset>
  4010c4:	c6 05 7d 50 20 00 63 	movb   $0x63,0x20507d(%rip)        # 606148 <target_prefix>
  4010cb:	83 3d d6 43 20 00 00 	cmpl   $0x0,0x2043d6(%rip)        # 6054a8 <notify>
  4010d2:	0f 84 bb 00 00 00    	je     401193 <initialize_target+0x163>
  4010d8:	83 3d 49 44 20 00 00 	cmpl   $0x0,0x204449(%rip)        # 605528 <is_checker>
  4010df:	0f 85 ae 00 00 00    	jne    401193 <initialize_target+0x163>
  4010e5:	be 00 01 00 00       	mov    $0x100,%esi
  4010ea:	48 89 e7             	mov    %rsp,%rdi
  4010ed:	e8 4e fd ff ff       	callq  400e40 <gethostname@plt>
  4010f2:	85 c0                	test   %eax,%eax
  4010f4:	74 25                	je     40111b <initialize_target+0xeb>
  4010f6:	bf 38 30 40 00       	mov    $0x403038,%edi
  4010fb:	e8 d0 fb ff ff       	callq  400cd0 <puts@plt>
  401100:	bf 08 00 00 00       	mov    $0x8,%edi
  401105:	e8 46 fd ff ff       	callq  400e50 <exit@plt>
  40110a:	48 89 e6             	mov    %rsp,%rsi
  40110d:	e8 6e fb ff ff       	callq  400c80 <strcasecmp@plt>
  401112:	85 c0                	test   %eax,%eax
  401114:	74 21                	je     401137 <initialize_target+0x107>
  401116:	83 c3 01             	add    $0x1,%ebx
  401119:	eb 05                	jmp    401120 <initialize_target+0xf0>
  40111b:	bb 00 00 00 00       	mov    $0x0,%ebx
  401120:	48 63 c3             	movslq %ebx,%rax
  401123:	48 8b 3c c5 80 51 60 	mov    0x605180(,%rax,8),%rdi
  40112a:	00 
  40112b:	48 85 ff             	test   %rdi,%rdi
  40112e:	75 da                	jne    40110a <initialize_target+0xda>
  401130:	b8 00 00 00 00       	mov    $0x0,%eax
  401135:	eb 05                	jmp    40113c <initialize_target+0x10c>
  401137:	b8 01 00 00 00       	mov    $0x1,%eax
  40113c:	85 c0                	test   %eax,%eax
  40113e:	75 1c                	jne    40115c <initialize_target+0x12c>
  401140:	48 89 e2             	mov    %rsp,%rdx
  401143:	be 70 30 40 00       	mov    $0x403070,%esi
  401148:	bf 01 00 00 00       	mov    $0x1,%edi
  40114d:	e8 ae fc ff ff       	callq  400e00 <__printf_chk@plt>
  401152:	bf 08 00 00 00       	mov    $0x8,%edi
  401157:	e8 f4 fc ff ff       	callq  400e50 <exit@plt>
  40115c:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401163:	00 
  401164:	e8 a6 1a 00 00       	callq  402c0f <init_driver>
  401169:	85 c0                	test   %eax,%eax
  40116b:	79 26                	jns    401193 <initialize_target+0x163>
  40116d:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401174:	00 
  401175:	be b0 30 40 00       	mov    $0x4030b0,%esi
  40117a:	bf 01 00 00 00       	mov    $0x1,%edi
  40117f:	b8 00 00 00 00       	mov    $0x0,%eax
  401184:	e8 77 fc ff ff       	callq  400e00 <__printf_chk@plt>
  401189:	bf 08 00 00 00       	mov    $0x8,%edi
  40118e:	e8 bd fc ff ff       	callq  400e50 <exit@plt>
  401193:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  40119a:	00 
  40119b:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4011a2:	00 00 
  4011a4:	74 05                	je     4011ab <initialize_target+0x17b>
  4011a6:	e8 45 fb ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  4011ab:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4011b2:	5b                   	pop    %rbx
  4011b3:	5d                   	pop    %rbp
  4011b4:	c3                   	retq   

00000000004011b5 <main>:
  4011b5:	41 56                	push   %r14
  4011b7:	41 55                	push   %r13
  4011b9:	41 54                	push   %r12
  4011bb:	55                   	push   %rbp
  4011bc:	53                   	push   %rbx
  4011bd:	41 89 fc             	mov    %edi,%r12d
  4011c0:	48 89 f3             	mov    %rsi,%rbx
  4011c3:	be 4a 1f 40 00       	mov    $0x401f4a,%esi
  4011c8:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011cd:	e8 8e fb ff ff       	callq  400d60 <signal@plt>
  4011d2:	be fc 1e 40 00       	mov    $0x401efc,%esi
  4011d7:	bf 07 00 00 00       	mov    $0x7,%edi
  4011dc:	e8 7f fb ff ff       	callq  400d60 <signal@plt>
  4011e1:	be 98 1f 40 00       	mov    $0x401f98,%esi
  4011e6:	bf 04 00 00 00       	mov    $0x4,%edi
  4011eb:	e8 70 fb ff ff       	callq  400d60 <signal@plt>
  4011f0:	83 3d 31 43 20 00 00 	cmpl   $0x0,0x204331(%rip)        # 605528 <is_checker>
  4011f7:	74 20                	je     401219 <main+0x64>
  4011f9:	be e6 1f 40 00       	mov    $0x401fe6,%esi
  4011fe:	bf 0e 00 00 00       	mov    $0xe,%edi
  401203:	e8 58 fb ff ff       	callq  400d60 <signal@plt>
  401208:	bf 05 00 00 00       	mov    $0x5,%edi
  40120d:	e8 0e fb ff ff       	callq  400d20 <alarm@plt>
  401212:	bd 7a 31 40 00       	mov    $0x40317a,%ebp
  401217:	eb 05                	jmp    40121e <main+0x69>
  401219:	bd 75 31 40 00       	mov    $0x403175,%ebp
  40121e:	48 8b 05 9b 42 20 00 	mov    0x20429b(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  401225:	48 89 05 e4 42 20 00 	mov    %rax,0x2042e4(%rip)        # 605510 <infile>
  40122c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401232:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401238:	e9 c6 00 00 00       	jmpq   401303 <main+0x14e>
  40123d:	83 e8 61             	sub    $0x61,%eax
  401240:	3c 10                	cmp    $0x10,%al
  401242:	0f 87 9c 00 00 00    	ja     4012e4 <main+0x12f>
  401248:	0f b6 c0             	movzbl %al,%eax
  40124b:	ff 24 c5 c0 31 40 00 	jmpq   *0x4031c0(,%rax,8)
  401252:	48 8b 3b             	mov    (%rbx),%rdi
  401255:	e8 4c fd ff ff       	callq  400fa6 <usage>
  40125a:	be 21 33 40 00       	mov    $0x403321,%esi
  40125f:	48 8b 3d 62 42 20 00 	mov    0x204262(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401266:	e8 a5 fb ff ff       	callq  400e10 <fopen@plt>
  40126b:	48 89 05 9e 42 20 00 	mov    %rax,0x20429e(%rip)        # 605510 <infile>
  401272:	48 85 c0             	test   %rax,%rax
  401275:	0f 85 88 00 00 00    	jne    401303 <main+0x14e>
  40127b:	48 8b 0d 46 42 20 00 	mov    0x204246(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  401282:	ba 82 31 40 00       	mov    $0x403182,%edx
  401287:	be 01 00 00 00       	mov    $0x1,%esi
  40128c:	48 8b 3d 4d 42 20 00 	mov    0x20424d(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  401293:	e8 d8 fb ff ff       	callq  400e70 <__fprintf_chk@plt>
  401298:	b8 01 00 00 00       	mov    $0x1,%eax
  40129d:	e9 e4 00 00 00       	jmpq   401386 <main+0x1d1>
  4012a2:	ba 10 00 00 00       	mov    $0x10,%edx
  4012a7:	be 00 00 00 00       	mov    $0x0,%esi
  4012ac:	48 8b 3d 15 42 20 00 	mov    0x204215(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012b3:	e8 78 fb ff ff       	callq  400e30 <strtoul@plt>
  4012b8:	41 89 c6             	mov    %eax,%r14d
  4012bb:	eb 46                	jmp    401303 <main+0x14e>
  4012bd:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012c2:	be 00 00 00 00       	mov    $0x0,%esi
  4012c7:	48 8b 3d fa 41 20 00 	mov    0x2041fa(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012ce:	e8 bd fa ff ff       	callq  400d90 <strtol@plt>
  4012d3:	41 89 c5             	mov    %eax,%r13d
  4012d6:	eb 2b                	jmp    401303 <main+0x14e>
  4012d8:	c7 05 c6 41 20 00 00 	movl   $0x0,0x2041c6(%rip)        # 6054a8 <notify>
  4012df:	00 00 00 
  4012e2:	eb 1f                	jmp    401303 <main+0x14e>
  4012e4:	0f be d2             	movsbl %dl,%edx
  4012e7:	be 9f 31 40 00       	mov    $0x40319f,%esi
  4012ec:	bf 01 00 00 00       	mov    $0x1,%edi
  4012f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4012f6:	e8 05 fb ff ff       	callq  400e00 <__printf_chk@plt>
  4012fb:	48 8b 3b             	mov    (%rbx),%rdi
  4012fe:	e8 a3 fc ff ff       	callq  400fa6 <usage>
  401303:	48 89 ea             	mov    %rbp,%rdx
  401306:	48 89 de             	mov    %rbx,%rsi
  401309:	44 89 e7             	mov    %r12d,%edi
  40130c:	e8 0f fb ff ff       	callq  400e20 <getopt@plt>
  401311:	89 c2                	mov    %eax,%edx
  401313:	3c ff                	cmp    $0xff,%al
  401315:	0f 85 22 ff ff ff    	jne    40123d <main+0x88>
  40131b:	be 00 00 00 00       	mov    $0x0,%esi
  401320:	44 89 ef             	mov    %r13d,%edi
  401323:	e8 08 fd ff ff       	callq  401030 <initialize_target>
  401328:	83 3d f9 41 20 00 00 	cmpl   $0x0,0x2041f9(%rip)        # 605528 <is_checker>
  40132f:	74 2a                	je     40135b <main+0x1a6>
  401331:	44 3b 35 e8 41 20 00 	cmp    0x2041e8(%rip),%r14d        # 605520 <authkey>
  401338:	74 21                	je     40135b <main+0x1a6>
  40133a:	44 89 f2             	mov    %r14d,%edx
  40133d:	be d8 30 40 00       	mov    $0x4030d8,%esi
  401342:	bf 01 00 00 00       	mov    $0x1,%edi
  401347:	b8 00 00 00 00       	mov    $0x0,%eax
  40134c:	e8 af fa ff ff       	callq  400e00 <__printf_chk@plt>
  401351:	b8 00 00 00 00       	mov    $0x0,%eax
  401356:	e8 3d 08 00 00       	callq  401b98 <check_fail>
  40135b:	8b 15 c3 41 20 00    	mov    0x2041c3(%rip),%edx        # 605524 <cookie>
  401361:	be b2 31 40 00       	mov    $0x4031b2,%esi
  401366:	bf 01 00 00 00       	mov    $0x1,%edi
  40136b:	b8 00 00 00 00       	mov    $0x0,%eax
  401370:	e8 8b fa ff ff       	callq  400e00 <__printf_chk@plt>
  401375:	48 8b 3d 24 41 20 00 	mov    0x204124(%rip),%rdi        # 6054a0 <buf_offset>
  40137c:	e8 65 0d 00 00       	callq  4020e6 <stable_launch>
  401381:	b8 00 00 00 00       	mov    $0x0,%eax
  401386:	5b                   	pop    %rbx
  401387:	5d                   	pop    %rbp
  401388:	41 5c                	pop    %r12
  40138a:	41 5d                	pop    %r13
  40138c:	41 5e                	pop    %r14
  40138e:	c3                   	retq   

000000000040138f <scramble>:
  40138f:	48 83 ec 38          	sub    $0x38,%rsp
  401393:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40139a:	00 00 
  40139c:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4013a1:	31 c0                	xor    %eax,%eax
  4013a3:	eb 10                	jmp    4013b5 <scramble+0x26>
  4013a5:	69 d0 ad 0a 00 00    	imul   $0xaad,%eax,%edx
  4013ab:	01 fa                	add    %edi,%edx
  4013ad:	89 c1                	mov    %eax,%ecx
  4013af:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  4013b2:	83 c0 01             	add    $0x1,%eax
  4013b5:	83 f8 09             	cmp    $0x9,%eax
  4013b8:	76 eb                	jbe    4013a5 <scramble+0x16>
  4013ba:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4013be:	69 c0 28 33 00 00    	imul   $0x3328,%eax,%eax
  4013c4:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4013c8:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4013cc:	69 c0 9f 17 00 00    	imul   $0x179f,%eax,%eax
  4013d2:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4013d6:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4013da:	69 c0 9c d3 00 00    	imul   $0xd39c,%eax,%eax
  4013e0:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4013e4:	8b 04 24             	mov    (%rsp),%eax
  4013e7:	69 c0 9f 41 00 00    	imul   $0x419f,%eax,%eax
  4013ed:	89 04 24             	mov    %eax,(%rsp)
  4013f0:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4013f4:	69 c0 b7 e9 00 00    	imul   $0xe9b7,%eax,%eax
  4013fa:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4013fe:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401402:	69 c0 7f 69 00 00    	imul   $0x697f,%eax,%eax
  401408:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40140c:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401410:	69 c0 3d 70 00 00    	imul   $0x703d,%eax,%eax
  401416:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40141a:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40141e:	69 c0 52 29 00 00    	imul   $0x2952,%eax,%eax
  401424:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401428:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40142c:	69 c0 c9 a0 00 00    	imul   $0xa0c9,%eax,%eax
  401432:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401436:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40143a:	69 c0 61 25 00 00    	imul   $0x2561,%eax,%eax
  401440:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401444:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401448:	69 c0 e7 5d 00 00    	imul   $0x5de7,%eax,%eax
  40144e:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401452:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401456:	69 c0 2c 8b 00 00    	imul   $0x8b2c,%eax,%eax
  40145c:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401460:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401464:	69 c0 cf ca 00 00    	imul   $0xcacf,%eax,%eax
  40146a:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40146e:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401472:	69 c0 6c 64 00 00    	imul   $0x646c,%eax,%eax
  401478:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40147c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401480:	69 c0 f1 c6 00 00    	imul   $0xc6f1,%eax,%eax
  401486:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40148a:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40148e:	69 c0 7c 15 00 00    	imul   $0x157c,%eax,%eax
  401494:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401498:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40149c:	69 c0 97 db 00 00    	imul   $0xdb97,%eax,%eax
  4014a2:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4014a6:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014aa:	69 c0 5b 2f 00 00    	imul   $0x2f5b,%eax,%eax
  4014b0:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4014b4:	8b 04 24             	mov    (%rsp),%eax
  4014b7:	69 c0 44 bc 00 00    	imul   $0xbc44,%eax,%eax
  4014bd:	89 04 24             	mov    %eax,(%rsp)
  4014c0:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014c4:	69 c0 6c c7 00 00    	imul   $0xc76c,%eax,%eax
  4014ca:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014ce:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4014d2:	69 c0 c2 2d 00 00    	imul   $0x2dc2,%eax,%eax
  4014d8:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4014dc:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014e0:	69 c0 24 fd 00 00    	imul   $0xfd24,%eax,%eax
  4014e6:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4014ea:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4014ee:	69 c0 be c9 00 00    	imul   $0xc9be,%eax,%eax
  4014f4:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4014f8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4014fc:	69 c0 96 cf 00 00    	imul   $0xcf96,%eax,%eax
  401502:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401506:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40150a:	69 c0 39 47 00 00    	imul   $0x4739,%eax,%eax
  401510:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401514:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401518:	69 c0 12 b9 00 00    	imul   $0xb912,%eax,%eax
  40151e:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401522:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401526:	69 c0 f6 19 00 00    	imul   $0x19f6,%eax,%eax
  40152c:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401530:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401534:	69 c0 44 9e 00 00    	imul   $0x9e44,%eax,%eax
  40153a:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40153e:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401542:	69 c0 1b ea 00 00    	imul   $0xea1b,%eax,%eax
  401548:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40154c:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401550:	69 c0 94 ef 00 00    	imul   $0xef94,%eax,%eax
  401556:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40155a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40155e:	69 c0 f7 fc 00 00    	imul   $0xfcf7,%eax,%eax
  401564:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401568:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40156c:	69 c0 25 ab 00 00    	imul   $0xab25,%eax,%eax
  401572:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401576:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40157a:	69 c0 2d 32 00 00    	imul   $0x322d,%eax,%eax
  401580:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401584:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401588:	69 c0 c2 87 00 00    	imul   $0x87c2,%eax,%eax
  40158e:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401592:	8b 04 24             	mov    (%rsp),%eax
  401595:	69 c0 7a 4b 00 00    	imul   $0x4b7a,%eax,%eax
  40159b:	89 04 24             	mov    %eax,(%rsp)
  40159e:	8b 04 24             	mov    (%rsp),%eax
  4015a1:	69 c0 6d 94 00 00    	imul   $0x946d,%eax,%eax
  4015a7:	89 04 24             	mov    %eax,(%rsp)
  4015aa:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4015ae:	69 c0 1a 80 00 00    	imul   $0x801a,%eax,%eax
  4015b4:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4015b8:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4015bc:	69 c0 3c 17 00 00    	imul   $0x173c,%eax,%eax
  4015c2:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4015c6:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4015ca:	69 c0 07 b8 00 00    	imul   $0xb807,%eax,%eax
  4015d0:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4015d4:	8b 04 24             	mov    (%rsp),%eax
  4015d7:	69 c0 5f b4 00 00    	imul   $0xb45f,%eax,%eax
  4015dd:	89 04 24             	mov    %eax,(%rsp)
  4015e0:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4015e4:	69 c0 c9 db 00 00    	imul   $0xdbc9,%eax,%eax
  4015ea:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4015ee:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015f2:	69 c0 61 a4 00 00    	imul   $0xa461,%eax,%eax
  4015f8:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015fc:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401600:	69 c0 b0 b1 00 00    	imul   $0xb1b0,%eax,%eax
  401606:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40160a:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40160e:	69 c0 84 da 00 00    	imul   $0xda84,%eax,%eax
  401614:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401618:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40161c:	69 c0 55 45 00 00    	imul   $0x4555,%eax,%eax
  401622:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401626:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40162a:	69 c0 d7 4c 00 00    	imul   $0x4cd7,%eax,%eax
  401630:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401634:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401638:	69 c0 2a cf 00 00    	imul   $0xcf2a,%eax,%eax
  40163e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401642:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401646:	69 c0 dc 1a 00 00    	imul   $0x1adc,%eax,%eax
  40164c:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401650:	8b 44 24 20          	mov    0x20(%rsp),%eax
  401654:	69 c0 7c d2 00 00    	imul   $0xd27c,%eax,%eax
  40165a:	89 44 24 20          	mov    %eax,0x20(%rsp)
  40165e:	8b 04 24             	mov    (%rsp),%eax
  401661:	69 c0 c8 ef 00 00    	imul   $0xefc8,%eax,%eax
  401667:	89 04 24             	mov    %eax,(%rsp)
  40166a:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40166e:	69 c0 cd f1 00 00    	imul   $0xf1cd,%eax,%eax
  401674:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401678:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40167c:	69 c0 32 97 00 00    	imul   $0x9732,%eax,%eax
  401682:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401686:	8b 04 24             	mov    (%rsp),%eax
  401689:	69 c0 c7 15 00 00    	imul   $0x15c7,%eax,%eax
  40168f:	89 04 24             	mov    %eax,(%rsp)
  401692:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401696:	69 c0 bf bb 00 00    	imul   $0xbbbf,%eax,%eax
  40169c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4016a0:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4016a4:	69 c0 40 95 00 00    	imul   $0x9540,%eax,%eax
  4016aa:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4016ae:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016b2:	69 c0 0f cd 00 00    	imul   $0xcd0f,%eax,%eax
  4016b8:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016bc:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4016c0:	69 c0 8f dd 00 00    	imul   $0xdd8f,%eax,%eax
  4016c6:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4016ca:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4016ce:	69 c0 c8 66 00 00    	imul   $0x66c8,%eax,%eax
  4016d4:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4016d8:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4016dc:	69 c0 15 b4 00 00    	imul   $0xb415,%eax,%eax
  4016e2:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4016e6:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016ea:	69 c0 0a 2b 00 00    	imul   $0x2b0a,%eax,%eax
  4016f0:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4016f4:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016f8:	69 c0 66 0b 00 00    	imul   $0xb66,%eax,%eax
  4016fe:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401702:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401706:	69 c0 b8 3b 00 00    	imul   $0x3bb8,%eax,%eax
  40170c:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401710:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401714:	69 c0 dd 6f 00 00    	imul   $0x6fdd,%eax,%eax
  40171a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40171e:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401722:	69 c0 e7 db 00 00    	imul   $0xdbe7,%eax,%eax
  401728:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40172c:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401730:	69 c0 32 f9 00 00    	imul   $0xf932,%eax,%eax
  401736:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40173a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40173e:	69 c0 4f 60 00 00    	imul   $0x604f,%eax,%eax
  401744:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401748:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40174c:	69 c0 e5 4f 00 00    	imul   $0x4fe5,%eax,%eax
  401752:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401756:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40175a:	69 c0 e6 5c 00 00    	imul   $0x5ce6,%eax,%eax
  401760:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401764:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401768:	69 c0 f0 a5 00 00    	imul   $0xa5f0,%eax,%eax
  40176e:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401772:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401776:	69 c0 7c 33 00 00    	imul   $0x337c,%eax,%eax
  40177c:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401780:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401784:	69 c0 c3 88 00 00    	imul   $0x88c3,%eax,%eax
  40178a:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40178e:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401792:	69 c0 3a ac 00 00    	imul   $0xac3a,%eax,%eax
  401798:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40179c:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017a0:	69 c0 fc 71 00 00    	imul   $0x71fc,%eax,%eax
  4017a6:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017aa:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017ae:	69 c0 92 f5 00 00    	imul   $0xf592,%eax,%eax
  4017b4:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017b8:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017bc:	69 c0 50 54 00 00    	imul   $0x5450,%eax,%eax
  4017c2:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017c6:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4017ca:	69 c0 7c 1f 00 00    	imul   $0x1f7c,%eax,%eax
  4017d0:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4017d4:	8b 04 24             	mov    (%rsp),%eax
  4017d7:	69 c0 7e 98 00 00    	imul   $0x987e,%eax,%eax
  4017dd:	89 04 24             	mov    %eax,(%rsp)
  4017e0:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4017e4:	69 c0 46 3a 00 00    	imul   $0x3a46,%eax,%eax
  4017ea:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4017ee:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4017f2:	69 c0 c8 b1 00 00    	imul   $0xb1c8,%eax,%eax
  4017f8:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4017fc:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401800:	69 c0 b5 4a 00 00    	imul   $0x4ab5,%eax,%eax
  401806:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40180a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40180e:	69 c0 dc e1 00 00    	imul   $0xe1dc,%eax,%eax
  401814:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401818:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40181c:	69 c0 fa 95 00 00    	imul   $0x95fa,%eax,%eax
  401822:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401826:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40182a:	69 c0 87 a2 00 00    	imul   $0xa287,%eax,%eax
  401830:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401834:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401838:	69 c0 6f 97 00 00    	imul   $0x976f,%eax,%eax
  40183e:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401842:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401846:	69 c0 86 0b 00 00    	imul   $0xb86,%eax,%eax
  40184c:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401850:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401854:	69 c0 a8 83 00 00    	imul   $0x83a8,%eax,%eax
  40185a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40185e:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401862:	69 c0 76 cb 00 00    	imul   $0xcb76,%eax,%eax
  401868:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  40186c:	8b 04 24             	mov    (%rsp),%eax
  40186f:	69 c0 9d fa 00 00    	imul   $0xfa9d,%eax,%eax
  401875:	89 04 24             	mov    %eax,(%rsp)
  401878:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40187c:	69 c0 e6 42 00 00    	imul   $0x42e6,%eax,%eax
  401882:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401886:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40188a:	69 c0 84 63 00 00    	imul   $0x6384,%eax,%eax
  401890:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401894:	8b 04 24             	mov    (%rsp),%eax
  401897:	69 c0 cc 10 00 00    	imul   $0x10cc,%eax,%eax
  40189d:	89 04 24             	mov    %eax,(%rsp)
  4018a0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018a4:	69 c0 ec f6 00 00    	imul   $0xf6ec,%eax,%eax
  4018aa:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018ae:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4018b2:	69 c0 35 de 00 00    	imul   $0xde35,%eax,%eax
  4018b8:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4018bc:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018c0:	69 c0 a7 b1 00 00    	imul   $0xb1a7,%eax,%eax
  4018c6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018ca:	8b 04 24             	mov    (%rsp),%eax
  4018cd:	69 c0 5f 47 00 00    	imul   $0x475f,%eax,%eax
  4018d3:	89 04 24             	mov    %eax,(%rsp)
  4018d6:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4018da:	69 c0 f8 3a 00 00    	imul   $0x3af8,%eax,%eax
  4018e0:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018e4:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018e8:	69 c0 61 a7 00 00    	imul   $0xa761,%eax,%eax
  4018ee:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018f2:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4018f6:	69 c0 fd 5a 00 00    	imul   $0x5afd,%eax,%eax
  4018fc:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401900:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401904:	69 c0 d4 c3 00 00    	imul   $0xc3d4,%eax,%eax
  40190a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40190e:	ba 00 00 00 00       	mov    $0x0,%edx
  401913:	b8 00 00 00 00       	mov    $0x0,%eax
  401918:	eb 0a                	jmp    401924 <scramble+0x595>
  40191a:	89 d1                	mov    %edx,%ecx
  40191c:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  40191f:	01 c8                	add    %ecx,%eax
  401921:	83 c2 01             	add    $0x1,%edx
  401924:	83 fa 09             	cmp    $0x9,%edx
  401927:	76 f1                	jbe    40191a <scramble+0x58b>
  401929:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  40192e:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401935:	00 00 
  401937:	74 05                	je     40193e <scramble+0x5af>
  401939:	e8 b2 f3 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  40193e:	48 83 c4 38          	add    $0x38,%rsp
  401942:	c3                   	retq   

0000000000401943 <getbuf>:
  401943:	48 83 ec 38          	sub    $0x38,%rsp
  401947:	48 89 e7             	mov    %rsp,%rdi
  40194a:	e8 7e 02 00 00       	callq  401bcd <Gets>
  40194f:	b8 01 00 00 00       	mov    $0x1,%eax
  401954:	48 83 c4 38          	add    $0x38,%rsp
  401958:	c3                   	retq   

0000000000401959 <touch1>:
  401959:	48 83 ec 08          	sub    $0x8,%rsp
  40195d:	c7 05 b5 3b 20 00 01 	movl   $0x1,0x203bb5(%rip)        # 60551c <vlevel>
  401964:	00 00 00 
  401967:	bf 2a 33 40 00       	mov    $0x40332a,%edi
  40196c:	e8 5f f3 ff ff       	callq  400cd0 <puts@plt>
  401971:	bf 01 00 00 00       	mov    $0x1,%edi
  401976:	e8 97 04 00 00       	callq  401e12 <validate>
  40197b:	bf 00 00 00 00       	mov    $0x0,%edi
  401980:	e8 cb f4 ff ff       	callq  400e50 <exit@plt>

0000000000401985 <touch2>:
  401985:	48 83 ec 08          	sub    $0x8,%rsp
  401989:	89 fa                	mov    %edi,%edx
  40198b:	c7 05 87 3b 20 00 02 	movl   $0x2,0x203b87(%rip)        # 60551c <vlevel>
  401992:	00 00 00 
  401995:	39 3d 89 3b 20 00    	cmp    %edi,0x203b89(%rip)        # 605524 <cookie>
  40199b:	75 20                	jne    4019bd <touch2+0x38>
  40199d:	be 50 33 40 00       	mov    $0x403350,%esi
  4019a2:	bf 01 00 00 00       	mov    $0x1,%edi
  4019a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ac:	e8 4f f4 ff ff       	callq  400e00 <__printf_chk@plt>
  4019b1:	bf 02 00 00 00       	mov    $0x2,%edi
  4019b6:	e8 57 04 00 00       	callq  401e12 <validate>
  4019bb:	eb 1e                	jmp    4019db <touch2+0x56>
  4019bd:	be 78 33 40 00       	mov    $0x403378,%esi
  4019c2:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4019cc:	e8 2f f4 ff ff       	callq  400e00 <__printf_chk@plt>
  4019d1:	bf 02 00 00 00       	mov    $0x2,%edi
  4019d6:	e8 f9 04 00 00       	callq  401ed4 <fail>
  4019db:	bf 00 00 00 00       	mov    $0x0,%edi
  4019e0:	e8 6b f4 ff ff       	callq  400e50 <exit@plt>

00000000004019e5 <hexmatch>:
  4019e5:	41 54                	push   %r12
  4019e7:	55                   	push   %rbp
  4019e8:	53                   	push   %rbx
  4019e9:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  4019ed:	89 fd                	mov    %edi,%ebp
  4019ef:	48 89 f3             	mov    %rsi,%rbx
  4019f2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4019f9:	00 00 
  4019fb:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401a00:	31 c0                	xor    %eax,%eax
  401a02:	e8 b9 f3 ff ff       	callq  400dc0 <random@plt>
  401a07:	48 89 c1             	mov    %rax,%rcx
  401a0a:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401a11:	0a d7 a3 
  401a14:	48 f7 ea             	imul   %rdx
  401a17:	48 01 ca             	add    %rcx,%rdx
  401a1a:	48 c1 fa 06          	sar    $0x6,%rdx
  401a1e:	48 89 c8             	mov    %rcx,%rax
  401a21:	48 c1 f8 3f          	sar    $0x3f,%rax
  401a25:	48 29 c2             	sub    %rax,%rdx
  401a28:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401a2c:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401a30:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401a37:	00 
  401a38:	48 29 c1             	sub    %rax,%rcx
  401a3b:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401a3f:	41 89 e8             	mov    %ebp,%r8d
  401a42:	b9 47 33 40 00       	mov    $0x403347,%ecx
  401a47:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401a4e:	be 01 00 00 00       	mov    $0x1,%esi
  401a53:	4c 89 e7             	mov    %r12,%rdi
  401a56:	b8 00 00 00 00       	mov    $0x0,%eax
  401a5b:	e8 20 f4 ff ff       	callq  400e80 <__sprintf_chk@plt>
  401a60:	ba 09 00 00 00       	mov    $0x9,%edx
  401a65:	4c 89 e6             	mov    %r12,%rsi
  401a68:	48 89 df             	mov    %rbx,%rdi
  401a6b:	e8 40 f2 ff ff       	callq  400cb0 <strncmp@plt>
  401a70:	85 c0                	test   %eax,%eax
  401a72:	0f 94 c0             	sete   %al
  401a75:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401a7a:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401a81:	00 00 
  401a83:	74 05                	je     401a8a <hexmatch+0xa5>
  401a85:	e8 66 f2 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  401a8a:	0f b6 c0             	movzbl %al,%eax
  401a8d:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401a91:	5b                   	pop    %rbx
  401a92:	5d                   	pop    %rbp
  401a93:	41 5c                	pop    %r12
  401a95:	c3                   	retq   

0000000000401a96 <touch3>:
  401a96:	53                   	push   %rbx
  401a97:	48 89 fb             	mov    %rdi,%rbx
  401a9a:	c7 05 78 3a 20 00 03 	movl   $0x3,0x203a78(%rip)        # 60551c <vlevel>
  401aa1:	00 00 00 
  401aa4:	48 89 fe             	mov    %rdi,%rsi
  401aa7:	8b 3d 77 3a 20 00    	mov    0x203a77(%rip),%edi        # 605524 <cookie>
  401aad:	e8 33 ff ff ff       	callq  4019e5 <hexmatch>
  401ab2:	85 c0                	test   %eax,%eax
  401ab4:	74 23                	je     401ad9 <touch3+0x43>
  401ab6:	48 89 da             	mov    %rbx,%rdx
  401ab9:	be a0 33 40 00       	mov    $0x4033a0,%esi
  401abe:	bf 01 00 00 00       	mov    $0x1,%edi
  401ac3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac8:	e8 33 f3 ff ff       	callq  400e00 <__printf_chk@plt>
  401acd:	bf 03 00 00 00       	mov    $0x3,%edi
  401ad2:	e8 3b 03 00 00       	callq  401e12 <validate>
  401ad7:	eb 21                	jmp    401afa <touch3+0x64>
  401ad9:	48 89 da             	mov    %rbx,%rdx
  401adc:	be c8 33 40 00       	mov    $0x4033c8,%esi
  401ae1:	bf 01 00 00 00       	mov    $0x1,%edi
  401ae6:	b8 00 00 00 00       	mov    $0x0,%eax
  401aeb:	e8 10 f3 ff ff       	callq  400e00 <__printf_chk@plt>
  401af0:	bf 03 00 00 00       	mov    $0x3,%edi
  401af5:	e8 da 03 00 00       	callq  401ed4 <fail>
  401afa:	bf 00 00 00 00       	mov    $0x0,%edi
  401aff:	e8 4c f3 ff ff       	callq  400e50 <exit@plt>

0000000000401b04 <test>:
  401b04:	48 83 ec 08          	sub    $0x8,%rsp
  401b08:	b8 00 00 00 00       	mov    $0x0,%eax
  401b0d:	e8 31 fe ff ff       	callq  401943 <getbuf>
  401b12:	89 c2                	mov    %eax,%edx
  401b14:	be f0 33 40 00       	mov    $0x4033f0,%esi
  401b19:	bf 01 00 00 00       	mov    $0x1,%edi
  401b1e:	b8 00 00 00 00       	mov    $0x0,%eax
  401b23:	e8 d8 f2 ff ff       	callq  400e00 <__printf_chk@plt>
  401b28:	48 83 c4 08          	add    $0x8,%rsp
  401b2c:	c3                   	retq   

0000000000401b2d <save_char>:
  401b2d:	8b 05 11 46 20 00    	mov    0x204611(%rip),%eax        # 606144 <gets_cnt>
  401b33:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401b38:	7f 49                	jg     401b83 <save_char+0x56>
  401b3a:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401b3d:	89 f9                	mov    %edi,%ecx
  401b3f:	c0 e9 04             	shr    $0x4,%cl
  401b42:	83 e1 0f             	and    $0xf,%ecx
  401b45:	0f b6 b1 10 37 40 00 	movzbl 0x403710(%rcx),%esi
  401b4c:	48 63 ca             	movslq %edx,%rcx
  401b4f:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401b56:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401b59:	83 e7 0f             	and    $0xf,%edi
  401b5c:	0f b6 b7 10 37 40 00 	movzbl 0x403710(%rdi),%esi
  401b63:	48 63 c9             	movslq %ecx,%rcx
  401b66:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401b6d:	83 c2 02             	add    $0x2,%edx
  401b70:	48 63 d2             	movslq %edx,%rdx
  401b73:	c6 82 40 55 60 00 20 	movb   $0x20,0x605540(%rdx)
  401b7a:	83 c0 01             	add    $0x1,%eax
  401b7d:	89 05 c1 45 20 00    	mov    %eax,0x2045c1(%rip)        # 606144 <gets_cnt>
  401b83:	f3 c3                	repz retq 

0000000000401b85 <save_term>:
  401b85:	8b 05 b9 45 20 00    	mov    0x2045b9(%rip),%eax        # 606144 <gets_cnt>
  401b8b:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401b8e:	48 98                	cltq   
  401b90:	c6 80 40 55 60 00 00 	movb   $0x0,0x605540(%rax)
  401b97:	c3                   	retq   

0000000000401b98 <check_fail>:
  401b98:	48 83 ec 08          	sub    $0x8,%rsp
  401b9c:	0f be 15 a5 45 20 00 	movsbl 0x2045a5(%rip),%edx        # 606148 <target_prefix>
  401ba3:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401ba9:	8b 0d 69 39 20 00    	mov    0x203969(%rip),%ecx        # 605518 <check_level>
  401baf:	be 13 34 40 00       	mov    $0x403413,%esi
  401bb4:	bf 01 00 00 00       	mov    $0x1,%edi
  401bb9:	b8 00 00 00 00       	mov    $0x0,%eax
  401bbe:	e8 3d f2 ff ff       	callq  400e00 <__printf_chk@plt>
  401bc3:	bf 01 00 00 00       	mov    $0x1,%edi
  401bc8:	e8 83 f2 ff ff       	callq  400e50 <exit@plt>

0000000000401bcd <Gets>:
  401bcd:	41 54                	push   %r12
  401bcf:	55                   	push   %rbp
  401bd0:	53                   	push   %rbx
  401bd1:	49 89 fc             	mov    %rdi,%r12
  401bd4:	c7 05 66 45 20 00 00 	movl   $0x0,0x204566(%rip)        # 606144 <gets_cnt>
  401bdb:	00 00 00 
  401bde:	48 89 fb             	mov    %rdi,%rbx
  401be1:	eb 11                	jmp    401bf4 <Gets+0x27>
  401be3:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401be7:	88 03                	mov    %al,(%rbx)
  401be9:	0f b6 f8             	movzbl %al,%edi
  401bec:	e8 3c ff ff ff       	callq  401b2d <save_char>
  401bf1:	48 89 eb             	mov    %rbp,%rbx
  401bf4:	48 8b 3d 15 39 20 00 	mov    0x203915(%rip),%rdi        # 605510 <infile>
  401bfb:	e8 d0 f1 ff ff       	callq  400dd0 <_IO_getc@plt>
  401c00:	83 f8 ff             	cmp    $0xffffffff,%eax
  401c03:	74 05                	je     401c0a <Gets+0x3d>
  401c05:	83 f8 0a             	cmp    $0xa,%eax
  401c08:	75 d9                	jne    401be3 <Gets+0x16>
  401c0a:	c6 03 00             	movb   $0x0,(%rbx)
  401c0d:	b8 00 00 00 00       	mov    $0x0,%eax
  401c12:	e8 6e ff ff ff       	callq  401b85 <save_term>
  401c17:	4c 89 e0             	mov    %r12,%rax
  401c1a:	5b                   	pop    %rbx
  401c1b:	5d                   	pop    %rbp
  401c1c:	41 5c                	pop    %r12
  401c1e:	c3                   	retq   

0000000000401c1f <notify_server>:
  401c1f:	53                   	push   %rbx
  401c20:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401c27:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c2e:	00 00 
  401c30:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401c37:	00 
  401c38:	31 c0                	xor    %eax,%eax
  401c3a:	83 3d e7 38 20 00 00 	cmpl   $0x0,0x2038e7(%rip)        # 605528 <is_checker>
  401c41:	0f 85 aa 01 00 00    	jne    401df1 <notify_server+0x1d2>
  401c47:	89 fb                	mov    %edi,%ebx
  401c49:	8b 05 f5 44 20 00    	mov    0x2044f5(%rip),%eax        # 606144 <gets_cnt>
  401c4f:	83 c0 64             	add    $0x64,%eax
  401c52:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401c57:	7e 1e                	jle    401c77 <notify_server+0x58>
  401c59:	be 48 35 40 00       	mov    $0x403548,%esi
  401c5e:	bf 01 00 00 00       	mov    $0x1,%edi
  401c63:	b8 00 00 00 00       	mov    $0x0,%eax
  401c68:	e8 93 f1 ff ff       	callq  400e00 <__printf_chk@plt>
  401c6d:	bf 01 00 00 00       	mov    $0x1,%edi
  401c72:	e8 d9 f1 ff ff       	callq  400e50 <exit@plt>
  401c77:	0f be 05 ca 44 20 00 	movsbl 0x2044ca(%rip),%eax        # 606148 <target_prefix>
  401c7e:	83 3d 23 38 20 00 00 	cmpl   $0x0,0x203823(%rip)        # 6054a8 <notify>
  401c85:	74 08                	je     401c8f <notify_server+0x70>
  401c87:	8b 15 93 38 20 00    	mov    0x203893(%rip),%edx        # 605520 <authkey>
  401c8d:	eb 05                	jmp    401c94 <notify_server+0x75>
  401c8f:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401c94:	85 db                	test   %ebx,%ebx
  401c96:	74 08                	je     401ca0 <notify_server+0x81>
  401c98:	41 b9 29 34 40 00    	mov    $0x403429,%r9d
  401c9e:	eb 06                	jmp    401ca6 <notify_server+0x87>
  401ca0:	41 b9 2e 34 40 00    	mov    $0x40342e,%r9d
  401ca6:	68 40 55 60 00       	pushq  $0x605540
  401cab:	56                   	push   %rsi
  401cac:	50                   	push   %rax
  401cad:	52                   	push   %rdx
  401cae:	44 8b 05 b3 34 20 00 	mov    0x2034b3(%rip),%r8d        # 605168 <target_id>
  401cb5:	b9 33 34 40 00       	mov    $0x403433,%ecx
  401cba:	ba 00 20 00 00       	mov    $0x2000,%edx
  401cbf:	be 01 00 00 00       	mov    $0x1,%esi
  401cc4:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401cc9:	b8 00 00 00 00       	mov    $0x0,%eax
  401cce:	e8 ad f1 ff ff       	callq  400e80 <__sprintf_chk@plt>
  401cd3:	48 83 c4 20          	add    $0x20,%rsp
  401cd7:	83 3d ca 37 20 00 00 	cmpl   $0x0,0x2037ca(%rip)        # 6054a8 <notify>
  401cde:	0f 84 81 00 00 00    	je     401d65 <notify_server+0x146>
  401ce4:	85 db                	test   %ebx,%ebx
  401ce6:	74 6e                	je     401d56 <notify_server+0x137>
  401ce8:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401cef:	00 
  401cf0:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401cf6:	48 89 e1             	mov    %rsp,%rcx
  401cf9:	48 8b 15 70 34 20 00 	mov    0x203470(%rip),%rdx        # 605170 <lab>
  401d00:	48 8b 35 71 34 20 00 	mov    0x203471(%rip),%rsi        # 605178 <course>
  401d07:	48 8b 3d 52 34 20 00 	mov    0x203452(%rip),%rdi        # 605160 <user_id>
  401d0e:	e8 ef 10 00 00       	callq  402e02 <driver_post>
  401d13:	85 c0                	test   %eax,%eax
  401d15:	79 26                	jns    401d3d <notify_server+0x11e>
  401d17:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401d1e:	00 
  401d1f:	be 4f 34 40 00       	mov    $0x40344f,%esi
  401d24:	bf 01 00 00 00       	mov    $0x1,%edi
  401d29:	b8 00 00 00 00       	mov    $0x0,%eax
  401d2e:	e8 cd f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401d33:	bf 01 00 00 00       	mov    $0x1,%edi
  401d38:	e8 13 f1 ff ff       	callq  400e50 <exit@plt>
  401d3d:	bf 78 35 40 00       	mov    $0x403578,%edi
  401d42:	e8 89 ef ff ff       	callq  400cd0 <puts@plt>
  401d47:	bf 5b 34 40 00       	mov    $0x40345b,%edi
  401d4c:	e8 7f ef ff ff       	callq  400cd0 <puts@plt>
  401d51:	e9 9b 00 00 00       	jmpq   401df1 <notify_server+0x1d2>
  401d56:	bf 65 34 40 00       	mov    $0x403465,%edi
  401d5b:	e8 70 ef ff ff       	callq  400cd0 <puts@plt>
  401d60:	e9 8c 00 00 00       	jmpq   401df1 <notify_server+0x1d2>
  401d65:	85 db                	test   %ebx,%ebx
  401d67:	74 07                	je     401d70 <notify_server+0x151>
  401d69:	ba 29 34 40 00       	mov    $0x403429,%edx
  401d6e:	eb 05                	jmp    401d75 <notify_server+0x156>
  401d70:	ba 2e 34 40 00       	mov    $0x40342e,%edx
  401d75:	be b0 35 40 00       	mov    $0x4035b0,%esi
  401d7a:	bf 01 00 00 00       	mov    $0x1,%edi
  401d7f:	b8 00 00 00 00       	mov    $0x0,%eax
  401d84:	e8 77 f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401d89:	48 8b 15 d0 33 20 00 	mov    0x2033d0(%rip),%rdx        # 605160 <user_id>
  401d90:	be 6c 34 40 00       	mov    $0x40346c,%esi
  401d95:	bf 01 00 00 00       	mov    $0x1,%edi
  401d9a:	b8 00 00 00 00       	mov    $0x0,%eax
  401d9f:	e8 5c f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401da4:	48 8b 15 cd 33 20 00 	mov    0x2033cd(%rip),%rdx        # 605178 <course>
  401dab:	be 79 34 40 00       	mov    $0x403479,%esi
  401db0:	bf 01 00 00 00       	mov    $0x1,%edi
  401db5:	b8 00 00 00 00       	mov    $0x0,%eax
  401dba:	e8 41 f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401dbf:	48 8b 15 aa 33 20 00 	mov    0x2033aa(%rip),%rdx        # 605170 <lab>
  401dc6:	be 85 34 40 00       	mov    $0x403485,%esi
  401dcb:	bf 01 00 00 00       	mov    $0x1,%edi
  401dd0:	b8 00 00 00 00       	mov    $0x0,%eax
  401dd5:	e8 26 f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401dda:	48 89 e2             	mov    %rsp,%rdx
  401ddd:	be 8e 34 40 00       	mov    $0x40348e,%esi
  401de2:	bf 01 00 00 00       	mov    $0x1,%edi
  401de7:	b8 00 00 00 00       	mov    $0x0,%eax
  401dec:	e8 0f f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401df1:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401df8:	00 
  401df9:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401e00:	00 00 
  401e02:	74 05                	je     401e09 <notify_server+0x1ea>
  401e04:	e8 e7 ee ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  401e09:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401e10:	5b                   	pop    %rbx
  401e11:	c3                   	retq   

0000000000401e12 <validate>:
  401e12:	53                   	push   %rbx
  401e13:	89 fb                	mov    %edi,%ebx
  401e15:	83 3d 0c 37 20 00 00 	cmpl   $0x0,0x20370c(%rip)        # 605528 <is_checker>
  401e1c:	74 6b                	je     401e89 <validate+0x77>
  401e1e:	39 3d f8 36 20 00    	cmp    %edi,0x2036f8(%rip)        # 60551c <vlevel>
  401e24:	74 14                	je     401e3a <validate+0x28>
  401e26:	bf 9a 34 40 00       	mov    $0x40349a,%edi
  401e2b:	e8 a0 ee ff ff       	callq  400cd0 <puts@plt>
  401e30:	b8 00 00 00 00       	mov    $0x0,%eax
  401e35:	e8 5e fd ff ff       	callq  401b98 <check_fail>
  401e3a:	8b 15 d8 36 20 00    	mov    0x2036d8(%rip),%edx        # 605518 <check_level>
  401e40:	39 d7                	cmp    %edx,%edi
  401e42:	74 20                	je     401e64 <validate+0x52>
  401e44:	89 f9                	mov    %edi,%ecx
  401e46:	be d8 35 40 00       	mov    $0x4035d8,%esi
  401e4b:	bf 01 00 00 00       	mov    $0x1,%edi
  401e50:	b8 00 00 00 00       	mov    $0x0,%eax
  401e55:	e8 a6 ef ff ff       	callq  400e00 <__printf_chk@plt>
  401e5a:	b8 00 00 00 00       	mov    $0x0,%eax
  401e5f:	e8 34 fd ff ff       	callq  401b98 <check_fail>
  401e64:	0f be 15 dd 42 20 00 	movsbl 0x2042dd(%rip),%edx        # 606148 <target_prefix>
  401e6b:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401e71:	89 f9                	mov    %edi,%ecx
  401e73:	be b8 34 40 00       	mov    $0x4034b8,%esi
  401e78:	bf 01 00 00 00       	mov    $0x1,%edi
  401e7d:	b8 00 00 00 00       	mov    $0x0,%eax
  401e82:	e8 79 ef ff ff       	callq  400e00 <__printf_chk@plt>
  401e87:	eb 49                	jmp    401ed2 <validate+0xc0>
  401e89:	3b 3d 8d 36 20 00    	cmp    0x20368d(%rip),%edi        # 60551c <vlevel>
  401e8f:	74 18                	je     401ea9 <validate+0x97>
  401e91:	bf 9a 34 40 00       	mov    $0x40349a,%edi
  401e96:	e8 35 ee ff ff       	callq  400cd0 <puts@plt>
  401e9b:	89 de                	mov    %ebx,%esi
  401e9d:	bf 00 00 00 00       	mov    $0x0,%edi
  401ea2:	e8 78 fd ff ff       	callq  401c1f <notify_server>
  401ea7:	eb 29                	jmp    401ed2 <validate+0xc0>
  401ea9:	0f be 0d 98 42 20 00 	movsbl 0x204298(%rip),%ecx        # 606148 <target_prefix>
  401eb0:	89 fa                	mov    %edi,%edx
  401eb2:	be 00 36 40 00       	mov    $0x403600,%esi
  401eb7:	bf 01 00 00 00       	mov    $0x1,%edi
  401ebc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec1:	e8 3a ef ff ff       	callq  400e00 <__printf_chk@plt>
  401ec6:	89 de                	mov    %ebx,%esi
  401ec8:	bf 01 00 00 00       	mov    $0x1,%edi
  401ecd:	e8 4d fd ff ff       	callq  401c1f <notify_server>
  401ed2:	5b                   	pop    %rbx
  401ed3:	c3                   	retq   

0000000000401ed4 <fail>:
  401ed4:	48 83 ec 08          	sub    $0x8,%rsp
  401ed8:	83 3d 49 36 20 00 00 	cmpl   $0x0,0x203649(%rip)        # 605528 <is_checker>
  401edf:	74 0a                	je     401eeb <fail+0x17>
  401ee1:	b8 00 00 00 00       	mov    $0x0,%eax
  401ee6:	e8 ad fc ff ff       	callq  401b98 <check_fail>
  401eeb:	89 fe                	mov    %edi,%esi
  401eed:	bf 00 00 00 00       	mov    $0x0,%edi
  401ef2:	e8 28 fd ff ff       	callq  401c1f <notify_server>
  401ef7:	48 83 c4 08          	add    $0x8,%rsp
  401efb:	c3                   	retq   

0000000000401efc <bushandler>:
  401efc:	48 83 ec 08          	sub    $0x8,%rsp
  401f00:	83 3d 21 36 20 00 00 	cmpl   $0x0,0x203621(%rip)        # 605528 <is_checker>
  401f07:	74 14                	je     401f1d <bushandler+0x21>
  401f09:	bf cd 34 40 00       	mov    $0x4034cd,%edi
  401f0e:	e8 bd ed ff ff       	callq  400cd0 <puts@plt>
  401f13:	b8 00 00 00 00       	mov    $0x0,%eax
  401f18:	e8 7b fc ff ff       	callq  401b98 <check_fail>
  401f1d:	bf 38 36 40 00       	mov    $0x403638,%edi
  401f22:	e8 a9 ed ff ff       	callq  400cd0 <puts@plt>
  401f27:	bf d7 34 40 00       	mov    $0x4034d7,%edi
  401f2c:	e8 9f ed ff ff       	callq  400cd0 <puts@plt>
  401f31:	be 00 00 00 00       	mov    $0x0,%esi
  401f36:	bf 00 00 00 00       	mov    $0x0,%edi
  401f3b:	e8 df fc ff ff       	callq  401c1f <notify_server>
  401f40:	bf 01 00 00 00       	mov    $0x1,%edi
  401f45:	e8 06 ef ff ff       	callq  400e50 <exit@plt>

0000000000401f4a <seghandler>:
  401f4a:	48 83 ec 08          	sub    $0x8,%rsp
  401f4e:	83 3d d3 35 20 00 00 	cmpl   $0x0,0x2035d3(%rip)        # 605528 <is_checker>
  401f55:	74 14                	je     401f6b <seghandler+0x21>
  401f57:	bf ed 34 40 00       	mov    $0x4034ed,%edi
  401f5c:	e8 6f ed ff ff       	callq  400cd0 <puts@plt>
  401f61:	b8 00 00 00 00       	mov    $0x0,%eax
  401f66:	e8 2d fc ff ff       	callq  401b98 <check_fail>
  401f6b:	bf 58 36 40 00       	mov    $0x403658,%edi
  401f70:	e8 5b ed ff ff       	callq  400cd0 <puts@plt>
  401f75:	bf d7 34 40 00       	mov    $0x4034d7,%edi
  401f7a:	e8 51 ed ff ff       	callq  400cd0 <puts@plt>
  401f7f:	be 00 00 00 00       	mov    $0x0,%esi
  401f84:	bf 00 00 00 00       	mov    $0x0,%edi
  401f89:	e8 91 fc ff ff       	callq  401c1f <notify_server>
  401f8e:	bf 01 00 00 00       	mov    $0x1,%edi
  401f93:	e8 b8 ee ff ff       	callq  400e50 <exit@plt>

0000000000401f98 <illegalhandler>:
  401f98:	48 83 ec 08          	sub    $0x8,%rsp
  401f9c:	83 3d 85 35 20 00 00 	cmpl   $0x0,0x203585(%rip)        # 605528 <is_checker>
  401fa3:	74 14                	je     401fb9 <illegalhandler+0x21>
  401fa5:	bf 00 35 40 00       	mov    $0x403500,%edi
  401faa:	e8 21 ed ff ff       	callq  400cd0 <puts@plt>
  401faf:	b8 00 00 00 00       	mov    $0x0,%eax
  401fb4:	e8 df fb ff ff       	callq  401b98 <check_fail>
  401fb9:	bf 80 36 40 00       	mov    $0x403680,%edi
  401fbe:	e8 0d ed ff ff       	callq  400cd0 <puts@plt>
  401fc3:	bf d7 34 40 00       	mov    $0x4034d7,%edi
  401fc8:	e8 03 ed ff ff       	callq  400cd0 <puts@plt>
  401fcd:	be 00 00 00 00       	mov    $0x0,%esi
  401fd2:	bf 00 00 00 00       	mov    $0x0,%edi
  401fd7:	e8 43 fc ff ff       	callq  401c1f <notify_server>
  401fdc:	bf 01 00 00 00       	mov    $0x1,%edi
  401fe1:	e8 6a ee ff ff       	callq  400e50 <exit@plt>

0000000000401fe6 <sigalrmhandler>:
  401fe6:	48 83 ec 08          	sub    $0x8,%rsp
  401fea:	83 3d 37 35 20 00 00 	cmpl   $0x0,0x203537(%rip)        # 605528 <is_checker>
  401ff1:	74 14                	je     402007 <sigalrmhandler+0x21>
  401ff3:	bf 14 35 40 00       	mov    $0x403514,%edi
  401ff8:	e8 d3 ec ff ff       	callq  400cd0 <puts@plt>
  401ffd:	b8 00 00 00 00       	mov    $0x0,%eax
  402002:	e8 91 fb ff ff       	callq  401b98 <check_fail>
  402007:	ba 05 00 00 00       	mov    $0x5,%edx
  40200c:	be b0 36 40 00       	mov    $0x4036b0,%esi
  402011:	bf 01 00 00 00       	mov    $0x1,%edi
  402016:	b8 00 00 00 00       	mov    $0x0,%eax
  40201b:	e8 e0 ed ff ff       	callq  400e00 <__printf_chk@plt>
  402020:	be 00 00 00 00       	mov    $0x0,%esi
  402025:	bf 00 00 00 00       	mov    $0x0,%edi
  40202a:	e8 f0 fb ff ff       	callq  401c1f <notify_server>
  40202f:	bf 01 00 00 00       	mov    $0x1,%edi
  402034:	e8 17 ee ff ff       	callq  400e50 <exit@plt>

0000000000402039 <launch>:
  402039:	55                   	push   %rbp
  40203a:	48 89 e5             	mov    %rsp,%rbp
  40203d:	48 83 ec 10          	sub    $0x10,%rsp
  402041:	48 89 fa             	mov    %rdi,%rdx
  402044:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40204b:	00 00 
  40204d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402051:	31 c0                	xor    %eax,%eax
  402053:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402057:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40205b:	48 29 c4             	sub    %rax,%rsp
  40205e:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402063:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402067:	be f4 00 00 00       	mov    $0xf4,%esi
  40206c:	e8 9f ec ff ff       	callq  400d10 <memset@plt>
  402071:	48 8b 05 48 34 20 00 	mov    0x203448(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  402078:	48 39 05 91 34 20 00 	cmp    %rax,0x203491(%rip)        # 605510 <infile>
  40207f:	75 14                	jne    402095 <launch+0x5c>
  402081:	be 1c 35 40 00       	mov    $0x40351c,%esi
  402086:	bf 01 00 00 00       	mov    $0x1,%edi
  40208b:	b8 00 00 00 00       	mov    $0x0,%eax
  402090:	e8 6b ed ff ff       	callq  400e00 <__printf_chk@plt>
  402095:	c7 05 7d 34 20 00 00 	movl   $0x0,0x20347d(%rip)        # 60551c <vlevel>
  40209c:	00 00 00 
  40209f:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a4:	e8 5b fa ff ff       	callq  401b04 <test>
  4020a9:	83 3d 78 34 20 00 00 	cmpl   $0x0,0x203478(%rip)        # 605528 <is_checker>
  4020b0:	74 14                	je     4020c6 <launch+0x8d>
  4020b2:	bf 29 35 40 00       	mov    $0x403529,%edi
  4020b7:	e8 14 ec ff ff       	callq  400cd0 <puts@plt>
  4020bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4020c1:	e8 d2 fa ff ff       	callq  401b98 <check_fail>
  4020c6:	bf 34 35 40 00       	mov    $0x403534,%edi
  4020cb:	e8 00 ec ff ff       	callq  400cd0 <puts@plt>
  4020d0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020d4:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4020db:	00 00 
  4020dd:	74 05                	je     4020e4 <launch+0xab>
  4020df:	e8 0c ec ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  4020e4:	c9                   	leaveq 
  4020e5:	c3                   	retq   

00000000004020e6 <stable_launch>:
  4020e6:	53                   	push   %rbx
  4020e7:	48 89 3d 1a 34 20 00 	mov    %rdi,0x20341a(%rip)        # 605508 <global_offset>
  4020ee:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4020f4:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4020fa:	b9 32 01 00 00       	mov    $0x132,%ecx
  4020ff:	ba 07 00 00 00       	mov    $0x7,%edx
  402104:	be 00 00 10 00       	mov    $0x100000,%esi
  402109:	bf 00 60 58 55       	mov    $0x55586000,%edi
  40210e:	e8 ed eb ff ff       	callq  400d00 <mmap@plt>
  402113:	48 89 c3             	mov    %rax,%rbx
  402116:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40211c:	74 37                	je     402155 <stable_launch+0x6f>
  40211e:	be 00 00 10 00       	mov    $0x100000,%esi
  402123:	48 89 c7             	mov    %rax,%rdi
  402126:	e8 c5 ec ff ff       	callq  400df0 <munmap@plt>
  40212b:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402130:	ba e8 36 40 00       	mov    $0x4036e8,%edx
  402135:	be 01 00 00 00       	mov    $0x1,%esi
  40213a:	48 8b 3d 9f 33 20 00 	mov    0x20339f(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  402141:	b8 00 00 00 00       	mov    $0x0,%eax
  402146:	e8 25 ed ff ff       	callq  400e70 <__fprintf_chk@plt>
  40214b:	bf 01 00 00 00       	mov    $0x1,%edi
  402150:	e8 fb ec ff ff       	callq  400e50 <exit@plt>
  402155:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40215c:	48 89 15 ed 3f 20 00 	mov    %rdx,0x203fed(%rip)        # 606150 <stack_top>
  402163:	48 89 e0             	mov    %rsp,%rax
  402166:	48 89 d4             	mov    %rdx,%rsp
  402169:	48 89 c2             	mov    %rax,%rdx
  40216c:	48 89 15 8d 33 20 00 	mov    %rdx,0x20338d(%rip)        # 605500 <global_save_stack>
  402173:	48 8b 3d 8e 33 20 00 	mov    0x20338e(%rip),%rdi        # 605508 <global_offset>
  40217a:	e8 ba fe ff ff       	callq  402039 <launch>
  40217f:	48 8b 05 7a 33 20 00 	mov    0x20337a(%rip),%rax        # 605500 <global_save_stack>
  402186:	48 89 c4             	mov    %rax,%rsp
  402189:	be 00 00 10 00       	mov    $0x100000,%esi
  40218e:	48 89 df             	mov    %rbx,%rdi
  402191:	e8 5a ec ff ff       	callq  400df0 <munmap@plt>
  402196:	5b                   	pop    %rbx
  402197:	c3                   	retq   

0000000000402198 <rio_readinitb>:
  402198:	89 37                	mov    %esi,(%rdi)
  40219a:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4021a1:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4021a5:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4021a9:	c3                   	retq   

00000000004021aa <sigalrm_handler>:
  4021aa:	48 83 ec 08          	sub    $0x8,%rsp
  4021ae:	b9 00 00 00 00       	mov    $0x0,%ecx
  4021b3:	ba 20 37 40 00       	mov    $0x403720,%edx
  4021b8:	be 01 00 00 00       	mov    $0x1,%esi
  4021bd:	48 8b 3d 1c 33 20 00 	mov    0x20331c(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4021c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4021c9:	e8 a2 ec ff ff       	callq  400e70 <__fprintf_chk@plt>
  4021ce:	bf 01 00 00 00       	mov    $0x1,%edi
  4021d3:	e8 78 ec ff ff       	callq  400e50 <exit@plt>

00000000004021d8 <rio_writen>:
  4021d8:	41 55                	push   %r13
  4021da:	41 54                	push   %r12
  4021dc:	55                   	push   %rbp
  4021dd:	53                   	push   %rbx
  4021de:	48 83 ec 08          	sub    $0x8,%rsp
  4021e2:	41 89 fc             	mov    %edi,%r12d
  4021e5:	48 89 f5             	mov    %rsi,%rbp
  4021e8:	49 89 d5             	mov    %rdx,%r13
  4021eb:	48 89 d3             	mov    %rdx,%rbx
  4021ee:	eb 28                	jmp    402218 <rio_writen+0x40>
  4021f0:	48 89 da             	mov    %rbx,%rdx
  4021f3:	48 89 ee             	mov    %rbp,%rsi
  4021f6:	44 89 e7             	mov    %r12d,%edi
  4021f9:	e8 e2 ea ff ff       	callq  400ce0 <write@plt>
  4021fe:	48 85 c0             	test   %rax,%rax
  402201:	7f 0f                	jg     402212 <rio_writen+0x3a>
  402203:	e8 88 ea ff ff       	callq  400c90 <__errno_location@plt>
  402208:	83 38 04             	cmpl   $0x4,(%rax)
  40220b:	75 15                	jne    402222 <rio_writen+0x4a>
  40220d:	b8 00 00 00 00       	mov    $0x0,%eax
  402212:	48 29 c3             	sub    %rax,%rbx
  402215:	48 01 c5             	add    %rax,%rbp
  402218:	48 85 db             	test   %rbx,%rbx
  40221b:	75 d3                	jne    4021f0 <rio_writen+0x18>
  40221d:	4c 89 e8             	mov    %r13,%rax
  402220:	eb 07                	jmp    402229 <rio_writen+0x51>
  402222:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402229:	48 83 c4 08          	add    $0x8,%rsp
  40222d:	5b                   	pop    %rbx
  40222e:	5d                   	pop    %rbp
  40222f:	41 5c                	pop    %r12
  402231:	41 5d                	pop    %r13
  402233:	c3                   	retq   

0000000000402234 <rio_read>:
  402234:	41 55                	push   %r13
  402236:	41 54                	push   %r12
  402238:	55                   	push   %rbp
  402239:	53                   	push   %rbx
  40223a:	48 83 ec 08          	sub    $0x8,%rsp
  40223e:	48 89 fb             	mov    %rdi,%rbx
  402241:	49 89 f5             	mov    %rsi,%r13
  402244:	49 89 d4             	mov    %rdx,%r12
  402247:	eb 2e                	jmp    402277 <rio_read+0x43>
  402249:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40224d:	8b 3b                	mov    (%rbx),%edi
  40224f:	ba 00 20 00 00       	mov    $0x2000,%edx
  402254:	48 89 ee             	mov    %rbp,%rsi
  402257:	e8 e4 ea ff ff       	callq  400d40 <read@plt>
  40225c:	89 43 04             	mov    %eax,0x4(%rbx)
  40225f:	85 c0                	test   %eax,%eax
  402261:	79 0c                	jns    40226f <rio_read+0x3b>
  402263:	e8 28 ea ff ff       	callq  400c90 <__errno_location@plt>
  402268:	83 38 04             	cmpl   $0x4,(%rax)
  40226b:	74 0a                	je     402277 <rio_read+0x43>
  40226d:	eb 37                	jmp    4022a6 <rio_read+0x72>
  40226f:	85 c0                	test   %eax,%eax
  402271:	74 3c                	je     4022af <rio_read+0x7b>
  402273:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402277:	8b 6b 04             	mov    0x4(%rbx),%ebp
  40227a:	85 ed                	test   %ebp,%ebp
  40227c:	7e cb                	jle    402249 <rio_read+0x15>
  40227e:	89 e8                	mov    %ebp,%eax
  402280:	49 39 c4             	cmp    %rax,%r12
  402283:	77 03                	ja     402288 <rio_read+0x54>
  402285:	44 89 e5             	mov    %r12d,%ebp
  402288:	4c 63 e5             	movslq %ebp,%r12
  40228b:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40228f:	4c 89 e2             	mov    %r12,%rdx
  402292:	4c 89 ef             	mov    %r13,%rdi
  402295:	e8 06 eb ff ff       	callq  400da0 <memcpy@plt>
  40229a:	4c 01 63 08          	add    %r12,0x8(%rbx)
  40229e:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4022a1:	4c 89 e0             	mov    %r12,%rax
  4022a4:	eb 0e                	jmp    4022b4 <rio_read+0x80>
  4022a6:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022ad:	eb 05                	jmp    4022b4 <rio_read+0x80>
  4022af:	b8 00 00 00 00       	mov    $0x0,%eax
  4022b4:	48 83 c4 08          	add    $0x8,%rsp
  4022b8:	5b                   	pop    %rbx
  4022b9:	5d                   	pop    %rbp
  4022ba:	41 5c                	pop    %r12
  4022bc:	41 5d                	pop    %r13
  4022be:	c3                   	retq   

00000000004022bf <rio_readlineb>:
  4022bf:	41 55                	push   %r13
  4022c1:	41 54                	push   %r12
  4022c3:	55                   	push   %rbp
  4022c4:	53                   	push   %rbx
  4022c5:	48 83 ec 18          	sub    $0x18,%rsp
  4022c9:	49 89 fd             	mov    %rdi,%r13
  4022cc:	48 89 f5             	mov    %rsi,%rbp
  4022cf:	49 89 d4             	mov    %rdx,%r12
  4022d2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022d9:	00 00 
  4022db:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4022e0:	31 c0                	xor    %eax,%eax
  4022e2:	bb 01 00 00 00       	mov    $0x1,%ebx
  4022e7:	eb 3f                	jmp    402328 <rio_readlineb+0x69>
  4022e9:	ba 01 00 00 00       	mov    $0x1,%edx
  4022ee:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  4022f3:	4c 89 ef             	mov    %r13,%rdi
  4022f6:	e8 39 ff ff ff       	callq  402234 <rio_read>
  4022fb:	83 f8 01             	cmp    $0x1,%eax
  4022fe:	75 15                	jne    402315 <rio_readlineb+0x56>
  402300:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402304:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  402309:	88 55 00             	mov    %dl,0x0(%rbp)
  40230c:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402311:	75 0e                	jne    402321 <rio_readlineb+0x62>
  402313:	eb 1a                	jmp    40232f <rio_readlineb+0x70>
  402315:	85 c0                	test   %eax,%eax
  402317:	75 22                	jne    40233b <rio_readlineb+0x7c>
  402319:	48 83 fb 01          	cmp    $0x1,%rbx
  40231d:	75 13                	jne    402332 <rio_readlineb+0x73>
  40231f:	eb 23                	jmp    402344 <rio_readlineb+0x85>
  402321:	48 83 c3 01          	add    $0x1,%rbx
  402325:	48 89 c5             	mov    %rax,%rbp
  402328:	4c 39 e3             	cmp    %r12,%rbx
  40232b:	72 bc                	jb     4022e9 <rio_readlineb+0x2a>
  40232d:	eb 03                	jmp    402332 <rio_readlineb+0x73>
  40232f:	48 89 c5             	mov    %rax,%rbp
  402332:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402336:	48 89 d8             	mov    %rbx,%rax
  402339:	eb 0e                	jmp    402349 <rio_readlineb+0x8a>
  40233b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402342:	eb 05                	jmp    402349 <rio_readlineb+0x8a>
  402344:	b8 00 00 00 00       	mov    $0x0,%eax
  402349:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40234e:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402355:	00 00 
  402357:	74 05                	je     40235e <rio_readlineb+0x9f>
  402359:	e8 92 e9 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  40235e:	48 83 c4 18          	add    $0x18,%rsp
  402362:	5b                   	pop    %rbx
  402363:	5d                   	pop    %rbp
  402364:	41 5c                	pop    %r12
  402366:	41 5d                	pop    %r13
  402368:	c3                   	retq   

0000000000402369 <urlencode>:
  402369:	41 54                	push   %r12
  40236b:	55                   	push   %rbp
  40236c:	53                   	push   %rbx
  40236d:	48 83 ec 10          	sub    $0x10,%rsp
  402371:	48 89 fb             	mov    %rdi,%rbx
  402374:	48 89 f5             	mov    %rsi,%rbp
  402377:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40237e:	00 00 
  402380:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402385:	31 c0                	xor    %eax,%eax
  402387:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40238e:	f2 ae                	repnz scas %es:(%rdi),%al
  402390:	48 f7 d1             	not    %rcx
  402393:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402396:	e9 aa 00 00 00       	jmpq   402445 <urlencode+0xdc>
  40239b:	44 0f b6 03          	movzbl (%rbx),%r8d
  40239f:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4023a3:	0f 94 c2             	sete   %dl
  4023a6:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4023aa:	0f 94 c0             	sete   %al
  4023ad:	08 c2                	or     %al,%dl
  4023af:	75 24                	jne    4023d5 <urlencode+0x6c>
  4023b1:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4023b5:	74 1e                	je     4023d5 <urlencode+0x6c>
  4023b7:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4023bb:	74 18                	je     4023d5 <urlencode+0x6c>
  4023bd:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4023c1:	3c 09                	cmp    $0x9,%al
  4023c3:	76 10                	jbe    4023d5 <urlencode+0x6c>
  4023c5:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4023c9:	3c 19                	cmp    $0x19,%al
  4023cb:	76 08                	jbe    4023d5 <urlencode+0x6c>
  4023cd:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4023d1:	3c 19                	cmp    $0x19,%al
  4023d3:	77 0a                	ja     4023df <urlencode+0x76>
  4023d5:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4023d9:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4023dd:	eb 5f                	jmp    40243e <urlencode+0xd5>
  4023df:	41 80 f8 20          	cmp    $0x20,%r8b
  4023e3:	75 0a                	jne    4023ef <urlencode+0x86>
  4023e5:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4023e9:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4023ed:	eb 4f                	jmp    40243e <urlencode+0xd5>
  4023ef:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  4023f3:	3c 5f                	cmp    $0x5f,%al
  4023f5:	0f 96 c2             	setbe  %dl
  4023f8:	41 80 f8 09          	cmp    $0x9,%r8b
  4023fc:	0f 94 c0             	sete   %al
  4023ff:	08 c2                	or     %al,%dl
  402401:	74 50                	je     402453 <urlencode+0xea>
  402403:	45 0f b6 c0          	movzbl %r8b,%r8d
  402407:	b9 b8 37 40 00       	mov    $0x4037b8,%ecx
  40240c:	ba 08 00 00 00       	mov    $0x8,%edx
  402411:	be 01 00 00 00       	mov    $0x1,%esi
  402416:	48 89 e7             	mov    %rsp,%rdi
  402419:	b8 00 00 00 00       	mov    $0x0,%eax
  40241e:	e8 5d ea ff ff       	callq  400e80 <__sprintf_chk@plt>
  402423:	0f b6 04 24          	movzbl (%rsp),%eax
  402427:	88 45 00             	mov    %al,0x0(%rbp)
  40242a:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40242f:	88 45 01             	mov    %al,0x1(%rbp)
  402432:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402437:	88 45 02             	mov    %al,0x2(%rbp)
  40243a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40243e:	48 83 c3 01          	add    $0x1,%rbx
  402442:	44 89 e0             	mov    %r12d,%eax
  402445:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402449:	85 c0                	test   %eax,%eax
  40244b:	0f 85 4a ff ff ff    	jne    40239b <urlencode+0x32>
  402451:	eb 05                	jmp    402458 <urlencode+0xef>
  402453:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402458:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40245d:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402464:	00 00 
  402466:	74 05                	je     40246d <urlencode+0x104>
  402468:	e8 83 e8 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  40246d:	48 83 c4 10          	add    $0x10,%rsp
  402471:	5b                   	pop    %rbx
  402472:	5d                   	pop    %rbp
  402473:	41 5c                	pop    %r12
  402475:	c3                   	retq   

0000000000402476 <submitr>:
  402476:	41 57                	push   %r15
  402478:	41 56                	push   %r14
  40247a:	41 55                	push   %r13
  40247c:	41 54                	push   %r12
  40247e:	55                   	push   %rbp
  40247f:	53                   	push   %rbx
  402480:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  402487:	49 89 fc             	mov    %rdi,%r12
  40248a:	89 74 24 04          	mov    %esi,0x4(%rsp)
  40248e:	49 89 d7             	mov    %rdx,%r15
  402491:	49 89 ce             	mov    %rcx,%r14
  402494:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  402499:	4d 89 cd             	mov    %r9,%r13
  40249c:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  4024a3:	00 
  4024a4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024ab:	00 00 
  4024ad:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  4024b4:	00 
  4024b5:	31 c0                	xor    %eax,%eax
  4024b7:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  4024be:	00 
  4024bf:	ba 00 00 00 00       	mov    $0x0,%edx
  4024c4:	be 01 00 00 00       	mov    $0x1,%esi
  4024c9:	bf 02 00 00 00       	mov    $0x2,%edi
  4024ce:	e8 bd e9 ff ff       	callq  400e90 <socket@plt>
  4024d3:	85 c0                	test   %eax,%eax
  4024d5:	79 4e                	jns    402525 <submitr+0xaf>
  4024d7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4024de:	3a 20 43 
  4024e1:	48 89 03             	mov    %rax,(%rbx)
  4024e4:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4024eb:	20 75 6e 
  4024ee:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4024f2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024f9:	74 6f 20 
  4024fc:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402500:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402507:	65 20 73 
  40250a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40250e:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402515:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  40251b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402520:	e9 97 06 00 00       	jmpq   402bbc <submitr+0x746>
  402525:	89 c5                	mov    %eax,%ebp
  402527:	4c 89 e7             	mov    %r12,%rdi
  40252a:	e8 41 e8 ff ff       	callq  400d70 <gethostbyname@plt>
  40252f:	48 85 c0             	test   %rax,%rax
  402532:	75 67                	jne    40259b <submitr+0x125>
  402534:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40253b:	3a 20 44 
  40253e:	48 89 03             	mov    %rax,(%rbx)
  402541:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402548:	20 75 6e 
  40254b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40254f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402556:	74 6f 20 
  402559:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40255d:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402564:	76 65 20 
  402567:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40256b:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402572:	72 20 61 
  402575:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402579:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402580:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  402586:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  40258a:	89 ef                	mov    %ebp,%edi
  40258c:	e8 9f e7 ff ff       	callq  400d30 <close@plt>
  402591:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402596:	e9 21 06 00 00       	jmpq   402bbc <submitr+0x746>
  40259b:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  4025a2:	00 00 
  4025a4:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  4025ab:	00 00 
  4025ad:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  4025b4:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4025b8:	48 8b 40 18          	mov    0x18(%rax),%rax
  4025bc:	48 8b 30             	mov    (%rax),%rsi
  4025bf:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  4025c4:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4025c9:	e8 b2 e7 ff ff       	callq  400d80 <__memmove_chk@plt>
  4025ce:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  4025d3:	66 c1 c8 08          	ror    $0x8,%ax
  4025d7:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  4025dc:	ba 10 00 00 00       	mov    $0x10,%edx
  4025e1:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  4025e6:	89 ef                	mov    %ebp,%edi
  4025e8:	e8 73 e8 ff ff       	callq  400e60 <connect@plt>
  4025ed:	85 c0                	test   %eax,%eax
  4025ef:	79 59                	jns    40264a <submitr+0x1d4>
  4025f1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4025f8:	3a 20 55 
  4025fb:	48 89 03             	mov    %rax,(%rbx)
  4025fe:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402605:	20 74 6f 
  402608:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40260c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402613:	65 63 74 
  402616:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40261a:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  402621:	68 65 20 
  402624:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402628:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  40262f:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402635:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402639:	89 ef                	mov    %ebp,%edi
  40263b:	e8 f0 e6 ff ff       	callq  400d30 <close@plt>
  402640:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402645:	e9 72 05 00 00       	jmpq   402bbc <submitr+0x746>
  40264a:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402651:	b8 00 00 00 00       	mov    $0x0,%eax
  402656:	48 89 f1             	mov    %rsi,%rcx
  402659:	4c 89 ef             	mov    %r13,%rdi
  40265c:	f2 ae                	repnz scas %es:(%rdi),%al
  40265e:	48 f7 d1             	not    %rcx
  402661:	48 89 ca             	mov    %rcx,%rdx
  402664:	48 89 f1             	mov    %rsi,%rcx
  402667:	4c 89 ff             	mov    %r15,%rdi
  40266a:	f2 ae                	repnz scas %es:(%rdi),%al
  40266c:	48 f7 d1             	not    %rcx
  40266f:	49 89 c8             	mov    %rcx,%r8
  402672:	48 89 f1             	mov    %rsi,%rcx
  402675:	4c 89 f7             	mov    %r14,%rdi
  402678:	f2 ae                	repnz scas %es:(%rdi),%al
  40267a:	48 f7 d1             	not    %rcx
  40267d:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402682:	48 89 f1             	mov    %rsi,%rcx
  402685:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40268a:	f2 ae                	repnz scas %es:(%rdi),%al
  40268c:	48 89 c8             	mov    %rcx,%rax
  40268f:	48 f7 d0             	not    %rax
  402692:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  402697:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  40269c:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4026a3:	00 
  4026a4:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4026aa:	76 72                	jbe    40271e <submitr+0x2a8>
  4026ac:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4026b3:	3a 20 52 
  4026b6:	48 89 03             	mov    %rax,(%rbx)
  4026b9:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4026c0:	20 73 74 
  4026c3:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026c7:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4026ce:	74 6f 6f 
  4026d1:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026d5:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4026dc:	65 2e 20 
  4026df:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026e3:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4026ea:	61 73 65 
  4026ed:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026f1:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  4026f8:	49 54 52 
  4026fb:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026ff:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402706:	55 46 00 
  402709:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40270d:	89 ef                	mov    %ebp,%edi
  40270f:	e8 1c e6 ff ff       	callq  400d30 <close@plt>
  402714:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402719:	e9 9e 04 00 00       	jmpq   402bbc <submitr+0x746>
  40271e:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  402725:	00 
  402726:	b9 00 04 00 00       	mov    $0x400,%ecx
  40272b:	b8 00 00 00 00       	mov    $0x0,%eax
  402730:	48 89 f7             	mov    %rsi,%rdi
  402733:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402736:	4c 89 ef             	mov    %r13,%rdi
  402739:	e8 2b fc ff ff       	callq  402369 <urlencode>
  40273e:	85 c0                	test   %eax,%eax
  402740:	0f 89 8a 00 00 00    	jns    4027d0 <submitr+0x35a>
  402746:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40274d:	3a 20 52 
  402750:	48 89 03             	mov    %rax,(%rbx)
  402753:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40275a:	20 73 74 
  40275d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402761:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402768:	63 6f 6e 
  40276b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40276f:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402776:	20 61 6e 
  402779:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40277d:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402784:	67 61 6c 
  402787:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40278b:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402792:	6e 70 72 
  402795:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402799:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4027a0:	6c 65 20 
  4027a3:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027a7:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4027ae:	63 74 65 
  4027b1:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4027b5:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4027bb:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4027bf:	89 ef                	mov    %ebp,%edi
  4027c1:	e8 6a e5 ff ff       	callq  400d30 <close@plt>
  4027c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027cb:	e9 ec 03 00 00       	jmpq   402bbc <submitr+0x746>
  4027d0:	4c 8d ac 24 40 20 00 	lea    0x2040(%rsp),%r13
  4027d7:	00 
  4027d8:	41 54                	push   %r12
  4027da:	48 8d 84 24 48 40 00 	lea    0x4048(%rsp),%rax
  4027e1:	00 
  4027e2:	50                   	push   %rax
  4027e3:	4d 89 f9             	mov    %r15,%r9
  4027e6:	4d 89 f0             	mov    %r14,%r8
  4027e9:	b9 48 37 40 00       	mov    $0x403748,%ecx
  4027ee:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027f3:	be 01 00 00 00       	mov    $0x1,%esi
  4027f8:	4c 89 ef             	mov    %r13,%rdi
  4027fb:	b8 00 00 00 00       	mov    $0x0,%eax
  402800:	e8 7b e6 ff ff       	callq  400e80 <__sprintf_chk@plt>
  402805:	b8 00 00 00 00       	mov    $0x0,%eax
  40280a:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402811:	4c 89 ef             	mov    %r13,%rdi
  402814:	f2 ae                	repnz scas %es:(%rdi),%al
  402816:	48 f7 d1             	not    %rcx
  402819:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  40281d:	4c 89 ee             	mov    %r13,%rsi
  402820:	89 ef                	mov    %ebp,%edi
  402822:	e8 b1 f9 ff ff       	callq  4021d8 <rio_writen>
  402827:	48 83 c4 10          	add    $0x10,%rsp
  40282b:	48 85 c0             	test   %rax,%rax
  40282e:	79 6e                	jns    40289e <submitr+0x428>
  402830:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402837:	3a 20 43 
  40283a:	48 89 03             	mov    %rax,(%rbx)
  40283d:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402844:	20 75 6e 
  402847:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40284b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402852:	74 6f 20 
  402855:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402859:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402860:	20 74 6f 
  402863:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402867:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  40286e:	72 65 73 
  402871:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402875:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  40287c:	65 72 76 
  40287f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402883:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402889:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  40288d:	89 ef                	mov    %ebp,%edi
  40288f:	e8 9c e4 ff ff       	callq  400d30 <close@plt>
  402894:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402899:	e9 1e 03 00 00       	jmpq   402bbc <submitr+0x746>
  40289e:	89 ee                	mov    %ebp,%esi
  4028a0:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4028a5:	e8 ee f8 ff ff       	callq  402198 <rio_readinitb>
  4028aa:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028af:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4028b6:	00 
  4028b7:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4028bc:	e8 fe f9 ff ff       	callq  4022bf <rio_readlineb>
  4028c1:	48 85 c0             	test   %rax,%rax
  4028c4:	7f 7d                	jg     402943 <submitr+0x4cd>
  4028c6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028cd:	3a 20 43 
  4028d0:	48 89 03             	mov    %rax,(%rbx)
  4028d3:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4028da:	20 75 6e 
  4028dd:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4028e1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028e8:	74 6f 20 
  4028eb:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4028ef:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  4028f6:	66 69 72 
  4028f9:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4028fd:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402904:	61 64 65 
  402907:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40290b:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  402912:	6d 20 72 
  402915:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402919:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402920:	20 73 65 
  402923:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402927:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  40292e:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  402932:	89 ef                	mov    %ebp,%edi
  402934:	e8 f7 e3 ff ff       	callq  400d30 <close@plt>
  402939:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40293e:	e9 79 02 00 00       	jmpq   402bbc <submitr+0x746>
  402943:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  40294a:	00 
  40294b:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  402950:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  402957:	00 
  402958:	be bf 37 40 00       	mov    $0x4037bf,%esi
  40295d:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  402964:	00 
  402965:	b8 00 00 00 00       	mov    $0x0,%eax
  40296a:	e8 71 e4 ff ff       	callq  400de0 <__isoc99_sscanf@plt>
  40296f:	e9 95 00 00 00       	jmpq   402a09 <submitr+0x593>
  402974:	ba 00 20 00 00       	mov    $0x2000,%edx
  402979:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402980:	00 
  402981:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402986:	e8 34 f9 ff ff       	callq  4022bf <rio_readlineb>
  40298b:	48 85 c0             	test   %rax,%rax
  40298e:	7f 79                	jg     402a09 <submitr+0x593>
  402990:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402997:	3a 20 43 
  40299a:	48 89 03             	mov    %rax,(%rbx)
  40299d:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4029a4:	20 75 6e 
  4029a7:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4029ab:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029b2:	74 6f 20 
  4029b5:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4029b9:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4029c0:	68 65 61 
  4029c3:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4029c7:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4029ce:	66 72 6f 
  4029d1:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4029d5:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  4029dc:	20 72 65 
  4029df:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4029e3:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4029ea:	73 65 72 
  4029ed:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4029f1:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  4029f8:	89 ef                	mov    %ebp,%edi
  4029fa:	e8 31 e3 ff ff       	callq  400d30 <close@plt>
  4029ff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a04:	e9 b3 01 00 00       	jmpq   402bbc <submitr+0x746>
  402a09:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  402a10:	00 
  402a11:	b8 0d 00 00 00       	mov    $0xd,%eax
  402a16:	29 d0                	sub    %edx,%eax
  402a18:	75 1b                	jne    402a35 <submitr+0x5bf>
  402a1a:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  402a21:	00 
  402a22:	b8 0a 00 00 00       	mov    $0xa,%eax
  402a27:	29 d0                	sub    %edx,%eax
  402a29:	75 0a                	jne    402a35 <submitr+0x5bf>
  402a2b:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  402a32:	00 
  402a33:	f7 d8                	neg    %eax
  402a35:	85 c0                	test   %eax,%eax
  402a37:	0f 85 37 ff ff ff    	jne    402974 <submitr+0x4fe>
  402a3d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a42:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402a49:	00 
  402a4a:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402a4f:	e8 6b f8 ff ff       	callq  4022bf <rio_readlineb>
  402a54:	48 85 c0             	test   %rax,%rax
  402a57:	0f 8f 83 00 00 00    	jg     402ae0 <submitr+0x66a>
  402a5d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a64:	3a 20 43 
  402a67:	48 89 03             	mov    %rax,(%rbx)
  402a6a:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a71:	20 75 6e 
  402a74:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402a78:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a7f:	74 6f 20 
  402a82:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402a86:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402a8d:	73 74 61 
  402a90:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402a94:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402a9b:	65 73 73 
  402a9e:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402aa2:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402aa9:	72 6f 6d 
  402aac:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402ab0:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402ab7:	6c 74 20 
  402aba:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402abe:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402ac5:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402acb:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402acf:	89 ef                	mov    %ebp,%edi
  402ad1:	e8 5a e2 ff ff       	callq  400d30 <close@plt>
  402ad6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402adb:	e9 dc 00 00 00       	jmpq   402bbc <submitr+0x746>
  402ae0:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402ae5:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402aec:	74 37                	je     402b25 <submitr+0x6af>
  402aee:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402af5:	00 
  402af6:	b9 88 37 40 00       	mov    $0x403788,%ecx
  402afb:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402b02:	be 01 00 00 00       	mov    $0x1,%esi
  402b07:	48 89 df             	mov    %rbx,%rdi
  402b0a:	b8 00 00 00 00       	mov    $0x0,%eax
  402b0f:	e8 6c e3 ff ff       	callq  400e80 <__sprintf_chk@plt>
  402b14:	89 ef                	mov    %ebp,%edi
  402b16:	e8 15 e2 ff ff       	callq  400d30 <close@plt>
  402b1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b20:	e9 97 00 00 00       	jmpq   402bbc <submitr+0x746>
  402b25:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402b2c:	00 
  402b2d:	48 89 df             	mov    %rbx,%rdi
  402b30:	e8 8b e1 ff ff       	callq  400cc0 <strcpy@plt>
  402b35:	89 ef                	mov    %ebp,%edi
  402b37:	e8 f4 e1 ff ff       	callq  400d30 <close@plt>
  402b3c:	0f b6 03             	movzbl (%rbx),%eax
  402b3f:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402b44:	29 c2                	sub    %eax,%edx
  402b46:	75 22                	jne    402b6a <submitr+0x6f4>
  402b48:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402b4c:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402b51:	29 c8                	sub    %ecx,%eax
  402b53:	75 17                	jne    402b6c <submitr+0x6f6>
  402b55:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402b59:	b8 0a 00 00 00       	mov    $0xa,%eax
  402b5e:	29 c8                	sub    %ecx,%eax
  402b60:	75 0a                	jne    402b6c <submitr+0x6f6>
  402b62:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402b66:	f7 d8                	neg    %eax
  402b68:	eb 02                	jmp    402b6c <submitr+0x6f6>
  402b6a:	89 d0                	mov    %edx,%eax
  402b6c:	85 c0                	test   %eax,%eax
  402b6e:	74 40                	je     402bb0 <submitr+0x73a>
  402b70:	bf d0 37 40 00       	mov    $0x4037d0,%edi
  402b75:	b9 05 00 00 00       	mov    $0x5,%ecx
  402b7a:	48 89 de             	mov    %rbx,%rsi
  402b7d:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402b7f:	0f 97 c0             	seta   %al
  402b82:	0f 92 c1             	setb   %cl
  402b85:	29 c8                	sub    %ecx,%eax
  402b87:	0f be c0             	movsbl %al,%eax
  402b8a:	85 c0                	test   %eax,%eax
  402b8c:	74 2e                	je     402bbc <submitr+0x746>
  402b8e:	85 d2                	test   %edx,%edx
  402b90:	75 13                	jne    402ba5 <submitr+0x72f>
  402b92:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402b96:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402b9b:	29 c2                	sub    %eax,%edx
  402b9d:	75 06                	jne    402ba5 <submitr+0x72f>
  402b9f:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402ba3:	f7 da                	neg    %edx
  402ba5:	85 d2                	test   %edx,%edx
  402ba7:	75 0e                	jne    402bb7 <submitr+0x741>
  402ba9:	b8 00 00 00 00       	mov    $0x0,%eax
  402bae:	eb 0c                	jmp    402bbc <submitr+0x746>
  402bb0:	b8 00 00 00 00       	mov    $0x0,%eax
  402bb5:	eb 05                	jmp    402bbc <submitr+0x746>
  402bb7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bbc:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402bc3:	00 
  402bc4:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402bcb:	00 00 
  402bcd:	74 05                	je     402bd4 <submitr+0x75e>
  402bcf:	e8 1c e1 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  402bd4:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402bdb:	5b                   	pop    %rbx
  402bdc:	5d                   	pop    %rbp
  402bdd:	41 5c                	pop    %r12
  402bdf:	41 5d                	pop    %r13
  402be1:	41 5e                	pop    %r14
  402be3:	41 5f                	pop    %r15
  402be5:	c3                   	retq   

0000000000402be6 <init_timeout>:
  402be6:	85 ff                	test   %edi,%edi
  402be8:	74 23                	je     402c0d <init_timeout+0x27>
  402bea:	53                   	push   %rbx
  402beb:	89 fb                	mov    %edi,%ebx
  402bed:	85 ff                	test   %edi,%edi
  402bef:	79 05                	jns    402bf6 <init_timeout+0x10>
  402bf1:	bb 00 00 00 00       	mov    $0x0,%ebx
  402bf6:	be aa 21 40 00       	mov    $0x4021aa,%esi
  402bfb:	bf 0e 00 00 00       	mov    $0xe,%edi
  402c00:	e8 5b e1 ff ff       	callq  400d60 <signal@plt>
  402c05:	89 df                	mov    %ebx,%edi
  402c07:	e8 14 e1 ff ff       	callq  400d20 <alarm@plt>
  402c0c:	5b                   	pop    %rbx
  402c0d:	f3 c3                	repz retq 

0000000000402c0f <init_driver>:
  402c0f:	55                   	push   %rbp
  402c10:	53                   	push   %rbx
  402c11:	48 83 ec 28          	sub    $0x28,%rsp
  402c15:	48 89 fd             	mov    %rdi,%rbp
  402c18:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c1f:	00 00 
  402c21:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402c26:	31 c0                	xor    %eax,%eax
  402c28:	be 01 00 00 00       	mov    $0x1,%esi
  402c2d:	bf 0d 00 00 00       	mov    $0xd,%edi
  402c32:	e8 29 e1 ff ff       	callq  400d60 <signal@plt>
  402c37:	be 01 00 00 00       	mov    $0x1,%esi
  402c3c:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c41:	e8 1a e1 ff ff       	callq  400d60 <signal@plt>
  402c46:	be 01 00 00 00       	mov    $0x1,%esi
  402c4b:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c50:	e8 0b e1 ff ff       	callq  400d60 <signal@plt>
  402c55:	ba 00 00 00 00       	mov    $0x0,%edx
  402c5a:	be 01 00 00 00       	mov    $0x1,%esi
  402c5f:	bf 02 00 00 00       	mov    $0x2,%edi
  402c64:	e8 27 e2 ff ff       	callq  400e90 <socket@plt>
  402c69:	85 c0                	test   %eax,%eax
  402c6b:	79 4f                	jns    402cbc <init_driver+0xad>
  402c6d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c74:	3a 20 43 
  402c77:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c7b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402c82:	20 75 6e 
  402c85:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402c89:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c90:	74 6f 20 
  402c93:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c97:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402c9e:	65 20 73 
  402ca1:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402ca5:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402cac:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402cb2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cb7:	e9 2a 01 00 00       	jmpq   402de6 <init_driver+0x1d7>
  402cbc:	89 c3                	mov    %eax,%ebx
  402cbe:	bf ea 32 40 00       	mov    $0x4032ea,%edi
  402cc3:	e8 a8 e0 ff ff       	callq  400d70 <gethostbyname@plt>
  402cc8:	48 85 c0             	test   %rax,%rax
  402ccb:	75 68                	jne    402d35 <init_driver+0x126>
  402ccd:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402cd4:	3a 20 44 
  402cd7:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402cdb:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402ce2:	20 75 6e 
  402ce5:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402ce9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cf0:	74 6f 20 
  402cf3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402cf7:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402cfe:	76 65 20 
  402d01:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402d05:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402d0c:	72 20 61 
  402d0f:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d13:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402d1a:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402d20:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402d24:	89 df                	mov    %ebx,%edi
  402d26:	e8 05 e0 ff ff       	callq  400d30 <close@plt>
  402d2b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d30:	e9 b1 00 00 00       	jmpq   402de6 <init_driver+0x1d7>
  402d35:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402d3c:	00 
  402d3d:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402d44:	00 00 
  402d46:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402d4c:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402d50:	48 8b 40 18          	mov    0x18(%rax),%rax
  402d54:	48 8b 30             	mov    (%rax),%rsi
  402d57:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402d5c:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402d61:	e8 1a e0 ff ff       	callq  400d80 <__memmove_chk@plt>
  402d66:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402d6d:	ba 10 00 00 00       	mov    $0x10,%edx
  402d72:	48 89 e6             	mov    %rsp,%rsi
  402d75:	89 df                	mov    %ebx,%edi
  402d77:	e8 e4 e0 ff ff       	callq  400e60 <connect@plt>
  402d7c:	85 c0                	test   %eax,%eax
  402d7e:	79 50                	jns    402dd0 <init_driver+0x1c1>
  402d80:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402d87:	3a 20 55 
  402d8a:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d8e:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402d95:	20 74 6f 
  402d98:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402d9c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402da3:	65 63 74 
  402da6:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402daa:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402db1:	65 72 76 
  402db4:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402db8:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402dbe:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402dc2:	89 df                	mov    %ebx,%edi
  402dc4:	e8 67 df ff ff       	callq  400d30 <close@plt>
  402dc9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dce:	eb 16                	jmp    402de6 <init_driver+0x1d7>
  402dd0:	89 df                	mov    %ebx,%edi
  402dd2:	e8 59 df ff ff       	callq  400d30 <close@plt>
  402dd7:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402ddd:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402de1:	b8 00 00 00 00       	mov    $0x0,%eax
  402de6:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402deb:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402df2:	00 00 
  402df4:	74 05                	je     402dfb <init_driver+0x1ec>
  402df6:	e8 f5 de ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  402dfb:	48 83 c4 28          	add    $0x28,%rsp
  402dff:	5b                   	pop    %rbx
  402e00:	5d                   	pop    %rbp
  402e01:	c3                   	retq   

0000000000402e02 <driver_post>:
  402e02:	53                   	push   %rbx
  402e03:	4c 89 cb             	mov    %r9,%rbx
  402e06:	45 85 c0             	test   %r8d,%r8d
  402e09:	74 27                	je     402e32 <driver_post+0x30>
  402e0b:	48 89 ca             	mov    %rcx,%rdx
  402e0e:	be d5 37 40 00       	mov    $0x4037d5,%esi
  402e13:	bf 01 00 00 00       	mov    $0x1,%edi
  402e18:	b8 00 00 00 00       	mov    $0x0,%eax
  402e1d:	e8 de df ff ff       	callq  400e00 <__printf_chk@plt>
  402e22:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e27:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e2b:	b8 00 00 00 00       	mov    $0x0,%eax
  402e30:	eb 3f                	jmp    402e71 <driver_post+0x6f>
  402e32:	48 85 ff             	test   %rdi,%rdi
  402e35:	74 2c                	je     402e63 <driver_post+0x61>
  402e37:	80 3f 00             	cmpb   $0x0,(%rdi)
  402e3a:	74 27                	je     402e63 <driver_post+0x61>
  402e3c:	48 83 ec 08          	sub    $0x8,%rsp
  402e40:	41 51                	push   %r9
  402e42:	49 89 c9             	mov    %rcx,%r9
  402e45:	49 89 d0             	mov    %rdx,%r8
  402e48:	48 89 f9             	mov    %rdi,%rcx
  402e4b:	48 89 f2             	mov    %rsi,%rdx
  402e4e:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402e53:	bf ea 32 40 00       	mov    $0x4032ea,%edi
  402e58:	e8 19 f6 ff ff       	callq  402476 <submitr>
  402e5d:	48 83 c4 10          	add    $0x10,%rsp
  402e61:	eb 0e                	jmp    402e71 <driver_post+0x6f>
  402e63:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e68:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e6c:	b8 00 00 00 00       	mov    $0x0,%eax
  402e71:	5b                   	pop    %rbx
  402e72:	c3                   	retq   

0000000000402e73 <check>:
  402e73:	89 f8                	mov    %edi,%eax
  402e75:	c1 e8 1c             	shr    $0x1c,%eax
  402e78:	85 c0                	test   %eax,%eax
  402e7a:	74 1d                	je     402e99 <check+0x26>
  402e7c:	b9 00 00 00 00       	mov    $0x0,%ecx
  402e81:	eb 0b                	jmp    402e8e <check+0x1b>
  402e83:	89 f8                	mov    %edi,%eax
  402e85:	d3 e8                	shr    %cl,%eax
  402e87:	3c 0a                	cmp    $0xa,%al
  402e89:	74 14                	je     402e9f <check+0x2c>
  402e8b:	83 c1 08             	add    $0x8,%ecx
  402e8e:	83 f9 1f             	cmp    $0x1f,%ecx
  402e91:	7e f0                	jle    402e83 <check+0x10>
  402e93:	b8 01 00 00 00       	mov    $0x1,%eax
  402e98:	c3                   	retq   
  402e99:	b8 00 00 00 00       	mov    $0x0,%eax
  402e9e:	c3                   	retq   
  402e9f:	b8 00 00 00 00       	mov    $0x0,%eax
  402ea4:	c3                   	retq   

0000000000402ea5 <gencookie>:
  402ea5:	53                   	push   %rbx
  402ea6:	83 c7 01             	add    $0x1,%edi
  402ea9:	e8 f2 dd ff ff       	callq  400ca0 <srandom@plt>
  402eae:	e8 0d df ff ff       	callq  400dc0 <random@plt>
  402eb3:	89 c3                	mov    %eax,%ebx
  402eb5:	89 c7                	mov    %eax,%edi
  402eb7:	e8 b7 ff ff ff       	callq  402e73 <check>
  402ebc:	85 c0                	test   %eax,%eax
  402ebe:	74 ee                	je     402eae <gencookie+0x9>
  402ec0:	89 d8                	mov    %ebx,%eax
  402ec2:	5b                   	pop    %rbx
  402ec3:	c3                   	retq   
  402ec4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402ecb:	00 00 00 
  402ece:	66 90                	xchg   %ax,%ax

0000000000402ed0 <__libc_csu_init>:
  402ed0:	41 57                	push   %r15
  402ed2:	41 56                	push   %r14
  402ed4:	41 89 ff             	mov    %edi,%r15d
  402ed7:	41 55                	push   %r13
  402ed9:	41 54                	push   %r12
  402edb:	4c 8d 25 2e 1f 20 00 	lea    0x201f2e(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  402ee2:	55                   	push   %rbp
  402ee3:	48 8d 2d 2e 1f 20 00 	lea    0x201f2e(%rip),%rbp        # 604e18 <__init_array_end>
  402eea:	53                   	push   %rbx
  402eeb:	49 89 f6             	mov    %rsi,%r14
  402eee:	49 89 d5             	mov    %rdx,%r13
  402ef1:	4c 29 e5             	sub    %r12,%rbp
  402ef4:	48 83 ec 08          	sub    $0x8,%rsp
  402ef8:	48 c1 fd 03          	sar    $0x3,%rbp
  402efc:	e8 47 dd ff ff       	callq  400c48 <_init>
  402f01:	48 85 ed             	test   %rbp,%rbp
  402f04:	74 20                	je     402f26 <__libc_csu_init+0x56>
  402f06:	31 db                	xor    %ebx,%ebx
  402f08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402f0f:	00 
  402f10:	4c 89 ea             	mov    %r13,%rdx
  402f13:	4c 89 f6             	mov    %r14,%rsi
  402f16:	44 89 ff             	mov    %r15d,%edi
  402f19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402f1d:	48 83 c3 01          	add    $0x1,%rbx
  402f21:	48 39 eb             	cmp    %rbp,%rbx
  402f24:	75 ea                	jne    402f10 <__libc_csu_init+0x40>
  402f26:	48 83 c4 08          	add    $0x8,%rsp
  402f2a:	5b                   	pop    %rbx
  402f2b:	5d                   	pop    %rbp
  402f2c:	41 5c                	pop    %r12
  402f2e:	41 5d                	pop    %r13
  402f30:	41 5e                	pop    %r14
  402f32:	41 5f                	pop    %r15
  402f34:	c3                   	retq   
  402f35:	90                   	nop
  402f36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402f3d:	00 00 00 

0000000000402f40 <__libc_csu_fini>:
  402f40:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402f44 <_fini>:
  402f44:	48 83 ec 08          	sub    $0x8,%rsp
  402f48:	48 83 c4 08          	add    $0x8,%rsp
  402f4c:	c3                   	retq   
