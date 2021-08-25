
section:     file format elf64-x86-64


Disassembly of section .init:

0000000000400648 <_init>:
  400648:	f3 0f 1e fa          	endbr64 
  40064c:	48 83 ec 08          	sub    $0x8,%rsp
  400650:	48 8b 05 91 19 00 00 	mov    0x1991(%rip),%rax        # 401fe8 <__gmon_start__>
  400657:	48 85 c0             	test   %rax,%rax
  40065a:	74 02                	je     40065e <_init+0x16>
  40065c:	ff d0                	callq  *%rax
  40065e:	48 83 c4 08          	add    $0x8,%rsp
  400662:	c3                   	retq   

Disassembly of section .plt:

0000000000400670 <.plt>:
  400670:	ff 35 92 19 00 00    	pushq  0x1992(%rip)        # 402008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400676:	f2 ff 25 93 19 00 00 	bnd jmpq *0x1993(%rip)        # 402010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40067d:	0f 1f 00             	nopl   (%rax)
  400680:	f3 0f 1e fa          	endbr64 
  400684:	68 00 00 00 00       	pushq  $0x0
  400689:	f2 e9 e1 ff ff ff    	bnd jmpq 400670 <.plt>
  40068f:	90                   	nop
  400690:	f3 0f 1e fa          	endbr64 
  400694:	68 01 00 00 00       	pushq  $0x1
  400699:	f2 e9 d1 ff ff ff    	bnd jmpq 400670 <.plt>
  40069f:	90                   	nop
  4006a0:	f3 0f 1e fa          	endbr64 
  4006a4:	68 02 00 00 00       	pushq  $0x2
  4006a9:	f2 e9 c1 ff ff ff    	bnd jmpq 400670 <.plt>
  4006af:	90                   	nop

Disassembly of section .text:

00000000004006b0 <_start>:
  4006b0:	f3 0f 1e fa          	endbr64 
  4006b4:	31 ed                	xor    %ebp,%ebp
  4006b6:	49 89 d1             	mov    %rdx,%r9
  4006b9:	5e                   	pop    %rsi
  4006ba:	48 89 e2             	mov    %rsp,%rdx
  4006bd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4006c1:	50                   	push   %rax
  4006c2:	54                   	push   %rsp
  4006c3:	4c 8d 05 f6 01 00 00 	lea    0x1f6(%rip),%r8        # 4008c0 <__libc_csu_fini>
  4006ca:	48 8d 0d 7f 01 00 00 	lea    0x17f(%rip),%rcx        # 400850 <__libc_csu_init>
  4006d1:	48 8d 3d 60 01 00 00 	lea    0x160(%rip),%rdi        # 400838 <main>
  4006d8:	ff 15 02 19 00 00    	callq  *0x1902(%rip)        # 401fe0 <__libc_start_main@GLIBC_2.2.5>
  4006de:	f4                   	hlt    
  4006df:	90                   	nop

