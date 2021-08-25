
section.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <A_init>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	ba 08 00 00 00       	mov    $0x8,%edx
   d:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 14 <A_init+0x14>
  14:	bf 01 00 00 00       	mov    $0x1,%edi
  19:	e8 00 00 00 00       	callq  1e <A_init+0x1e>
  1e:	90                   	nop
  1f:	5d                   	pop    %rbp
  20:	c3                   	retq   

0000000000000021 <B_init>:
  21:	f3 0f 1e fa          	endbr64 
  25:	55                   	push   %rbp
  26:	48 89 e5             	mov    %rsp,%rbp
  29:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 30 <B_init+0xf>
  30:	e8 00 00 00 00       	callq  35 <B_init+0x14>
  35:	90                   	nop
  36:	5d                   	pop    %rbp
  37:	c3                   	retq   

0000000000000038 <C_init>:
  38:	f3 0f 1e fa          	endbr64 
  3c:	55                   	push   %rbp
  3d:	48 89 e5             	mov    %rsp,%rbp
  40:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 47 <C_init+0xf>
  47:	e8 00 00 00 00       	callq  4c <C_init+0x14>
  4c:	90                   	nop
  4d:	5d                   	pop    %rbp
  4e:	c3                   	retq   

000000000000004f <do_initcalls>:
  4f:	f3 0f 1e fa          	endbr64 
  53:	55                   	push   %rbp
  54:	48 89 e5             	mov    %rsp,%rbp
  57:	48 83 ec 10          	sub    $0x10,%rsp
  5b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 62 <do_initcalls+0x13>
  62:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  66:	eb 26                	jmp    8e <do_initcalls+0x3f>
  68:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  6c:	48 89 c6             	mov    %rax,%rsi
  6f:	48 8d 3d 00 00 00 00 	lea    0x0(%rip),%rdi        # 76 <do_initcalls+0x27>
  76:	b8 00 00 00 00       	mov    $0x0,%eax
  7b:	e8 00 00 00 00       	callq  80 <do_initcalls+0x31>
  80:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  84:	48 8b 00             	mov    (%rax),%rax
  87:	ff d0                	callq  *%rax
  89:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
  8e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 95 <do_initcalls+0x46>
  95:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  99:	72 cd                	jb     68 <do_initcalls+0x19>
  9b:	90                   	nop
  9c:	90                   	nop
  9d:	c9                   	leaveq 
  9e:	c3                   	retq   

000000000000009f <main>:
  9f:	f3 0f 1e fa          	endbr64 
  a3:	55                   	push   %rbp
  a4:	48 89 e5             	mov    %rsp,%rbp
  a7:	e8 00 00 00 00       	callq  ac <main+0xd>
  ac:	b8 00 00 00 00       	mov    $0x0,%eax
  b1:	5d                   	pop    %rbp
  b2:	c3                   	retq   
