
rtarget:     file format elf64-x86-64


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
  400ebf:	49 c7 c0 50 30 40 00 	mov    $0x403050,%r8
  400ec6:	48 c7 c1 e0 2f 40 00 	mov    $0x402fe0,%rcx
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
  400fb6:	be 68 30 40 00       	mov    $0x403068,%esi
  400fbb:	bf 01 00 00 00       	mov    $0x1,%edi
  400fc0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fc5:	e8 36 fe ff ff       	callq  400e00 <__printf_chk@plt>
  400fca:	bf a0 30 40 00       	mov    $0x4030a0,%edi
  400fcf:	e8 fc fc ff ff       	callq  400cd0 <puts@plt>
  400fd4:	bf 18 32 40 00       	mov    $0x403218,%edi
  400fd9:	e8 f2 fc ff ff       	callq  400cd0 <puts@plt>
  400fde:	bf c8 30 40 00       	mov    $0x4030c8,%edi
  400fe3:	e8 e8 fc ff ff       	callq  400cd0 <puts@plt>
  400fe8:	bf 32 32 40 00       	mov    $0x403232,%edi
  400fed:	e8 de fc ff ff       	callq  400cd0 <puts@plt>
  400ff2:	eb 32                	jmp    401026 <usage+0x80>
  400ff4:	be 4e 32 40 00       	mov    $0x40324e,%esi
  400ff9:	bf 01 00 00 00       	mov    $0x1,%edi
  400ffe:	b8 00 00 00 00       	mov    $0x0,%eax
  401003:	e8 f8 fd ff ff       	callq  400e00 <__printf_chk@plt>
  401008:	bf f0 30 40 00       	mov    $0x4030f0,%edi
  40100d:	e8 be fc ff ff       	callq  400cd0 <puts@plt>
  401012:	bf 18 31 40 00       	mov    $0x403118,%edi
  401017:	e8 b4 fc ff ff       	callq  400cd0 <puts@plt>
  40101c:	bf 6c 32 40 00       	mov    $0x40326c,%edi
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
  40105a:	e8 62 1f 00 00       	callq  402fc1 <gencookie>
  40105f:	89 05 bf 44 20 00    	mov    %eax,0x2044bf(%rip)        # 605524 <cookie>
  401065:	89 c7                	mov    %eax,%edi
  401067:	e8 55 1f 00 00       	callq  402fc1 <gencookie>
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
  4010c4:	c6 05 7d 50 20 00 72 	movb   $0x72,0x20507d(%rip)        # 606148 <target_prefix>
  4010cb:	83 3d d6 43 20 00 00 	cmpl   $0x0,0x2043d6(%rip)        # 6054a8 <notify>
  4010d2:	0f 84 bb 00 00 00    	je     401193 <initialize_target+0x163>
  4010d8:	83 3d 49 44 20 00 00 	cmpl   $0x0,0x204449(%rip)        # 605528 <is_checker>
  4010df:	0f 85 ae 00 00 00    	jne    401193 <initialize_target+0x163>
  4010e5:	be 00 01 00 00       	mov    $0x100,%esi
  4010ea:	48 89 e7             	mov    %rsp,%rdi
  4010ed:	e8 4e fd ff ff       	callq  400e40 <gethostname@plt>
  4010f2:	85 c0                	test   %eax,%eax
  4010f4:	74 25                	je     40111b <initialize_target+0xeb>
  4010f6:	bf 48 31 40 00       	mov    $0x403148,%edi
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
  401143:	be 80 31 40 00       	mov    $0x403180,%esi
  401148:	bf 01 00 00 00       	mov    $0x1,%edi
  40114d:	e8 ae fc ff ff       	callq  400e00 <__printf_chk@plt>
  401152:	bf 08 00 00 00       	mov    $0x8,%edi
  401157:	e8 f4 fc ff ff       	callq  400e50 <exit@plt>
  40115c:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401163:	00 
  401164:	e8 c2 1b 00 00       	callq  402d2b <init_driver>
  401169:	85 c0                	test   %eax,%eax
  40116b:	79 26                	jns    401193 <initialize_target+0x163>
  40116d:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401174:	00 
  401175:	be c0 31 40 00       	mov    $0x4031c0,%esi
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
  4011c3:	be 66 20 40 00       	mov    $0x402066,%esi
  4011c8:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011cd:	e8 8e fb ff ff       	callq  400d60 <signal@plt>
  4011d2:	be 18 20 40 00       	mov    $0x402018,%esi
  4011d7:	bf 07 00 00 00       	mov    $0x7,%edi
  4011dc:	e8 7f fb ff ff       	callq  400d60 <signal@plt>
  4011e1:	be b4 20 40 00       	mov    $0x4020b4,%esi
  4011e6:	bf 04 00 00 00       	mov    $0x4,%edi
  4011eb:	e8 70 fb ff ff       	callq  400d60 <signal@plt>
  4011f0:	83 3d 31 43 20 00 00 	cmpl   $0x0,0x204331(%rip)        # 605528 <is_checker>
  4011f7:	74 20                	je     401219 <main+0x64>
  4011f9:	be 02 21 40 00       	mov    $0x402102,%esi
  4011fe:	bf 0e 00 00 00       	mov    $0xe,%edi
  401203:	e8 58 fb ff ff       	callq  400d60 <signal@plt>
  401208:	bf 05 00 00 00       	mov    $0x5,%edi
  40120d:	e8 0e fb ff ff       	callq  400d20 <alarm@plt>
  401212:	bd 8a 32 40 00       	mov    $0x40328a,%ebp
  401217:	eb 05                	jmp    40121e <main+0x69>
  401219:	bd 85 32 40 00       	mov    $0x403285,%ebp
  40121e:	48 8b 05 9b 42 20 00 	mov    0x20429b(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  401225:	48 89 05 e4 42 20 00 	mov    %rax,0x2042e4(%rip)        # 605510 <infile>
  40122c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401232:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401238:	e9 c6 00 00 00       	jmpq   401303 <main+0x14e>
  40123d:	83 e8 61             	sub    $0x61,%eax
  401240:	3c 10                	cmp    $0x10,%al
  401242:	0f 87 9c 00 00 00    	ja     4012e4 <main+0x12f>
  401248:	0f b6 c0             	movzbl %al,%eax
  40124b:	ff 24 c5 d0 32 40 00 	jmpq   *0x4032d0(,%rax,8)
  401252:	48 8b 3b             	mov    (%rbx),%rdi
  401255:	e8 4c fd ff ff       	callq  400fa6 <usage>
  40125a:	be 31 34 40 00       	mov    $0x403431,%esi
  40125f:	48 8b 3d 62 42 20 00 	mov    0x204262(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401266:	e8 a5 fb ff ff       	callq  400e10 <fopen@plt>
  40126b:	48 89 05 9e 42 20 00 	mov    %rax,0x20429e(%rip)        # 605510 <infile>
  401272:	48 85 c0             	test   %rax,%rax
  401275:	0f 85 88 00 00 00    	jne    401303 <main+0x14e>
  40127b:	48 8b 0d 46 42 20 00 	mov    0x204246(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  401282:	ba 92 32 40 00       	mov    $0x403292,%edx
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
  4012e7:	be af 32 40 00       	mov    $0x4032af,%esi
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
  40131b:	be 01 00 00 00       	mov    $0x1,%esi
  401320:	44 89 ef             	mov    %r13d,%edi
  401323:	e8 08 fd ff ff       	callq  401030 <initialize_target>
  401328:	83 3d f9 41 20 00 00 	cmpl   $0x0,0x2041f9(%rip)        # 605528 <is_checker>
  40132f:	74 2a                	je     40135b <main+0x1a6>
  401331:	44 3b 35 e8 41 20 00 	cmp    0x2041e8(%rip),%r14d        # 605520 <authkey>
  401338:	74 21                	je     40135b <main+0x1a6>
  40133a:	44 89 f2             	mov    %r14d,%edx
  40133d:	be e8 31 40 00       	mov    $0x4031e8,%esi
  401342:	bf 01 00 00 00       	mov    $0x1,%edi
  401347:	b8 00 00 00 00       	mov    $0x0,%eax
  40134c:	e8 af fa ff ff       	callq  400e00 <__printf_chk@plt>
  401351:	b8 00 00 00 00       	mov    $0x0,%eax
  401356:	e8 59 09 00 00       	callq  401cb4 <check_fail>
  40135b:	8b 15 c3 41 20 00    	mov    0x2041c3(%rip),%edx        # 605524 <cookie>
  401361:	be c2 32 40 00       	mov    $0x4032c2,%esi
  401366:	bf 01 00 00 00       	mov    $0x1,%edi
  40136b:	b8 00 00 00 00       	mov    $0x0,%eax
  401370:	e8 8b fa ff ff       	callq  400e00 <__printf_chk@plt>
  401375:	48 8b 3d 24 41 20 00 	mov    0x204124(%rip),%rdi        # 6054a0 <buf_offset>
  40137c:	e8 d4 0d 00 00       	callq  402155 <launch>
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
  40194a:	e8 9a 03 00 00       	callq  401ce9 <Gets>
  40194f:	b8 01 00 00 00       	mov    $0x1,%eax
  401954:	48 83 c4 38          	add    $0x38,%rsp
  401958:	c3                   	retq   

0000000000401959 <touch1>:
  401959:	48 83 ec 08          	sub    $0x8,%rsp
  40195d:	c7 05 b5 3b 20 00 01 	movl   $0x1,0x203bb5(%rip)        # 60551c <vlevel>
  401964:	00 00 00 
  401967:	bf 3a 34 40 00       	mov    $0x40343a,%edi
  40196c:	e8 5f f3 ff ff       	callq  400cd0 <puts@plt>
  401971:	bf 01 00 00 00       	mov    $0x1,%edi
  401976:	e8 b3 05 00 00       	callq  401f2e <validate>
  40197b:	bf 00 00 00 00       	mov    $0x0,%edi
  401980:	e8 cb f4 ff ff       	callq  400e50 <exit@plt>

0000000000401985 <touch2>:
  401985:	48 83 ec 08          	sub    $0x8,%rsp
  401989:	89 fa                	mov    %edi,%edx
  40198b:	c7 05 87 3b 20 00 02 	movl   $0x2,0x203b87(%rip)        # 60551c <vlevel>
  401992:	00 00 00 
  401995:	39 3d 89 3b 20 00    	cmp    %edi,0x203b89(%rip)        # 605524 <cookie>
  40199b:	75 20                	jne    4019bd <touch2+0x38>
  40199d:	be 60 34 40 00       	mov    $0x403460,%esi
  4019a2:	bf 01 00 00 00       	mov    $0x1,%edi
  4019a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ac:	e8 4f f4 ff ff       	callq  400e00 <__printf_chk@plt>
  4019b1:	bf 02 00 00 00       	mov    $0x2,%edi
  4019b6:	e8 73 05 00 00       	callq  401f2e <validate>
  4019bb:	eb 1e                	jmp    4019db <touch2+0x56>
  4019bd:	be 88 34 40 00       	mov    $0x403488,%esi
  4019c2:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4019cc:	e8 2f f4 ff ff       	callq  400e00 <__printf_chk@plt>
  4019d1:	bf 02 00 00 00       	mov    $0x2,%edi
  4019d6:	e8 15 06 00 00       	callq  401ff0 <fail>
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
  401a42:	b9 57 34 40 00       	mov    $0x403457,%ecx
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
  401ab9:	be b0 34 40 00       	mov    $0x4034b0,%esi
  401abe:	bf 01 00 00 00       	mov    $0x1,%edi
  401ac3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ac8:	e8 33 f3 ff ff       	callq  400e00 <__printf_chk@plt>
  401acd:	bf 03 00 00 00       	mov    $0x3,%edi
  401ad2:	e8 57 04 00 00       	callq  401f2e <validate>
  401ad7:	eb 21                	jmp    401afa <touch3+0x64>
  401ad9:	48 89 da             	mov    %rbx,%rdx
  401adc:	be d8 34 40 00       	mov    $0x4034d8,%esi
  401ae1:	bf 01 00 00 00       	mov    $0x1,%edi
  401ae6:	b8 00 00 00 00       	mov    $0x0,%eax
  401aeb:	e8 10 f3 ff ff       	callq  400e00 <__printf_chk@plt>
  401af0:	bf 03 00 00 00       	mov    $0x3,%edi
  401af5:	e8 f6 04 00 00       	callq  401ff0 <fail>
  401afa:	bf 00 00 00 00       	mov    $0x0,%edi
  401aff:	e8 4c f3 ff ff       	callq  400e50 <exit@plt>

0000000000401b04 <test>:
  401b04:	48 83 ec 08          	sub    $0x8,%rsp
  401b08:	b8 00 00 00 00       	mov    $0x0,%eax
  401b0d:	e8 31 fe ff ff       	callq  401943 <getbuf>
  401b12:	89 c2                	mov    %eax,%edx
  401b14:	be 00 35 40 00       	mov    $0x403500,%esi
  401b19:	bf 01 00 00 00       	mov    $0x1,%edi
  401b1e:	b8 00 00 00 00       	mov    $0x0,%eax
  401b23:	e8 d8 f2 ff ff       	callq  400e00 <__printf_chk@plt>
  401b28:	48 83 c4 08          	add    $0x8,%rsp
  401b2c:	c3                   	retq   

0000000000401b2d <start_farm>:
  401b2d:	b8 01 00 00 00       	mov    $0x1,%eax
  401b32:	c3                   	retq   

0000000000401b33 <getval_433>:
  401b33:	b8 e1 50 c3 00       	mov    $0xc350e1,%eax
  401b38:	c3                   	retq   

0000000000401b39 <addval_391>:
  401b39:	8d 87 49 58 90 90    	lea    -0x6f6fa7b7(%rdi),%eax
  401b3f:	c3                   	retq   

0000000000401b40 <getval_460>:
  401b40:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  401b45:	c3                   	retq   

0000000000401b46 <getval_470>:
  401b46:	b8 f5 48 89 c7       	mov    $0xc78948f5,%eax
  401b4b:	c3                   	retq   

0000000000401b4c <getval_482>:
  401b4c:	b8 b0 5f 58 92       	mov    $0x92585fb0,%eax
  401b51:	c3                   	retq   

0000000000401b52 <addval_299>:
  401b52:	8d 87 58 89 c7 c3    	lea    -0x3c3876a8(%rdi),%eax
  401b58:	c3                   	retq   

0000000000401b59 <getval_267>:
  401b59:	b8 48 09 c7 c3       	mov    $0xc3c70948,%eax
  401b5e:	c3                   	retq   

0000000000401b5f <addval_179>:
  401b5f:	8d 87 58 90 c3 28    	lea    0x28c39058(%rdi),%eax
  401b65:	c3                   	retq   

0000000000401b66 <mid_farm>:
  401b66:	b8 01 00 00 00       	mov    $0x1,%eax
  401b6b:	c3                   	retq   

0000000000401b6c <add_xy>:
  401b6c:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401b70:	c3                   	retq   

0000000000401b71 <getval_404>:
  401b71:	b8 89 ce 78 d2       	mov    $0xd278ce89,%eax
  401b76:	c3                   	retq   

0000000000401b77 <getval_265>:
  401b77:	b8 88 d1 20 d2       	mov    $0xd220d188,%eax
  401b7c:	c3                   	retq   

0000000000401b7d <getval_363>:
  401b7d:	b8 89 d1 90 c7       	mov    $0xc790d189,%eax
  401b82:	c3                   	retq   

0000000000401b83 <getval_407>:
  401b83:	b8 89 ce 28 c9       	mov    $0xc928ce89,%eax
  401b88:	c3                   	retq   

0000000000401b89 <addval_445>:
  401b89:	8d 87 42 48 89 e0    	lea    -0x1f76b7be(%rdi),%eax
  401b8f:	c3                   	retq   

0000000000401b90 <addval_245>:
  401b90:	8d 87 89 d1 38 c0    	lea    -0x3fc72e77(%rdi),%eax
  401b96:	c3                   	retq   

0000000000401b97 <setval_388>:
  401b97:	c7 07 68 89 e0 c3    	movl   $0xc3e08968,(%rdi)
  401b9d:	c3                   	retq   

0000000000401b9e <addval_308>:
  401b9e:	8d 87 89 ce 90 c3    	lea    -0x3c6f3177(%rdi),%eax
  401ba4:	c3                   	retq   

0000000000401ba5 <setval_356>:
  401ba5:	c7 07 89 d1 84 c9    	movl   $0xc984d189,(%rdi)
  401bab:	c3                   	retq   

0000000000401bac <addval_355>:
  401bac:	8d 87 48 99 e0 90    	lea    -0x6f1f66b8(%rdi),%eax
  401bb2:	c3                   	retq   

0000000000401bb3 <getval_338>:
  401bb3:	b8 ac 08 89 e0       	mov    $0xe08908ac,%eax
  401bb8:	c3                   	retq   

0000000000401bb9 <addval_247>:
  401bb9:	8d 87 27 89 c2 c1    	lea    -0x3e3d76d9(%rdi),%eax
  401bbf:	c3                   	retq   

0000000000401bc0 <setval_281>:
  401bc0:	c7 07 8b c2 90 90    	movl   $0x9090c28b,(%rdi)
  401bc6:	c3                   	retq   

0000000000401bc7 <getval_283>:
  401bc7:	b8 a9 c2 20 c0       	mov    $0xc020c2a9,%eax
  401bcc:	c3                   	retq   

0000000000401bcd <setval_389>:
  401bcd:	c7 07 89 c2 92 90    	movl   $0x9092c289,(%rdi)
  401bd3:	c3                   	retq   

0000000000401bd4 <getval_287>:
  401bd4:	b8 48 89 e0 c2       	mov    $0xc2e08948,%eax
  401bd9:	c3                   	retq   

0000000000401bda <getval_360>:
  401bda:	b8 8b d1 38 c9       	mov    $0xc938d18b,%eax
  401bdf:	c3                   	retq   

0000000000401be0 <setval_457>:
  401be0:	c7 07 89 ce 60 d2    	movl   $0xd260ce89,(%rdi)
  401be6:	c3                   	retq   

0000000000401be7 <getval_358>:
  401be7:	b8 89 ce a4 d2       	mov    $0xd2a4ce89,%eax
  401bec:	c3                   	retq   

0000000000401bed <setval_248>:
  401bed:	c7 07 eb 11 99 d1    	movl   $0xd19911eb,(%rdi)
  401bf3:	c3                   	retq   

0000000000401bf4 <getval_119>:
  401bf4:	b8 48 89 e0 c1       	mov    $0xc1e08948,%eax
  401bf9:	c3                   	retq   

0000000000401bfa <setval_187>:
  401bfa:	c7 07 89 ce 90 c3    	movl   $0xc390ce89,(%rdi)
  401c00:	c3                   	retq   

0000000000401c01 <addval_321>:
  401c01:	8d 87 4e 50 09 c2    	lea    -0x3df6afb2(%rdi),%eax
  401c07:	c3                   	retq   

0000000000401c08 <getval_126>:
  401c08:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401c0d:	c3                   	retq   

0000000000401c0e <getval_487>:
  401c0e:	b8 89 c2 c3 ae       	mov    $0xaec3c289,%eax
  401c13:	c3                   	retq   

0000000000401c14 <getval_382>:
  401c14:	b8 89 d1 90 c7       	mov    $0xc790d189,%eax
  401c19:	c3                   	retq   

0000000000401c1a <addval_401>:
  401c1a:	8d 87 48 8d e0 c3    	lea    -0x3c1f72b8(%rdi),%eax
  401c20:	c3                   	retq   

0000000000401c21 <setval_138>:
  401c21:	c7 07 89 c2 20 db    	movl   $0xdb20c289,(%rdi)
  401c27:	c3                   	retq   

0000000000401c28 <getval_396>:
  401c28:	b8 c9 d1 20 c9       	mov    $0xc920d1c9,%eax
  401c2d:	c3                   	retq   

0000000000401c2e <addval_225>:
  401c2e:	8d 87 89 ce 30 db    	lea    -0x24cf3177(%rdi),%eax
  401c34:	c3                   	retq   

0000000000401c35 <setval_333>:
  401c35:	c7 07 63 e1 81 ce    	movl   $0xce81e163,(%rdi)
  401c3b:	c3                   	retq   

0000000000401c3c <addval_479>:
  401c3c:	8d 87 89 c2 28 db    	lea    -0x24d73d77(%rdi),%eax
  401c42:	c3                   	retq   

0000000000401c43 <end_farm>:
  401c43:	b8 01 00 00 00       	mov    $0x1,%eax
  401c48:	c3                   	retq   

0000000000401c49 <save_char>:
  401c49:	8b 05 f5 44 20 00    	mov    0x2044f5(%rip),%eax        # 606144 <gets_cnt>
  401c4f:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401c54:	7f 49                	jg     401c9f <save_char+0x56>
  401c56:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401c59:	89 f9                	mov    %edi,%ecx
  401c5b:	c0 e9 04             	shr    $0x4,%cl
  401c5e:	83 e1 0f             	and    $0xf,%ecx
  401c61:	0f b6 b1 20 38 40 00 	movzbl 0x403820(%rcx),%esi
  401c68:	48 63 ca             	movslq %edx,%rcx
  401c6b:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401c72:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401c75:	83 e7 0f             	and    $0xf,%edi
  401c78:	0f b6 b7 20 38 40 00 	movzbl 0x403820(%rdi),%esi
  401c7f:	48 63 c9             	movslq %ecx,%rcx
  401c82:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401c89:	83 c2 02             	add    $0x2,%edx
  401c8c:	48 63 d2             	movslq %edx,%rdx
  401c8f:	c6 82 40 55 60 00 20 	movb   $0x20,0x605540(%rdx)
  401c96:	83 c0 01             	add    $0x1,%eax
  401c99:	89 05 a5 44 20 00    	mov    %eax,0x2044a5(%rip)        # 606144 <gets_cnt>
  401c9f:	f3 c3                	repz retq 

0000000000401ca1 <save_term>:
  401ca1:	8b 05 9d 44 20 00    	mov    0x20449d(%rip),%eax        # 606144 <gets_cnt>
  401ca7:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401caa:	48 98                	cltq   
  401cac:	c6 80 40 55 60 00 00 	movb   $0x0,0x605540(%rax)
  401cb3:	c3                   	retq   

0000000000401cb4 <check_fail>:
  401cb4:	48 83 ec 08          	sub    $0x8,%rsp
  401cb8:	0f be 15 89 44 20 00 	movsbl 0x204489(%rip),%edx        # 606148 <target_prefix>
  401cbf:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401cc5:	8b 0d 4d 38 20 00    	mov    0x20384d(%rip),%ecx        # 605518 <check_level>
  401ccb:	be 23 35 40 00       	mov    $0x403523,%esi
  401cd0:	bf 01 00 00 00       	mov    $0x1,%edi
  401cd5:	b8 00 00 00 00       	mov    $0x0,%eax
  401cda:	e8 21 f1 ff ff       	callq  400e00 <__printf_chk@plt>
  401cdf:	bf 01 00 00 00       	mov    $0x1,%edi
  401ce4:	e8 67 f1 ff ff       	callq  400e50 <exit@plt>

0000000000401ce9 <Gets>:
  401ce9:	41 54                	push   %r12
  401ceb:	55                   	push   %rbp
  401cec:	53                   	push   %rbx
  401ced:	49 89 fc             	mov    %rdi,%r12
  401cf0:	c7 05 4a 44 20 00 00 	movl   $0x0,0x20444a(%rip)        # 606144 <gets_cnt>
  401cf7:	00 00 00 
  401cfa:	48 89 fb             	mov    %rdi,%rbx
  401cfd:	eb 11                	jmp    401d10 <Gets+0x27>
  401cff:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401d03:	88 03                	mov    %al,(%rbx)
  401d05:	0f b6 f8             	movzbl %al,%edi
  401d08:	e8 3c ff ff ff       	callq  401c49 <save_char>
  401d0d:	48 89 eb             	mov    %rbp,%rbx
  401d10:	48 8b 3d f9 37 20 00 	mov    0x2037f9(%rip),%rdi        # 605510 <infile>
  401d17:	e8 b4 f0 ff ff       	callq  400dd0 <_IO_getc@plt>
  401d1c:	83 f8 ff             	cmp    $0xffffffff,%eax
  401d1f:	74 05                	je     401d26 <Gets+0x3d>
  401d21:	83 f8 0a             	cmp    $0xa,%eax
  401d24:	75 d9                	jne    401cff <Gets+0x16>
  401d26:	c6 03 00             	movb   $0x0,(%rbx)
  401d29:	b8 00 00 00 00       	mov    $0x0,%eax
  401d2e:	e8 6e ff ff ff       	callq  401ca1 <save_term>
  401d33:	4c 89 e0             	mov    %r12,%rax
  401d36:	5b                   	pop    %rbx
  401d37:	5d                   	pop    %rbp
  401d38:	41 5c                	pop    %r12
  401d3a:	c3                   	retq   

0000000000401d3b <notify_server>:
  401d3b:	53                   	push   %rbx
  401d3c:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401d43:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d4a:	00 00 
  401d4c:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401d53:	00 
  401d54:	31 c0                	xor    %eax,%eax
  401d56:	83 3d cb 37 20 00 00 	cmpl   $0x0,0x2037cb(%rip)        # 605528 <is_checker>
  401d5d:	0f 85 aa 01 00 00    	jne    401f0d <notify_server+0x1d2>
  401d63:	89 fb                	mov    %edi,%ebx
  401d65:	8b 05 d9 43 20 00    	mov    0x2043d9(%rip),%eax        # 606144 <gets_cnt>
  401d6b:	83 c0 64             	add    $0x64,%eax
  401d6e:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401d73:	7e 1e                	jle    401d93 <notify_server+0x58>
  401d75:	be 58 36 40 00       	mov    $0x403658,%esi
  401d7a:	bf 01 00 00 00       	mov    $0x1,%edi
  401d7f:	b8 00 00 00 00       	mov    $0x0,%eax
  401d84:	e8 77 f0 ff ff       	callq  400e00 <__printf_chk@plt>
  401d89:	bf 01 00 00 00       	mov    $0x1,%edi
  401d8e:	e8 bd f0 ff ff       	callq  400e50 <exit@plt>
  401d93:	0f be 05 ae 43 20 00 	movsbl 0x2043ae(%rip),%eax        # 606148 <target_prefix>
  401d9a:	83 3d 07 37 20 00 00 	cmpl   $0x0,0x203707(%rip)        # 6054a8 <notify>
  401da1:	74 08                	je     401dab <notify_server+0x70>
  401da3:	8b 15 77 37 20 00    	mov    0x203777(%rip),%edx        # 605520 <authkey>
  401da9:	eb 05                	jmp    401db0 <notify_server+0x75>
  401dab:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401db0:	85 db                	test   %ebx,%ebx
  401db2:	74 08                	je     401dbc <notify_server+0x81>
  401db4:	41 b9 39 35 40 00    	mov    $0x403539,%r9d
  401dba:	eb 06                	jmp    401dc2 <notify_server+0x87>
  401dbc:	41 b9 3e 35 40 00    	mov    $0x40353e,%r9d
  401dc2:	68 40 55 60 00       	pushq  $0x605540
  401dc7:	56                   	push   %rsi
  401dc8:	50                   	push   %rax
  401dc9:	52                   	push   %rdx
  401dca:	44 8b 05 97 33 20 00 	mov    0x203397(%rip),%r8d        # 605168 <target_id>
  401dd1:	b9 43 35 40 00       	mov    $0x403543,%ecx
  401dd6:	ba 00 20 00 00       	mov    $0x2000,%edx
  401ddb:	be 01 00 00 00       	mov    $0x1,%esi
  401de0:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401de5:	b8 00 00 00 00       	mov    $0x0,%eax
  401dea:	e8 91 f0 ff ff       	callq  400e80 <__sprintf_chk@plt>
  401def:	48 83 c4 20          	add    $0x20,%rsp
  401df3:	83 3d ae 36 20 00 00 	cmpl   $0x0,0x2036ae(%rip)        # 6054a8 <notify>
  401dfa:	0f 84 81 00 00 00    	je     401e81 <notify_server+0x146>
  401e00:	85 db                	test   %ebx,%ebx
  401e02:	74 6e                	je     401e72 <notify_server+0x137>
  401e04:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401e0b:	00 
  401e0c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e12:	48 89 e1             	mov    %rsp,%rcx
  401e15:	48 8b 15 54 33 20 00 	mov    0x203354(%rip),%rdx        # 605170 <lab>
  401e1c:	48 8b 35 55 33 20 00 	mov    0x203355(%rip),%rsi        # 605178 <course>
  401e23:	48 8b 3d 36 33 20 00 	mov    0x203336(%rip),%rdi        # 605160 <user_id>
  401e2a:	e8 ef 10 00 00       	callq  402f1e <driver_post>
  401e2f:	85 c0                	test   %eax,%eax
  401e31:	79 26                	jns    401e59 <notify_server+0x11e>
  401e33:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401e3a:	00 
  401e3b:	be 5f 35 40 00       	mov    $0x40355f,%esi
  401e40:	bf 01 00 00 00       	mov    $0x1,%edi
  401e45:	b8 00 00 00 00       	mov    $0x0,%eax
  401e4a:	e8 b1 ef ff ff       	callq  400e00 <__printf_chk@plt>
  401e4f:	bf 01 00 00 00       	mov    $0x1,%edi
  401e54:	e8 f7 ef ff ff       	callq  400e50 <exit@plt>
  401e59:	bf 88 36 40 00       	mov    $0x403688,%edi
  401e5e:	e8 6d ee ff ff       	callq  400cd0 <puts@plt>
  401e63:	bf 6b 35 40 00       	mov    $0x40356b,%edi
  401e68:	e8 63 ee ff ff       	callq  400cd0 <puts@plt>
  401e6d:	e9 9b 00 00 00       	jmpq   401f0d <notify_server+0x1d2>
  401e72:	bf 75 35 40 00       	mov    $0x403575,%edi
  401e77:	e8 54 ee ff ff       	callq  400cd0 <puts@plt>
  401e7c:	e9 8c 00 00 00       	jmpq   401f0d <notify_server+0x1d2>
  401e81:	85 db                	test   %ebx,%ebx
  401e83:	74 07                	je     401e8c <notify_server+0x151>
  401e85:	ba 39 35 40 00       	mov    $0x403539,%edx
  401e8a:	eb 05                	jmp    401e91 <notify_server+0x156>
  401e8c:	ba 3e 35 40 00       	mov    $0x40353e,%edx
  401e91:	be c0 36 40 00       	mov    $0x4036c0,%esi
  401e96:	bf 01 00 00 00       	mov    $0x1,%edi
  401e9b:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea0:	e8 5b ef ff ff       	callq  400e00 <__printf_chk@plt>
  401ea5:	48 8b 15 b4 32 20 00 	mov    0x2032b4(%rip),%rdx        # 605160 <user_id>
  401eac:	be 7c 35 40 00       	mov    $0x40357c,%esi
  401eb1:	bf 01 00 00 00       	mov    $0x1,%edi
  401eb6:	b8 00 00 00 00       	mov    $0x0,%eax
  401ebb:	e8 40 ef ff ff       	callq  400e00 <__printf_chk@plt>
  401ec0:	48 8b 15 b1 32 20 00 	mov    0x2032b1(%rip),%rdx        # 605178 <course>
  401ec7:	be 89 35 40 00       	mov    $0x403589,%esi
  401ecc:	bf 01 00 00 00       	mov    $0x1,%edi
  401ed1:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed6:	e8 25 ef ff ff       	callq  400e00 <__printf_chk@plt>
  401edb:	48 8b 15 8e 32 20 00 	mov    0x20328e(%rip),%rdx        # 605170 <lab>
  401ee2:	be 95 35 40 00       	mov    $0x403595,%esi
  401ee7:	bf 01 00 00 00       	mov    $0x1,%edi
  401eec:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef1:	e8 0a ef ff ff       	callq  400e00 <__printf_chk@plt>
  401ef6:	48 89 e2             	mov    %rsp,%rdx
  401ef9:	be 9e 35 40 00       	mov    $0x40359e,%esi
  401efe:	bf 01 00 00 00       	mov    $0x1,%edi
  401f03:	b8 00 00 00 00       	mov    $0x0,%eax
  401f08:	e8 f3 ee ff ff       	callq  400e00 <__printf_chk@plt>
  401f0d:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401f14:	00 
  401f15:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401f1c:	00 00 
  401f1e:	74 05                	je     401f25 <notify_server+0x1ea>
  401f20:	e8 cb ed ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  401f25:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401f2c:	5b                   	pop    %rbx
  401f2d:	c3                   	retq   

0000000000401f2e <validate>:
  401f2e:	53                   	push   %rbx
  401f2f:	89 fb                	mov    %edi,%ebx
  401f31:	83 3d f0 35 20 00 00 	cmpl   $0x0,0x2035f0(%rip)        # 605528 <is_checker>
  401f38:	74 6b                	je     401fa5 <validate+0x77>
  401f3a:	39 3d dc 35 20 00    	cmp    %edi,0x2035dc(%rip)        # 60551c <vlevel>
  401f40:	74 14                	je     401f56 <validate+0x28>
  401f42:	bf aa 35 40 00       	mov    $0x4035aa,%edi
  401f47:	e8 84 ed ff ff       	callq  400cd0 <puts@plt>
  401f4c:	b8 00 00 00 00       	mov    $0x0,%eax
  401f51:	e8 5e fd ff ff       	callq  401cb4 <check_fail>
  401f56:	8b 15 bc 35 20 00    	mov    0x2035bc(%rip),%edx        # 605518 <check_level>
  401f5c:	39 d7                	cmp    %edx,%edi
  401f5e:	74 20                	je     401f80 <validate+0x52>
  401f60:	89 f9                	mov    %edi,%ecx
  401f62:	be e8 36 40 00       	mov    $0x4036e8,%esi
  401f67:	bf 01 00 00 00       	mov    $0x1,%edi
  401f6c:	b8 00 00 00 00       	mov    $0x0,%eax
  401f71:	e8 8a ee ff ff       	callq  400e00 <__printf_chk@plt>
  401f76:	b8 00 00 00 00       	mov    $0x0,%eax
  401f7b:	e8 34 fd ff ff       	callq  401cb4 <check_fail>
  401f80:	0f be 15 c1 41 20 00 	movsbl 0x2041c1(%rip),%edx        # 606148 <target_prefix>
  401f87:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401f8d:	89 f9                	mov    %edi,%ecx
  401f8f:	be c8 35 40 00       	mov    $0x4035c8,%esi
  401f94:	bf 01 00 00 00       	mov    $0x1,%edi
  401f99:	b8 00 00 00 00       	mov    $0x0,%eax
  401f9e:	e8 5d ee ff ff       	callq  400e00 <__printf_chk@plt>
  401fa3:	eb 49                	jmp    401fee <validate+0xc0>
  401fa5:	3b 3d 71 35 20 00    	cmp    0x203571(%rip),%edi        # 60551c <vlevel>
  401fab:	74 18                	je     401fc5 <validate+0x97>
  401fad:	bf aa 35 40 00       	mov    $0x4035aa,%edi
  401fb2:	e8 19 ed ff ff       	callq  400cd0 <puts@plt>
  401fb7:	89 de                	mov    %ebx,%esi
  401fb9:	bf 00 00 00 00       	mov    $0x0,%edi
  401fbe:	e8 78 fd ff ff       	callq  401d3b <notify_server>
  401fc3:	eb 29                	jmp    401fee <validate+0xc0>
  401fc5:	0f be 0d 7c 41 20 00 	movsbl 0x20417c(%rip),%ecx        # 606148 <target_prefix>
  401fcc:	89 fa                	mov    %edi,%edx
  401fce:	be 10 37 40 00       	mov    $0x403710,%esi
  401fd3:	bf 01 00 00 00       	mov    $0x1,%edi
  401fd8:	b8 00 00 00 00       	mov    $0x0,%eax
  401fdd:	e8 1e ee ff ff       	callq  400e00 <__printf_chk@plt>
  401fe2:	89 de                	mov    %ebx,%esi
  401fe4:	bf 01 00 00 00       	mov    $0x1,%edi
  401fe9:	e8 4d fd ff ff       	callq  401d3b <notify_server>
  401fee:	5b                   	pop    %rbx
  401fef:	c3                   	retq   

0000000000401ff0 <fail>:
  401ff0:	48 83 ec 08          	sub    $0x8,%rsp
  401ff4:	83 3d 2d 35 20 00 00 	cmpl   $0x0,0x20352d(%rip)        # 605528 <is_checker>
  401ffb:	74 0a                	je     402007 <fail+0x17>
  401ffd:	b8 00 00 00 00       	mov    $0x0,%eax
  402002:	e8 ad fc ff ff       	callq  401cb4 <check_fail>
  402007:	89 fe                	mov    %edi,%esi
  402009:	bf 00 00 00 00       	mov    $0x0,%edi
  40200e:	e8 28 fd ff ff       	callq  401d3b <notify_server>
  402013:	48 83 c4 08          	add    $0x8,%rsp
  402017:	c3                   	retq   

0000000000402018 <bushandler>:
  402018:	48 83 ec 08          	sub    $0x8,%rsp
  40201c:	83 3d 05 35 20 00 00 	cmpl   $0x0,0x203505(%rip)        # 605528 <is_checker>
  402023:	74 14                	je     402039 <bushandler+0x21>
  402025:	bf dd 35 40 00       	mov    $0x4035dd,%edi
  40202a:	e8 a1 ec ff ff       	callq  400cd0 <puts@plt>
  40202f:	b8 00 00 00 00       	mov    $0x0,%eax
  402034:	e8 7b fc ff ff       	callq  401cb4 <check_fail>
  402039:	bf 48 37 40 00       	mov    $0x403748,%edi
  40203e:	e8 8d ec ff ff       	callq  400cd0 <puts@plt>
  402043:	bf e7 35 40 00       	mov    $0x4035e7,%edi
  402048:	e8 83 ec ff ff       	callq  400cd0 <puts@plt>
  40204d:	be 00 00 00 00       	mov    $0x0,%esi
  402052:	bf 00 00 00 00       	mov    $0x0,%edi
  402057:	e8 df fc ff ff       	callq  401d3b <notify_server>
  40205c:	bf 01 00 00 00       	mov    $0x1,%edi
  402061:	e8 ea ed ff ff       	callq  400e50 <exit@plt>

0000000000402066 <seghandler>:
  402066:	48 83 ec 08          	sub    $0x8,%rsp
  40206a:	83 3d b7 34 20 00 00 	cmpl   $0x0,0x2034b7(%rip)        # 605528 <is_checker>
  402071:	74 14                	je     402087 <seghandler+0x21>
  402073:	bf fd 35 40 00       	mov    $0x4035fd,%edi
  402078:	e8 53 ec ff ff       	callq  400cd0 <puts@plt>
  40207d:	b8 00 00 00 00       	mov    $0x0,%eax
  402082:	e8 2d fc ff ff       	callq  401cb4 <check_fail>
  402087:	bf 68 37 40 00       	mov    $0x403768,%edi
  40208c:	e8 3f ec ff ff       	callq  400cd0 <puts@plt>
  402091:	bf e7 35 40 00       	mov    $0x4035e7,%edi
  402096:	e8 35 ec ff ff       	callq  400cd0 <puts@plt>
  40209b:	be 00 00 00 00       	mov    $0x0,%esi
  4020a0:	bf 00 00 00 00       	mov    $0x0,%edi
  4020a5:	e8 91 fc ff ff       	callq  401d3b <notify_server>
  4020aa:	bf 01 00 00 00       	mov    $0x1,%edi
  4020af:	e8 9c ed ff ff       	callq  400e50 <exit@plt>

00000000004020b4 <illegalhandler>:
  4020b4:	48 83 ec 08          	sub    $0x8,%rsp
  4020b8:	83 3d 69 34 20 00 00 	cmpl   $0x0,0x203469(%rip)        # 605528 <is_checker>
  4020bf:	74 14                	je     4020d5 <illegalhandler+0x21>
  4020c1:	bf 10 36 40 00       	mov    $0x403610,%edi
  4020c6:	e8 05 ec ff ff       	callq  400cd0 <puts@plt>
  4020cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4020d0:	e8 df fb ff ff       	callq  401cb4 <check_fail>
  4020d5:	bf 90 37 40 00       	mov    $0x403790,%edi
  4020da:	e8 f1 eb ff ff       	callq  400cd0 <puts@plt>
  4020df:	bf e7 35 40 00       	mov    $0x4035e7,%edi
  4020e4:	e8 e7 eb ff ff       	callq  400cd0 <puts@plt>
  4020e9:	be 00 00 00 00       	mov    $0x0,%esi
  4020ee:	bf 00 00 00 00       	mov    $0x0,%edi
  4020f3:	e8 43 fc ff ff       	callq  401d3b <notify_server>
  4020f8:	bf 01 00 00 00       	mov    $0x1,%edi
  4020fd:	e8 4e ed ff ff       	callq  400e50 <exit@plt>

0000000000402102 <sigalrmhandler>:
  402102:	48 83 ec 08          	sub    $0x8,%rsp
  402106:	83 3d 1b 34 20 00 00 	cmpl   $0x0,0x20341b(%rip)        # 605528 <is_checker>
  40210d:	74 14                	je     402123 <sigalrmhandler+0x21>
  40210f:	bf 24 36 40 00       	mov    $0x403624,%edi
  402114:	e8 b7 eb ff ff       	callq  400cd0 <puts@plt>
  402119:	b8 00 00 00 00       	mov    $0x0,%eax
  40211e:	e8 91 fb ff ff       	callq  401cb4 <check_fail>
  402123:	ba 05 00 00 00       	mov    $0x5,%edx
  402128:	be c0 37 40 00       	mov    $0x4037c0,%esi
  40212d:	bf 01 00 00 00       	mov    $0x1,%edi
  402132:	b8 00 00 00 00       	mov    $0x0,%eax
  402137:	e8 c4 ec ff ff       	callq  400e00 <__printf_chk@plt>
  40213c:	be 00 00 00 00       	mov    $0x0,%esi
  402141:	bf 00 00 00 00       	mov    $0x0,%edi
  402146:	e8 f0 fb ff ff       	callq  401d3b <notify_server>
  40214b:	bf 01 00 00 00       	mov    $0x1,%edi
  402150:	e8 fb ec ff ff       	callq  400e50 <exit@plt>

0000000000402155 <launch>:
  402155:	55                   	push   %rbp
  402156:	48 89 e5             	mov    %rsp,%rbp
  402159:	48 83 ec 10          	sub    $0x10,%rsp
  40215d:	48 89 fa             	mov    %rdi,%rdx
  402160:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402167:	00 00 
  402169:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40216d:	31 c0                	xor    %eax,%eax
  40216f:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402173:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  402177:	48 29 c4             	sub    %rax,%rsp
  40217a:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  40217f:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402183:	be f4 00 00 00       	mov    $0xf4,%esi
  402188:	e8 83 eb ff ff       	callq  400d10 <memset@plt>
  40218d:	48 8b 05 2c 33 20 00 	mov    0x20332c(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  402194:	48 39 05 75 33 20 00 	cmp    %rax,0x203375(%rip)        # 605510 <infile>
  40219b:	75 14                	jne    4021b1 <launch+0x5c>
  40219d:	be 2c 36 40 00       	mov    $0x40362c,%esi
  4021a2:	bf 01 00 00 00       	mov    $0x1,%edi
  4021a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ac:	e8 4f ec ff ff       	callq  400e00 <__printf_chk@plt>
  4021b1:	c7 05 61 33 20 00 00 	movl   $0x0,0x203361(%rip)        # 60551c <vlevel>
  4021b8:	00 00 00 
  4021bb:	b8 00 00 00 00       	mov    $0x0,%eax
  4021c0:	e8 3f f9 ff ff       	callq  401b04 <test>
  4021c5:	83 3d 5c 33 20 00 00 	cmpl   $0x0,0x20335c(%rip)        # 605528 <is_checker>
  4021cc:	74 14                	je     4021e2 <launch+0x8d>
  4021ce:	bf 39 36 40 00       	mov    $0x403639,%edi
  4021d3:	e8 f8 ea ff ff       	callq  400cd0 <puts@plt>
  4021d8:	b8 00 00 00 00       	mov    $0x0,%eax
  4021dd:	e8 d2 fa ff ff       	callq  401cb4 <check_fail>
  4021e2:	bf 44 36 40 00       	mov    $0x403644,%edi
  4021e7:	e8 e4 ea ff ff       	callq  400cd0 <puts@plt>
  4021ec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4021f0:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4021f7:	00 00 
  4021f9:	74 05                	je     402200 <launch+0xab>
  4021fb:	e8 f0 ea ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  402200:	c9                   	leaveq 
  402201:	c3                   	retq   

0000000000402202 <stable_launch>:
  402202:	53                   	push   %rbx
  402203:	48 89 3d fe 32 20 00 	mov    %rdi,0x2032fe(%rip)        # 605508 <global_offset>
  40220a:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402210:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402216:	b9 32 01 00 00       	mov    $0x132,%ecx
  40221b:	ba 07 00 00 00       	mov    $0x7,%edx
  402220:	be 00 00 10 00       	mov    $0x100000,%esi
  402225:	bf 00 60 58 55       	mov    $0x55586000,%edi
  40222a:	e8 d1 ea ff ff       	callq  400d00 <mmap@plt>
  40222f:	48 89 c3             	mov    %rax,%rbx
  402232:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402238:	74 37                	je     402271 <stable_launch+0x6f>
  40223a:	be 00 00 10 00       	mov    $0x100000,%esi
  40223f:	48 89 c7             	mov    %rax,%rdi
  402242:	e8 a9 eb ff ff       	callq  400df0 <munmap@plt>
  402247:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40224c:	ba f8 37 40 00       	mov    $0x4037f8,%edx
  402251:	be 01 00 00 00       	mov    $0x1,%esi
  402256:	48 8b 3d 83 32 20 00 	mov    0x203283(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  40225d:	b8 00 00 00 00       	mov    $0x0,%eax
  402262:	e8 09 ec ff ff       	callq  400e70 <__fprintf_chk@plt>
  402267:	bf 01 00 00 00       	mov    $0x1,%edi
  40226c:	e8 df eb ff ff       	callq  400e50 <exit@plt>
  402271:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402278:	48 89 15 d1 3e 20 00 	mov    %rdx,0x203ed1(%rip)        # 606150 <stack_top>
  40227f:	48 89 e0             	mov    %rsp,%rax
  402282:	48 89 d4             	mov    %rdx,%rsp
  402285:	48 89 c2             	mov    %rax,%rdx
  402288:	48 89 15 71 32 20 00 	mov    %rdx,0x203271(%rip)        # 605500 <global_save_stack>
  40228f:	48 8b 3d 72 32 20 00 	mov    0x203272(%rip),%rdi        # 605508 <global_offset>
  402296:	e8 ba fe ff ff       	callq  402155 <launch>
  40229b:	48 8b 05 5e 32 20 00 	mov    0x20325e(%rip),%rax        # 605500 <global_save_stack>
  4022a2:	48 89 c4             	mov    %rax,%rsp
  4022a5:	be 00 00 10 00       	mov    $0x100000,%esi
  4022aa:	48 89 df             	mov    %rbx,%rdi
  4022ad:	e8 3e eb ff ff       	callq  400df0 <munmap@plt>
  4022b2:	5b                   	pop    %rbx
  4022b3:	c3                   	retq   

00000000004022b4 <rio_readinitb>:
  4022b4:	89 37                	mov    %esi,(%rdi)
  4022b6:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4022bd:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4022c1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4022c5:	c3                   	retq   

00000000004022c6 <sigalrm_handler>:
  4022c6:	48 83 ec 08          	sub    $0x8,%rsp
  4022ca:	b9 00 00 00 00       	mov    $0x0,%ecx
  4022cf:	ba 30 38 40 00       	mov    $0x403830,%edx
  4022d4:	be 01 00 00 00       	mov    $0x1,%esi
  4022d9:	48 8b 3d 00 32 20 00 	mov    0x203200(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4022e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4022e5:	e8 86 eb ff ff       	callq  400e70 <__fprintf_chk@plt>
  4022ea:	bf 01 00 00 00       	mov    $0x1,%edi
  4022ef:	e8 5c eb ff ff       	callq  400e50 <exit@plt>

00000000004022f4 <rio_writen>:
  4022f4:	41 55                	push   %r13
  4022f6:	41 54                	push   %r12
  4022f8:	55                   	push   %rbp
  4022f9:	53                   	push   %rbx
  4022fa:	48 83 ec 08          	sub    $0x8,%rsp
  4022fe:	41 89 fc             	mov    %edi,%r12d
  402301:	48 89 f5             	mov    %rsi,%rbp
  402304:	49 89 d5             	mov    %rdx,%r13
  402307:	48 89 d3             	mov    %rdx,%rbx
  40230a:	eb 28                	jmp    402334 <rio_writen+0x40>
  40230c:	48 89 da             	mov    %rbx,%rdx
  40230f:	48 89 ee             	mov    %rbp,%rsi
  402312:	44 89 e7             	mov    %r12d,%edi
  402315:	e8 c6 e9 ff ff       	callq  400ce0 <write@plt>
  40231a:	48 85 c0             	test   %rax,%rax
  40231d:	7f 0f                	jg     40232e <rio_writen+0x3a>
  40231f:	e8 6c e9 ff ff       	callq  400c90 <__errno_location@plt>
  402324:	83 38 04             	cmpl   $0x4,(%rax)
  402327:	75 15                	jne    40233e <rio_writen+0x4a>
  402329:	b8 00 00 00 00       	mov    $0x0,%eax
  40232e:	48 29 c3             	sub    %rax,%rbx
  402331:	48 01 c5             	add    %rax,%rbp
  402334:	48 85 db             	test   %rbx,%rbx
  402337:	75 d3                	jne    40230c <rio_writen+0x18>
  402339:	4c 89 e8             	mov    %r13,%rax
  40233c:	eb 07                	jmp    402345 <rio_writen+0x51>
  40233e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402345:	48 83 c4 08          	add    $0x8,%rsp
  402349:	5b                   	pop    %rbx
  40234a:	5d                   	pop    %rbp
  40234b:	41 5c                	pop    %r12
  40234d:	41 5d                	pop    %r13
  40234f:	c3                   	retq   

0000000000402350 <rio_read>:
  402350:	41 55                	push   %r13
  402352:	41 54                	push   %r12
  402354:	55                   	push   %rbp
  402355:	53                   	push   %rbx
  402356:	48 83 ec 08          	sub    $0x8,%rsp
  40235a:	48 89 fb             	mov    %rdi,%rbx
  40235d:	49 89 f5             	mov    %rsi,%r13
  402360:	49 89 d4             	mov    %rdx,%r12
  402363:	eb 2e                	jmp    402393 <rio_read+0x43>
  402365:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402369:	8b 3b                	mov    (%rbx),%edi
  40236b:	ba 00 20 00 00       	mov    $0x2000,%edx
  402370:	48 89 ee             	mov    %rbp,%rsi
  402373:	e8 c8 e9 ff ff       	callq  400d40 <read@plt>
  402378:	89 43 04             	mov    %eax,0x4(%rbx)
  40237b:	85 c0                	test   %eax,%eax
  40237d:	79 0c                	jns    40238b <rio_read+0x3b>
  40237f:	e8 0c e9 ff ff       	callq  400c90 <__errno_location@plt>
  402384:	83 38 04             	cmpl   $0x4,(%rax)
  402387:	74 0a                	je     402393 <rio_read+0x43>
  402389:	eb 37                	jmp    4023c2 <rio_read+0x72>
  40238b:	85 c0                	test   %eax,%eax
  40238d:	74 3c                	je     4023cb <rio_read+0x7b>
  40238f:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402393:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402396:	85 ed                	test   %ebp,%ebp
  402398:	7e cb                	jle    402365 <rio_read+0x15>
  40239a:	89 e8                	mov    %ebp,%eax
  40239c:	49 39 c4             	cmp    %rax,%r12
  40239f:	77 03                	ja     4023a4 <rio_read+0x54>
  4023a1:	44 89 e5             	mov    %r12d,%ebp
  4023a4:	4c 63 e5             	movslq %ebp,%r12
  4023a7:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4023ab:	4c 89 e2             	mov    %r12,%rdx
  4023ae:	4c 89 ef             	mov    %r13,%rdi
  4023b1:	e8 ea e9 ff ff       	callq  400da0 <memcpy@plt>
  4023b6:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4023ba:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4023bd:	4c 89 e0             	mov    %r12,%rax
  4023c0:	eb 0e                	jmp    4023d0 <rio_read+0x80>
  4023c2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4023c9:	eb 05                	jmp    4023d0 <rio_read+0x80>
  4023cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4023d0:	48 83 c4 08          	add    $0x8,%rsp
  4023d4:	5b                   	pop    %rbx
  4023d5:	5d                   	pop    %rbp
  4023d6:	41 5c                	pop    %r12
  4023d8:	41 5d                	pop    %r13
  4023da:	c3                   	retq   

00000000004023db <rio_readlineb>:
  4023db:	41 55                	push   %r13
  4023dd:	41 54                	push   %r12
  4023df:	55                   	push   %rbp
  4023e0:	53                   	push   %rbx
  4023e1:	48 83 ec 18          	sub    $0x18,%rsp
  4023e5:	49 89 fd             	mov    %rdi,%r13
  4023e8:	48 89 f5             	mov    %rsi,%rbp
  4023eb:	49 89 d4             	mov    %rdx,%r12
  4023ee:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023f5:	00 00 
  4023f7:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4023fc:	31 c0                	xor    %eax,%eax
  4023fe:	bb 01 00 00 00       	mov    $0x1,%ebx
  402403:	eb 3f                	jmp    402444 <rio_readlineb+0x69>
  402405:	ba 01 00 00 00       	mov    $0x1,%edx
  40240a:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  40240f:	4c 89 ef             	mov    %r13,%rdi
  402412:	e8 39 ff ff ff       	callq  402350 <rio_read>
  402417:	83 f8 01             	cmp    $0x1,%eax
  40241a:	75 15                	jne    402431 <rio_readlineb+0x56>
  40241c:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402420:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  402425:	88 55 00             	mov    %dl,0x0(%rbp)
  402428:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  40242d:	75 0e                	jne    40243d <rio_readlineb+0x62>
  40242f:	eb 1a                	jmp    40244b <rio_readlineb+0x70>
  402431:	85 c0                	test   %eax,%eax
  402433:	75 22                	jne    402457 <rio_readlineb+0x7c>
  402435:	48 83 fb 01          	cmp    $0x1,%rbx
  402439:	75 13                	jne    40244e <rio_readlineb+0x73>
  40243b:	eb 23                	jmp    402460 <rio_readlineb+0x85>
  40243d:	48 83 c3 01          	add    $0x1,%rbx
  402441:	48 89 c5             	mov    %rax,%rbp
  402444:	4c 39 e3             	cmp    %r12,%rbx
  402447:	72 bc                	jb     402405 <rio_readlineb+0x2a>
  402449:	eb 03                	jmp    40244e <rio_readlineb+0x73>
  40244b:	48 89 c5             	mov    %rax,%rbp
  40244e:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402452:	48 89 d8             	mov    %rbx,%rax
  402455:	eb 0e                	jmp    402465 <rio_readlineb+0x8a>
  402457:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40245e:	eb 05                	jmp    402465 <rio_readlineb+0x8a>
  402460:	b8 00 00 00 00       	mov    $0x0,%eax
  402465:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40246a:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402471:	00 00 
  402473:	74 05                	je     40247a <rio_readlineb+0x9f>
  402475:	e8 76 e8 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  40247a:	48 83 c4 18          	add    $0x18,%rsp
  40247e:	5b                   	pop    %rbx
  40247f:	5d                   	pop    %rbp
  402480:	41 5c                	pop    %r12
  402482:	41 5d                	pop    %r13
  402484:	c3                   	retq   

0000000000402485 <urlencode>:
  402485:	41 54                	push   %r12
  402487:	55                   	push   %rbp
  402488:	53                   	push   %rbx
  402489:	48 83 ec 10          	sub    $0x10,%rsp
  40248d:	48 89 fb             	mov    %rdi,%rbx
  402490:	48 89 f5             	mov    %rsi,%rbp
  402493:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40249a:	00 00 
  40249c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4024a1:	31 c0                	xor    %eax,%eax
  4024a3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4024aa:	f2 ae                	repnz scas %es:(%rdi),%al
  4024ac:	48 f7 d1             	not    %rcx
  4024af:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4024b2:	e9 aa 00 00 00       	jmpq   402561 <urlencode+0xdc>
  4024b7:	44 0f b6 03          	movzbl (%rbx),%r8d
  4024bb:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4024bf:	0f 94 c2             	sete   %dl
  4024c2:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4024c6:	0f 94 c0             	sete   %al
  4024c9:	08 c2                	or     %al,%dl
  4024cb:	75 24                	jne    4024f1 <urlencode+0x6c>
  4024cd:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4024d1:	74 1e                	je     4024f1 <urlencode+0x6c>
  4024d3:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4024d7:	74 18                	je     4024f1 <urlencode+0x6c>
  4024d9:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4024dd:	3c 09                	cmp    $0x9,%al
  4024df:	76 10                	jbe    4024f1 <urlencode+0x6c>
  4024e1:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4024e5:	3c 19                	cmp    $0x19,%al
  4024e7:	76 08                	jbe    4024f1 <urlencode+0x6c>
  4024e9:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4024ed:	3c 19                	cmp    $0x19,%al
  4024ef:	77 0a                	ja     4024fb <urlencode+0x76>
  4024f1:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4024f5:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4024f9:	eb 5f                	jmp    40255a <urlencode+0xd5>
  4024fb:	41 80 f8 20          	cmp    $0x20,%r8b
  4024ff:	75 0a                	jne    40250b <urlencode+0x86>
  402501:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402505:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402509:	eb 4f                	jmp    40255a <urlencode+0xd5>
  40250b:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  40250f:	3c 5f                	cmp    $0x5f,%al
  402511:	0f 96 c2             	setbe  %dl
  402514:	41 80 f8 09          	cmp    $0x9,%r8b
  402518:	0f 94 c0             	sete   %al
  40251b:	08 c2                	or     %al,%dl
  40251d:	74 50                	je     40256f <urlencode+0xea>
  40251f:	45 0f b6 c0          	movzbl %r8b,%r8d
  402523:	b9 c8 38 40 00       	mov    $0x4038c8,%ecx
  402528:	ba 08 00 00 00       	mov    $0x8,%edx
  40252d:	be 01 00 00 00       	mov    $0x1,%esi
  402532:	48 89 e7             	mov    %rsp,%rdi
  402535:	b8 00 00 00 00       	mov    $0x0,%eax
  40253a:	e8 41 e9 ff ff       	callq  400e80 <__sprintf_chk@plt>
  40253f:	0f b6 04 24          	movzbl (%rsp),%eax
  402543:	88 45 00             	mov    %al,0x0(%rbp)
  402546:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40254b:	88 45 01             	mov    %al,0x1(%rbp)
  40254e:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402553:	88 45 02             	mov    %al,0x2(%rbp)
  402556:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40255a:	48 83 c3 01          	add    $0x1,%rbx
  40255e:	44 89 e0             	mov    %r12d,%eax
  402561:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402565:	85 c0                	test   %eax,%eax
  402567:	0f 85 4a ff ff ff    	jne    4024b7 <urlencode+0x32>
  40256d:	eb 05                	jmp    402574 <urlencode+0xef>
  40256f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402574:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402579:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402580:	00 00 
  402582:	74 05                	je     402589 <urlencode+0x104>
  402584:	e8 67 e7 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  402589:	48 83 c4 10          	add    $0x10,%rsp
  40258d:	5b                   	pop    %rbx
  40258e:	5d                   	pop    %rbp
  40258f:	41 5c                	pop    %r12
  402591:	c3                   	retq   

0000000000402592 <submitr>:
  402592:	41 57                	push   %r15
  402594:	41 56                	push   %r14
  402596:	41 55                	push   %r13
  402598:	41 54                	push   %r12
  40259a:	55                   	push   %rbp
  40259b:	53                   	push   %rbx
  40259c:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  4025a3:	49 89 fc             	mov    %rdi,%r12
  4025a6:	89 74 24 04          	mov    %esi,0x4(%rsp)
  4025aa:	49 89 d7             	mov    %rdx,%r15
  4025ad:	49 89 ce             	mov    %rcx,%r14
  4025b0:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  4025b5:	4d 89 cd             	mov    %r9,%r13
  4025b8:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  4025bf:	00 
  4025c0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4025c7:	00 00 
  4025c9:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  4025d0:	00 
  4025d1:	31 c0                	xor    %eax,%eax
  4025d3:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  4025da:	00 
  4025db:	ba 00 00 00 00       	mov    $0x0,%edx
  4025e0:	be 01 00 00 00       	mov    $0x1,%esi
  4025e5:	bf 02 00 00 00       	mov    $0x2,%edi
  4025ea:	e8 a1 e8 ff ff       	callq  400e90 <socket@plt>
  4025ef:	85 c0                	test   %eax,%eax
  4025f1:	79 4e                	jns    402641 <submitr+0xaf>
  4025f3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4025fa:	3a 20 43 
  4025fd:	48 89 03             	mov    %rax,(%rbx)
  402600:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402607:	20 75 6e 
  40260a:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40260e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402615:	74 6f 20 
  402618:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40261c:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402623:	65 20 73 
  402626:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40262a:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402631:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  402637:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40263c:	e9 97 06 00 00       	jmpq   402cd8 <submitr+0x746>
  402641:	89 c5                	mov    %eax,%ebp
  402643:	4c 89 e7             	mov    %r12,%rdi
  402646:	e8 25 e7 ff ff       	callq  400d70 <gethostbyname@plt>
  40264b:	48 85 c0             	test   %rax,%rax
  40264e:	75 67                	jne    4026b7 <submitr+0x125>
  402650:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402657:	3a 20 44 
  40265a:	48 89 03             	mov    %rax,(%rbx)
  40265d:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402664:	20 75 6e 
  402667:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40266b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402672:	74 6f 20 
  402675:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402679:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402680:	76 65 20 
  402683:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402687:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  40268e:	72 20 61 
  402691:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402695:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  40269c:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  4026a2:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  4026a6:	89 ef                	mov    %ebp,%edi
  4026a8:	e8 83 e6 ff ff       	callq  400d30 <close@plt>
  4026ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026b2:	e9 21 06 00 00       	jmpq   402cd8 <submitr+0x746>
  4026b7:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  4026be:	00 00 
  4026c0:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  4026c7:	00 00 
  4026c9:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  4026d0:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4026d4:	48 8b 40 18          	mov    0x18(%rax),%rax
  4026d8:	48 8b 30             	mov    (%rax),%rsi
  4026db:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  4026e0:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4026e5:	e8 96 e6 ff ff       	callq  400d80 <__memmove_chk@plt>
  4026ea:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  4026ef:	66 c1 c8 08          	ror    $0x8,%ax
  4026f3:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  4026f8:	ba 10 00 00 00       	mov    $0x10,%edx
  4026fd:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  402702:	89 ef                	mov    %ebp,%edi
  402704:	e8 57 e7 ff ff       	callq  400e60 <connect@plt>
  402709:	85 c0                	test   %eax,%eax
  40270b:	79 59                	jns    402766 <submitr+0x1d4>
  40270d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402714:	3a 20 55 
  402717:	48 89 03             	mov    %rax,(%rbx)
  40271a:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402721:	20 74 6f 
  402724:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402728:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40272f:	65 63 74 
  402732:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402736:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40273d:	68 65 20 
  402740:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402744:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  40274b:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402751:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402755:	89 ef                	mov    %ebp,%edi
  402757:	e8 d4 e5 ff ff       	callq  400d30 <close@plt>
  40275c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402761:	e9 72 05 00 00       	jmpq   402cd8 <submitr+0x746>
  402766:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40276d:	b8 00 00 00 00       	mov    $0x0,%eax
  402772:	48 89 f1             	mov    %rsi,%rcx
  402775:	4c 89 ef             	mov    %r13,%rdi
  402778:	f2 ae                	repnz scas %es:(%rdi),%al
  40277a:	48 f7 d1             	not    %rcx
  40277d:	48 89 ca             	mov    %rcx,%rdx
  402780:	48 89 f1             	mov    %rsi,%rcx
  402783:	4c 89 ff             	mov    %r15,%rdi
  402786:	f2 ae                	repnz scas %es:(%rdi),%al
  402788:	48 f7 d1             	not    %rcx
  40278b:	49 89 c8             	mov    %rcx,%r8
  40278e:	48 89 f1             	mov    %rsi,%rcx
  402791:	4c 89 f7             	mov    %r14,%rdi
  402794:	f2 ae                	repnz scas %es:(%rdi),%al
  402796:	48 f7 d1             	not    %rcx
  402799:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40279e:	48 89 f1             	mov    %rsi,%rcx
  4027a1:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4027a6:	f2 ae                	repnz scas %es:(%rdi),%al
  4027a8:	48 89 c8             	mov    %rcx,%rax
  4027ab:	48 f7 d0             	not    %rax
  4027ae:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4027b3:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4027b8:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4027bf:	00 
  4027c0:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4027c6:	76 72                	jbe    40283a <submitr+0x2a8>
  4027c8:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4027cf:	3a 20 52 
  4027d2:	48 89 03             	mov    %rax,(%rbx)
  4027d5:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4027dc:	20 73 74 
  4027df:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4027e3:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4027ea:	74 6f 6f 
  4027ed:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4027f1:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4027f8:	65 2e 20 
  4027fb:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027ff:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402806:	61 73 65 
  402809:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40280d:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402814:	49 54 52 
  402817:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40281b:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402822:	55 46 00 
  402825:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402829:	89 ef                	mov    %ebp,%edi
  40282b:	e8 00 e5 ff ff       	callq  400d30 <close@plt>
  402830:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402835:	e9 9e 04 00 00       	jmpq   402cd8 <submitr+0x746>
  40283a:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  402841:	00 
  402842:	b9 00 04 00 00       	mov    $0x400,%ecx
  402847:	b8 00 00 00 00       	mov    $0x0,%eax
  40284c:	48 89 f7             	mov    %rsi,%rdi
  40284f:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402852:	4c 89 ef             	mov    %r13,%rdi
  402855:	e8 2b fc ff ff       	callq  402485 <urlencode>
  40285a:	85 c0                	test   %eax,%eax
  40285c:	0f 89 8a 00 00 00    	jns    4028ec <submitr+0x35a>
  402862:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402869:	3a 20 52 
  40286c:	48 89 03             	mov    %rax,(%rbx)
  40286f:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402876:	20 73 74 
  402879:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40287d:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402884:	63 6f 6e 
  402887:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40288b:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402892:	20 61 6e 
  402895:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402899:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4028a0:	67 61 6c 
  4028a3:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4028a7:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4028ae:	6e 70 72 
  4028b1:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4028b5:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4028bc:	6c 65 20 
  4028bf:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4028c3:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4028ca:	63 74 65 
  4028cd:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4028d1:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4028d7:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4028db:	89 ef                	mov    %ebp,%edi
  4028dd:	e8 4e e4 ff ff       	callq  400d30 <close@plt>
  4028e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028e7:	e9 ec 03 00 00       	jmpq   402cd8 <submitr+0x746>
  4028ec:	4c 8d ac 24 40 20 00 	lea    0x2040(%rsp),%r13
  4028f3:	00 
  4028f4:	41 54                	push   %r12
  4028f6:	48 8d 84 24 48 40 00 	lea    0x4048(%rsp),%rax
  4028fd:	00 
  4028fe:	50                   	push   %rax
  4028ff:	4d 89 f9             	mov    %r15,%r9
  402902:	4d 89 f0             	mov    %r14,%r8
  402905:	b9 58 38 40 00       	mov    $0x403858,%ecx
  40290a:	ba 00 20 00 00       	mov    $0x2000,%edx
  40290f:	be 01 00 00 00       	mov    $0x1,%esi
  402914:	4c 89 ef             	mov    %r13,%rdi
  402917:	b8 00 00 00 00       	mov    $0x0,%eax
  40291c:	e8 5f e5 ff ff       	callq  400e80 <__sprintf_chk@plt>
  402921:	b8 00 00 00 00       	mov    $0x0,%eax
  402926:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40292d:	4c 89 ef             	mov    %r13,%rdi
  402930:	f2 ae                	repnz scas %es:(%rdi),%al
  402932:	48 f7 d1             	not    %rcx
  402935:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402939:	4c 89 ee             	mov    %r13,%rsi
  40293c:	89 ef                	mov    %ebp,%edi
  40293e:	e8 b1 f9 ff ff       	callq  4022f4 <rio_writen>
  402943:	48 83 c4 10          	add    $0x10,%rsp
  402947:	48 85 c0             	test   %rax,%rax
  40294a:	79 6e                	jns    4029ba <submitr+0x428>
  40294c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402953:	3a 20 43 
  402956:	48 89 03             	mov    %rax,(%rbx)
  402959:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402960:	20 75 6e 
  402963:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402967:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40296e:	74 6f 20 
  402971:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402975:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  40297c:	20 74 6f 
  40297f:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402983:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  40298a:	72 65 73 
  40298d:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402991:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  402998:	65 72 76 
  40299b:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40299f:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  4029a5:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  4029a9:	89 ef                	mov    %ebp,%edi
  4029ab:	e8 80 e3 ff ff       	callq  400d30 <close@plt>
  4029b0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029b5:	e9 1e 03 00 00       	jmpq   402cd8 <submitr+0x746>
  4029ba:	89 ee                	mov    %ebp,%esi
  4029bc:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4029c1:	e8 ee f8 ff ff       	callq  4022b4 <rio_readinitb>
  4029c6:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029cb:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4029d2:	00 
  4029d3:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4029d8:	e8 fe f9 ff ff       	callq  4023db <rio_readlineb>
  4029dd:	48 85 c0             	test   %rax,%rax
  4029e0:	7f 7d                	jg     402a5f <submitr+0x4cd>
  4029e2:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029e9:	3a 20 43 
  4029ec:	48 89 03             	mov    %rax,(%rbx)
  4029ef:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4029f6:	20 75 6e 
  4029f9:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4029fd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a04:	74 6f 20 
  402a07:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402a0b:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402a12:	66 69 72 
  402a15:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402a19:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402a20:	61 64 65 
  402a23:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402a27:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  402a2e:	6d 20 72 
  402a31:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402a35:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402a3c:	20 73 65 
  402a3f:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402a43:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  402a4a:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  402a4e:	89 ef                	mov    %ebp,%edi
  402a50:	e8 db e2 ff ff       	callq  400d30 <close@plt>
  402a55:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a5a:	e9 79 02 00 00       	jmpq   402cd8 <submitr+0x746>
  402a5f:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  402a66:	00 
  402a67:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  402a6c:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  402a73:	00 
  402a74:	be cf 38 40 00       	mov    $0x4038cf,%esi
  402a79:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  402a80:	00 
  402a81:	b8 00 00 00 00       	mov    $0x0,%eax
  402a86:	e8 55 e3 ff ff       	callq  400de0 <__isoc99_sscanf@plt>
  402a8b:	e9 95 00 00 00       	jmpq   402b25 <submitr+0x593>
  402a90:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a95:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402a9c:	00 
  402a9d:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402aa2:	e8 34 f9 ff ff       	callq  4023db <rio_readlineb>
  402aa7:	48 85 c0             	test   %rax,%rax
  402aaa:	7f 79                	jg     402b25 <submitr+0x593>
  402aac:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ab3:	3a 20 43 
  402ab6:	48 89 03             	mov    %rax,(%rbx)
  402ab9:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402ac0:	20 75 6e 
  402ac3:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402ac7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ace:	74 6f 20 
  402ad1:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402ad5:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402adc:	68 65 61 
  402adf:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402ae3:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402aea:	66 72 6f 
  402aed:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402af1:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  402af8:	20 72 65 
  402afb:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402aff:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402b06:	73 65 72 
  402b09:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402b0d:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402b14:	89 ef                	mov    %ebp,%edi
  402b16:	e8 15 e2 ff ff       	callq  400d30 <close@plt>
  402b1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b20:	e9 b3 01 00 00       	jmpq   402cd8 <submitr+0x746>
  402b25:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  402b2c:	00 
  402b2d:	b8 0d 00 00 00       	mov    $0xd,%eax
  402b32:	29 d0                	sub    %edx,%eax
  402b34:	75 1b                	jne    402b51 <submitr+0x5bf>
  402b36:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  402b3d:	00 
  402b3e:	b8 0a 00 00 00       	mov    $0xa,%eax
  402b43:	29 d0                	sub    %edx,%eax
  402b45:	75 0a                	jne    402b51 <submitr+0x5bf>
  402b47:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  402b4e:	00 
  402b4f:	f7 d8                	neg    %eax
  402b51:	85 c0                	test   %eax,%eax
  402b53:	0f 85 37 ff ff ff    	jne    402a90 <submitr+0x4fe>
  402b59:	ba 00 20 00 00       	mov    $0x2000,%edx
  402b5e:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402b65:	00 
  402b66:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402b6b:	e8 6b f8 ff ff       	callq  4023db <rio_readlineb>
  402b70:	48 85 c0             	test   %rax,%rax
  402b73:	0f 8f 83 00 00 00    	jg     402bfc <submitr+0x66a>
  402b79:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b80:	3a 20 43 
  402b83:	48 89 03             	mov    %rax,(%rbx)
  402b86:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402b8d:	20 75 6e 
  402b90:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402b94:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b9b:	74 6f 20 
  402b9e:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402ba2:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402ba9:	73 74 61 
  402bac:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402bb0:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402bb7:	65 73 73 
  402bba:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402bbe:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402bc5:	72 6f 6d 
  402bc8:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402bcc:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402bd3:	6c 74 20 
  402bd6:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402bda:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402be1:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402be7:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402beb:	89 ef                	mov    %ebp,%edi
  402bed:	e8 3e e1 ff ff       	callq  400d30 <close@plt>
  402bf2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bf7:	e9 dc 00 00 00       	jmpq   402cd8 <submitr+0x746>
  402bfc:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402c01:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402c08:	74 37                	je     402c41 <submitr+0x6af>
  402c0a:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402c11:	00 
  402c12:	b9 98 38 40 00       	mov    $0x403898,%ecx
  402c17:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402c1e:	be 01 00 00 00       	mov    $0x1,%esi
  402c23:	48 89 df             	mov    %rbx,%rdi
  402c26:	b8 00 00 00 00       	mov    $0x0,%eax
  402c2b:	e8 50 e2 ff ff       	callq  400e80 <__sprintf_chk@plt>
  402c30:	89 ef                	mov    %ebp,%edi
  402c32:	e8 f9 e0 ff ff       	callq  400d30 <close@plt>
  402c37:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c3c:	e9 97 00 00 00       	jmpq   402cd8 <submitr+0x746>
  402c41:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402c48:	00 
  402c49:	48 89 df             	mov    %rbx,%rdi
  402c4c:	e8 6f e0 ff ff       	callq  400cc0 <strcpy@plt>
  402c51:	89 ef                	mov    %ebp,%edi
  402c53:	e8 d8 e0 ff ff       	callq  400d30 <close@plt>
  402c58:	0f b6 03             	movzbl (%rbx),%eax
  402c5b:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402c60:	29 c2                	sub    %eax,%edx
  402c62:	75 22                	jne    402c86 <submitr+0x6f4>
  402c64:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402c68:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402c6d:	29 c8                	sub    %ecx,%eax
  402c6f:	75 17                	jne    402c88 <submitr+0x6f6>
  402c71:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402c75:	b8 0a 00 00 00       	mov    $0xa,%eax
  402c7a:	29 c8                	sub    %ecx,%eax
  402c7c:	75 0a                	jne    402c88 <submitr+0x6f6>
  402c7e:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402c82:	f7 d8                	neg    %eax
  402c84:	eb 02                	jmp    402c88 <submitr+0x6f6>
  402c86:	89 d0                	mov    %edx,%eax
  402c88:	85 c0                	test   %eax,%eax
  402c8a:	74 40                	je     402ccc <submitr+0x73a>
  402c8c:	bf e0 38 40 00       	mov    $0x4038e0,%edi
  402c91:	b9 05 00 00 00       	mov    $0x5,%ecx
  402c96:	48 89 de             	mov    %rbx,%rsi
  402c99:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402c9b:	0f 97 c0             	seta   %al
  402c9e:	0f 92 c1             	setb   %cl
  402ca1:	29 c8                	sub    %ecx,%eax
  402ca3:	0f be c0             	movsbl %al,%eax
  402ca6:	85 c0                	test   %eax,%eax
  402ca8:	74 2e                	je     402cd8 <submitr+0x746>
  402caa:	85 d2                	test   %edx,%edx
  402cac:	75 13                	jne    402cc1 <submitr+0x72f>
  402cae:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402cb2:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402cb7:	29 c2                	sub    %eax,%edx
  402cb9:	75 06                	jne    402cc1 <submitr+0x72f>
  402cbb:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402cbf:	f7 da                	neg    %edx
  402cc1:	85 d2                	test   %edx,%edx
  402cc3:	75 0e                	jne    402cd3 <submitr+0x741>
  402cc5:	b8 00 00 00 00       	mov    $0x0,%eax
  402cca:	eb 0c                	jmp    402cd8 <submitr+0x746>
  402ccc:	b8 00 00 00 00       	mov    $0x0,%eax
  402cd1:	eb 05                	jmp    402cd8 <submitr+0x746>
  402cd3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cd8:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402cdf:	00 
  402ce0:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402ce7:	00 00 
  402ce9:	74 05                	je     402cf0 <submitr+0x75e>
  402ceb:	e8 00 e0 ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  402cf0:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402cf7:	5b                   	pop    %rbx
  402cf8:	5d                   	pop    %rbp
  402cf9:	41 5c                	pop    %r12
  402cfb:	41 5d                	pop    %r13
  402cfd:	41 5e                	pop    %r14
  402cff:	41 5f                	pop    %r15
  402d01:	c3                   	retq   

0000000000402d02 <init_timeout>:
  402d02:	85 ff                	test   %edi,%edi
  402d04:	74 23                	je     402d29 <init_timeout+0x27>
  402d06:	53                   	push   %rbx
  402d07:	89 fb                	mov    %edi,%ebx
  402d09:	85 ff                	test   %edi,%edi
  402d0b:	79 05                	jns    402d12 <init_timeout+0x10>
  402d0d:	bb 00 00 00 00       	mov    $0x0,%ebx
  402d12:	be c6 22 40 00       	mov    $0x4022c6,%esi
  402d17:	bf 0e 00 00 00       	mov    $0xe,%edi
  402d1c:	e8 3f e0 ff ff       	callq  400d60 <signal@plt>
  402d21:	89 df                	mov    %ebx,%edi
  402d23:	e8 f8 df ff ff       	callq  400d20 <alarm@plt>
  402d28:	5b                   	pop    %rbx
  402d29:	f3 c3                	repz retq 

0000000000402d2b <init_driver>:
  402d2b:	55                   	push   %rbp
  402d2c:	53                   	push   %rbx
  402d2d:	48 83 ec 28          	sub    $0x28,%rsp
  402d31:	48 89 fd             	mov    %rdi,%rbp
  402d34:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d3b:	00 00 
  402d3d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402d42:	31 c0                	xor    %eax,%eax
  402d44:	be 01 00 00 00       	mov    $0x1,%esi
  402d49:	bf 0d 00 00 00       	mov    $0xd,%edi
  402d4e:	e8 0d e0 ff ff       	callq  400d60 <signal@plt>
  402d53:	be 01 00 00 00       	mov    $0x1,%esi
  402d58:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402d5d:	e8 fe df ff ff       	callq  400d60 <signal@plt>
  402d62:	be 01 00 00 00       	mov    $0x1,%esi
  402d67:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402d6c:	e8 ef df ff ff       	callq  400d60 <signal@plt>
  402d71:	ba 00 00 00 00       	mov    $0x0,%edx
  402d76:	be 01 00 00 00       	mov    $0x1,%esi
  402d7b:	bf 02 00 00 00       	mov    $0x2,%edi
  402d80:	e8 0b e1 ff ff       	callq  400e90 <socket@plt>
  402d85:	85 c0                	test   %eax,%eax
  402d87:	79 4f                	jns    402dd8 <init_driver+0xad>
  402d89:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402d90:	3a 20 43 
  402d93:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d97:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402d9e:	20 75 6e 
  402da1:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402da5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402dac:	74 6f 20 
  402daf:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402db3:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402dba:	65 20 73 
  402dbd:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402dc1:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402dc8:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402dce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dd3:	e9 2a 01 00 00       	jmpq   402f02 <init_driver+0x1d7>
  402dd8:	89 c3                	mov    %eax,%ebx
  402dda:	bf fa 33 40 00       	mov    $0x4033fa,%edi
  402ddf:	e8 8c df ff ff       	callq  400d70 <gethostbyname@plt>
  402de4:	48 85 c0             	test   %rax,%rax
  402de7:	75 68                	jne    402e51 <init_driver+0x126>
  402de9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402df0:	3a 20 44 
  402df3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402df7:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402dfe:	20 75 6e 
  402e01:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402e05:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e0c:	74 6f 20 
  402e0f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402e13:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402e1a:	76 65 20 
  402e1d:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402e21:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402e28:	72 20 61 
  402e2b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402e2f:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402e36:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402e3c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402e40:	89 df                	mov    %ebx,%edi
  402e42:	e8 e9 de ff ff       	callq  400d30 <close@plt>
  402e47:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e4c:	e9 b1 00 00 00       	jmpq   402f02 <init_driver+0x1d7>
  402e51:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402e58:	00 
  402e59:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402e60:	00 00 
  402e62:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402e68:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402e6c:	48 8b 40 18          	mov    0x18(%rax),%rax
  402e70:	48 8b 30             	mov    (%rax),%rsi
  402e73:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402e78:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402e7d:	e8 fe de ff ff       	callq  400d80 <__memmove_chk@plt>
  402e82:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402e89:	ba 10 00 00 00       	mov    $0x10,%edx
  402e8e:	48 89 e6             	mov    %rsp,%rsi
  402e91:	89 df                	mov    %ebx,%edi
  402e93:	e8 c8 df ff ff       	callq  400e60 <connect@plt>
  402e98:	85 c0                	test   %eax,%eax
  402e9a:	79 50                	jns    402eec <init_driver+0x1c1>
  402e9c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402ea3:	3a 20 55 
  402ea6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402eaa:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402eb1:	20 74 6f 
  402eb4:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402eb8:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402ebf:	65 63 74 
  402ec2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ec6:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402ecd:	65 72 76 
  402ed0:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402ed4:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402eda:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402ede:	89 df                	mov    %ebx,%edi
  402ee0:	e8 4b de ff ff       	callq  400d30 <close@plt>
  402ee5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402eea:	eb 16                	jmp    402f02 <init_driver+0x1d7>
  402eec:	89 df                	mov    %ebx,%edi
  402eee:	e8 3d de ff ff       	callq  400d30 <close@plt>
  402ef3:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402ef9:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402efd:	b8 00 00 00 00       	mov    $0x0,%eax
  402f02:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402f07:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402f0e:	00 00 
  402f10:	74 05                	je     402f17 <init_driver+0x1ec>
  402f12:	e8 d9 dd ff ff       	callq  400cf0 <__stack_chk_fail@plt>
  402f17:	48 83 c4 28          	add    $0x28,%rsp
  402f1b:	5b                   	pop    %rbx
  402f1c:	5d                   	pop    %rbp
  402f1d:	c3                   	retq   

0000000000402f1e <driver_post>:
  402f1e:	53                   	push   %rbx
  402f1f:	4c 89 cb             	mov    %r9,%rbx
  402f22:	45 85 c0             	test   %r8d,%r8d
  402f25:	74 27                	je     402f4e <driver_post+0x30>
  402f27:	48 89 ca             	mov    %rcx,%rdx
  402f2a:	be e5 38 40 00       	mov    $0x4038e5,%esi
  402f2f:	bf 01 00 00 00       	mov    $0x1,%edi
  402f34:	b8 00 00 00 00       	mov    $0x0,%eax
  402f39:	e8 c2 de ff ff       	callq  400e00 <__printf_chk@plt>
  402f3e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402f43:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402f47:	b8 00 00 00 00       	mov    $0x0,%eax
  402f4c:	eb 3f                	jmp    402f8d <driver_post+0x6f>
  402f4e:	48 85 ff             	test   %rdi,%rdi
  402f51:	74 2c                	je     402f7f <driver_post+0x61>
  402f53:	80 3f 00             	cmpb   $0x0,(%rdi)
  402f56:	74 27                	je     402f7f <driver_post+0x61>
  402f58:	48 83 ec 08          	sub    $0x8,%rsp
  402f5c:	41 51                	push   %r9
  402f5e:	49 89 c9             	mov    %rcx,%r9
  402f61:	49 89 d0             	mov    %rdx,%r8
  402f64:	48 89 f9             	mov    %rdi,%rcx
  402f67:	48 89 f2             	mov    %rsi,%rdx
  402f6a:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402f6f:	bf fa 33 40 00       	mov    $0x4033fa,%edi
  402f74:	e8 19 f6 ff ff       	callq  402592 <submitr>
  402f79:	48 83 c4 10          	add    $0x10,%rsp
  402f7d:	eb 0e                	jmp    402f8d <driver_post+0x6f>
  402f7f:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402f84:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402f88:	b8 00 00 00 00       	mov    $0x0,%eax
  402f8d:	5b                   	pop    %rbx
  402f8e:	c3                   	retq   

0000000000402f8f <check>:
  402f8f:	89 f8                	mov    %edi,%eax
  402f91:	c1 e8 1c             	shr    $0x1c,%eax
  402f94:	85 c0                	test   %eax,%eax
  402f96:	74 1d                	je     402fb5 <check+0x26>
  402f98:	b9 00 00 00 00       	mov    $0x0,%ecx
  402f9d:	eb 0b                	jmp    402faa <check+0x1b>
  402f9f:	89 f8                	mov    %edi,%eax
  402fa1:	d3 e8                	shr    %cl,%eax
  402fa3:	3c 0a                	cmp    $0xa,%al
  402fa5:	74 14                	je     402fbb <check+0x2c>
  402fa7:	83 c1 08             	add    $0x8,%ecx
  402faa:	83 f9 1f             	cmp    $0x1f,%ecx
  402fad:	7e f0                	jle    402f9f <check+0x10>
  402faf:	b8 01 00 00 00       	mov    $0x1,%eax
  402fb4:	c3                   	retq   
  402fb5:	b8 00 00 00 00       	mov    $0x0,%eax
  402fba:	c3                   	retq   
  402fbb:	b8 00 00 00 00       	mov    $0x0,%eax
  402fc0:	c3                   	retq   

0000000000402fc1 <gencookie>:
  402fc1:	53                   	push   %rbx
  402fc2:	83 c7 01             	add    $0x1,%edi
  402fc5:	e8 d6 dc ff ff       	callq  400ca0 <srandom@plt>
  402fca:	e8 f1 dd ff ff       	callq  400dc0 <random@plt>
  402fcf:	89 c3                	mov    %eax,%ebx
  402fd1:	89 c7                	mov    %eax,%edi
  402fd3:	e8 b7 ff ff ff       	callq  402f8f <check>
  402fd8:	85 c0                	test   %eax,%eax
  402fda:	74 ee                	je     402fca <gencookie+0x9>
  402fdc:	89 d8                	mov    %ebx,%eax
  402fde:	5b                   	pop    %rbx
  402fdf:	c3                   	retq   

0000000000402fe0 <__libc_csu_init>:
  402fe0:	41 57                	push   %r15
  402fe2:	41 56                	push   %r14
  402fe4:	41 89 ff             	mov    %edi,%r15d
  402fe7:	41 55                	push   %r13
  402fe9:	41 54                	push   %r12
  402feb:	4c 8d 25 1e 1e 20 00 	lea    0x201e1e(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  402ff2:	55                   	push   %rbp
  402ff3:	48 8d 2d 1e 1e 20 00 	lea    0x201e1e(%rip),%rbp        # 604e18 <__init_array_end>
  402ffa:	53                   	push   %rbx
  402ffb:	49 89 f6             	mov    %rsi,%r14
  402ffe:	49 89 d5             	mov    %rdx,%r13
  403001:	4c 29 e5             	sub    %r12,%rbp
  403004:	48 83 ec 08          	sub    $0x8,%rsp
  403008:	48 c1 fd 03          	sar    $0x3,%rbp
  40300c:	e8 37 dc ff ff       	callq  400c48 <_init>
  403011:	48 85 ed             	test   %rbp,%rbp
  403014:	74 20                	je     403036 <__libc_csu_init+0x56>
  403016:	31 db                	xor    %ebx,%ebx
  403018:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40301f:	00 
  403020:	4c 89 ea             	mov    %r13,%rdx
  403023:	4c 89 f6             	mov    %r14,%rsi
  403026:	44 89 ff             	mov    %r15d,%edi
  403029:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40302d:	48 83 c3 01          	add    $0x1,%rbx
  403031:	48 39 eb             	cmp    %rbp,%rbx
  403034:	75 ea                	jne    403020 <__libc_csu_init+0x40>
  403036:	48 83 c4 08          	add    $0x8,%rsp
  40303a:	5b                   	pop    %rbx
  40303b:	5d                   	pop    %rbp
  40303c:	41 5c                	pop    %r12
  40303e:	41 5d                	pop    %r13
  403040:	41 5e                	pop    %r14
  403042:	41 5f                	pop    %r15
  403044:	c3                   	retq   
  403045:	90                   	nop
  403046:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40304d:	00 00 00 

0000000000403050 <__libc_csu_fini>:
  403050:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000403054 <_fini>:
  403054:	48 83 ec 08          	sub    $0x8,%rsp
  403058:	48 83 c4 08          	add    $0x8,%rsp
  40305c:	c3                   	retq   