00000000004006e0 <deregister_tm_clones>:
  4006e0:	48 8d 3d 59 19 00 00 	lea    0x1959(%rip),%rdi        # 402040 <_fn_A_init>
  4006e7:	48 8d 05 52 19 00 00 	lea    0x1952(%rip),%rax        # 402040 <_fn_A_init>
  4006ee:	48 39 f8             	cmp    %rdi,%rax
  4006f1:	74 15                	je     400708 <deregister_tm_clones+0x28>
  4006f3:	48 8b 05 de 18 00 00 	mov    0x18de(%rip),%rax        # 401fd8 <_ITM_deregisterTMCloneTable>
  4006fa:	48 85 c0             	test   %rax,%rax
  4006fd:	74 09                	je     400708 <deregister_tm_clones+0x28>
  4006ff:	ff e0                	jmpq   *%rax
  400701:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400708:	c3                   	retq   
  400709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400710 <register_tm_clones>:
  400710:	48 8d 3d 29 19 00 00 	lea    0x1929(%rip),%rdi        # 402040 <_fn_A_init>
  400717:	48 8d 35 22 19 00 00 	lea    0x1922(%rip),%rsi        # 402040 <_fn_A_init>
  40071e:	48 29 fe             	sub    %rdi,%rsi
  400721:	48 89 f0             	mov    %rsi,%rax
  400724:	48 c1 ee 3f          	shr    $0x3f,%rsi
  400728:	48 c1 f8 03          	sar    $0x3,%rax
  40072c:	48 01 c6             	add    %rax,%rsi
  40072f:	48 d1 fe             	sar    %rsi
  400732:	74 14                	je     400748 <register_tm_clones+0x38>
  400734:	48 8b 05 b5 18 00 00 	mov    0x18b5(%rip),%rax        # 401ff0 <_ITM_registerTMCloneTable>
  40073b:	48 85 c0             	test   %rax,%rax
  40073e:	74 08                	je     400748 <register_tm_clones+0x38>
  400740:	ff e0                	jmpq   *%rax
  400742:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400748:	c3                   	retq   
  400749:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400750 <__do_global_dtors_aux>:
  400750:	f3 0f 1e fa          	endbr64 
  400754:	80 3d fd 18 00 00 00 	cmpb   $0x0,0x18fd(%rip)        # 402058 <completed.8060>
  40075b:	75 2b                	jne    400788 <__do_global_dtors_aux+0x38>
  40075d:	55                   	push   %rbp
  40075e:	48 83 3d 92 18 00 00 	cmpq   $0x0,0x1892(%rip)        # 401ff8 <__cxa_finalize@GLIBC_2.2.5>
  400765:	00 
  400766:	48 89 e5             	mov    %rsp,%rbp
  400769:	74 0c                	je     400777 <__do_global_dtors_aux+0x27>
  40076b:	48 8b 3d c6 18 00 00 	mov    0x18c6(%rip),%rdi        # 402038 <__dso_handle>
  400772:	e8 59 01 00 00       	callq  4008d0 <__cxa_finalize@plt>
  400777:	e8 64 ff ff ff       	callq  4006e0 <deregister_tm_clones>
  40077c:	c6 05 d5 18 00 00 01 	movb   $0x1,0x18d5(%rip)        # 402058 <completed.8060>
  400783:	5d                   	pop    %rbp
  400784:	c3                   	retq   
  400785:	0f 1f 00             	nopl   (%rax)
  400788:	c3                   	retq   
  400789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400790 <frame_dummy>:
  400790:	f3 0f 1e fa          	endbr64 
  400794:	e9 77 ff ff ff       	jmpq   400710 <register_tm_clones>

0000000000400799 <A_init>:
  400799:	f3 0f 1e fa          	endbr64 
  40079d:	55                   	push   %rbp
  40079e:	48 89 e5             	mov    %rsp,%rbp
  4007a1:	ba 08 00 00 00       	mov    $0x8,%edx
  4007a6:	48 8d 35 77 01 00 00 	lea    0x177(%rip),%rsi        # 400924 <_IO_stdin_used+0x4>
  4007ad:	bf 01 00 00 00       	mov    $0x1,%edi
  4007b2:	e8 39 01 00 00       	callq  4008f0 <write@plt>
  4007b7:	90                   	nop
  4007b8:	5d                   	pop    %rbp
  4007b9:	c3                   	retq   

00000000004007ba <B_init>:
  4007ba:	f3 0f 1e fa          	endbr64 
  4007be:	55                   	push   %rbp
  4007bf:	48 89 e5             	mov    %rsp,%rbp
  4007c2:	48 8d 3d 63 01 00 00 	lea    0x163(%rip),%rdi        # 40092c <_IO_stdin_used+0xc>
  4007c9:	e8 12 01 00 00       	callq  4008e0 <puts@plt>
  4007ce:	90                   	nop
  4007cf:	5d                   	pop    %rbp
  4007d0:	c3                   	retq   

00000000004007d1 <C_init>:
  4007d1:	f3 0f 1e fa          	endbr64 
  4007d5:	55                   	push   %rbp
  4007d6:	48 89 e5             	mov    %rsp,%rbp
  4007d9:	48 8d 3d 53 01 00 00 	lea    0x153(%rip),%rdi        # 400933 <_IO_stdin_used+0x13>
  4007e0:	e8 fb 00 00 00       	callq  4008e0 <puts@plt>
  4007e5:	90                   	nop
  4007e6:	5d                   	pop    %rbp
  4007e7:	c3                   	retq   

00000000004007e8 <do_initcalls>:
  4007e8:	f3 0f 1e fa          	endbr64 
  4007ec:	55                   	push   %rbp
  4007ed:	48 89 e5             	mov    %rsp,%rbp
  4007f0:	48 83 ec 10          	sub    $0x10,%rsp
  4007f4:	48 8d 05 45 18 00 00 	lea    0x1845(%rip),%rax        # 402040 <_fn_A_init>
  4007fb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4007ff:	eb 26                	jmp    400827 <do_initcalls+0x3f>
  400801:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400805:	48 89 c6             	mov    %rax,%rsi
  400808:	48 8d 3d 2b 01 00 00 	lea    0x12b(%rip),%rdi        # 40093a <_IO_stdin_used+0x1a>
  40080f:	b8 00 00 00 00       	mov    $0x0,%eax
  400814:	e8 e7 00 00 00       	callq  400900 <printf@plt>
  400819:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40081d:	48 8b 00             	mov    (%rax),%rax
  400820:	ff d0                	callq  *%rax
  400822:	48 83 45 f8 08       	addq   $0x8,-0x8(%rbp)
  400827:	48 8d 05 2a 18 00 00 	lea    0x182a(%rip),%rax        # 402058 <completed.8060>
  40082e:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  400832:	72 cd                	jb     400801 <do_initcalls+0x19>
  400834:	90                   	nop
  400835:	90                   	nop
  400836:	c9                   	leaveq 
  400837:	c3                   	retq   

0000000000400838 <main>:
  400838:	f3 0f 1e fa          	endbr64 
  40083c:	55                   	push   %rbp
  40083d:	48 89 e5             	mov    %rsp,%rbp
  400840:	e8 a3 ff ff ff       	callq  4007e8 <do_initcalls>
  400845:	b8 00 00 00 00       	mov    $0x0,%eax
  40084a:	5d                   	pop    %rbp
  40084b:	c3                   	retq   
  40084c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400850 <__libc_csu_init>:
  400850:	f3 0f 1e fa          	endbr64 
  400854:	41 57                	push   %r15
  400856:	4c 8d 3d 7b 15 00 00 	lea    0x157b(%rip),%r15        # 401dd8 <__frame_dummy_init_array_entry>
  40085d:	41 56                	push   %r14
  40085f:	49 89 d6             	mov    %rdx,%r14
  400862:	41 55                	push   %r13
  400864:	49 89 f5             	mov    %rsi,%r13
  400867:	41 54                	push   %r12
  400869:	41 89 fc             	mov    %edi,%r12d
  40086c:	55                   	push   %rbp
  40086d:	48 8d 2d 6c 15 00 00 	lea    0x156c(%rip),%rbp        # 401de0 <__do_global_dtors_aux_fini_array_entry>
  400874:	53                   	push   %rbx
  400875:	4c 29 fd             	sub    %r15,%rbp
  400878:	48 83 ec 08          	sub    $0x8,%rsp
  40087c:	e8 c7 fd ff ff       	callq  400648 <_init>
  400881:	48 c1 fd 03          	sar    $0x3,%rbp
  400885:	74 1f                	je     4008a6 <__libc_csu_init+0x56>
  400887:	31 db                	xor    %ebx,%ebx
  400889:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400890:	4c 89 f2             	mov    %r14,%rdx
  400893:	4c 89 ee             	mov    %r13,%rsi
  400896:	44 89 e7             	mov    %r12d,%edi
  400899:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40089d:	48 83 c3 01          	add    $0x1,%rbx
  4008a1:	48 39 dd             	cmp    %rbx,%rbp
  4008a4:	75 ea                	jne    400890 <__libc_csu_init+0x40>
  4008a6:	48 83 c4 08          	add    $0x8,%rsp
  4008aa:	5b                   	pop    %rbx
  4008ab:	5d                   	pop    %rbp
  4008ac:	41 5c                	pop    %r12
  4008ae:	41 5d                	pop    %r13
  4008b0:	41 5e                	pop    %r14
  4008b2:	41 5f                	pop    %r15
  4008b4:	c3                   	retq   
  4008b5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4008bc:	00 00 00 00 

00000000004008c0 <__libc_csu_fini>:
  4008c0:	f3 0f 1e fa          	endbr64 
  4008c4:	c3                   	retq   

Disassembly of section .plt.got:

00000000004008d0 <__cxa_finalize@plt>:
  4008d0:	f3 0f 1e fa          	endbr64 
  4008d4:	f2 ff 25 1d 17 00 00 	bnd jmpq *0x171d(%rip)        # 401ff8 <__cxa_finalize@GLIBC_2.2.5>
  4008db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000004008e0 <puts@plt>:
  4008e0:	f3 0f 1e fa          	endbr64 
  4008e4:	f2 ff 25 2d 17 00 00 	bnd jmpq *0x172d(%rip)        # 402018 <puts@GLIBC_2.2.5>
  4008eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004008f0 <write@plt>:
  4008f0:	f3 0f 1e fa          	endbr64 
  4008f4:	f2 ff 25 25 17 00 00 	bnd jmpq *0x1725(%rip)        # 402020 <write@GLIBC_2.2.5>
  4008fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400900 <printf@plt>:
  400900:	f3 0f 1e fa          	endbr64 
  400904:	f2 ff 25 1d 17 00 00 	bnd jmpq *0x171d(%rip)        # 402028 <printf@GLIBC_2.2.5>
  40090b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .fini:

0000000000400910 <_fini>:
  400910:	f3 0f 1e fa          	endbr64 
  400914:	48 83 ec 08          	sub    $0x8,%rsp
  400918:	48 83 c4 08          	add    $0x8,%rsp
  40091c:	c3                   	retq   
