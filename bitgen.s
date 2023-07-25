	.file	"bitgen.f90"
	.text
	.section	.rodata
.LC1:
	.string	"bitgen.f90"
.LC2:
	.ascii	"(*(i0:\",\"))"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1064, %rsp
	.cfi_offset 3, -24
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -24(%rbp)
	movl	$4, %eax
	movl	$4, %edx
	cmpq	%rax, %rdx
	cmovle	%rdx, %rax
	movl	$0, %edx
	testq	%rax, %rax
	cmovs	%rdx, %rax
	movq	%rax, %rsi
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memcpy@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -20(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -552(%rbp)
	movl	$9, -544(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -480(%rbp)
	movq	$11, -472(%rbp)
	movl	$4096, -560(%rbp)
	movl	$6, -556(%rbp)
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	$4, -1040(%rbp)
	movq	$0, -1056(%rbp)
	movq	$0, -1048(%rbp)
	movq	$4, -1056(%rbp)
	movb	$1, -1044(%rbp)
	movb	$1, -1043(%rbp)
	movq	$1, -1024(%rbp)
	movq	$32, -1016(%rbp)
	movq	$1, -1032(%rbp)
	leaq	A.2.1(%rip), %rax
	movq	%rax, -1072(%rbp)
	movq	$-1, -1064(%rbp)
	leaq	-1072(%rbp), %rsi
	movq	$0, -992(%rbp)
	movq	$0, -984(%rbp)
	movq	$4, -992(%rbp)
	movb	$1, -980(%rbp)
	movb	$2, -979(%rbp)
	movq	$1, -968(%rbp)
	movq	$0, -960(%rbp)
	movq	$31, -952(%rbp)
	movq	$4, -976(%rbp)
	leaq	-816(%rbp), %rax
	movq	%rax, -1008(%rbp)
	movq	$0, -1000(%rbp)
	movl	$0, %edx
	movl	$0, %eax
.L3:
	cmpl	$31, %eax
	jg	.L2
	movl	-20(%rbp), %edi
	movl	%eax, %ecx
	sarl	%cl, %edi
	movl	%edi, %ecx
	andl	$1, %ecx
	movl	%ecx, %edi
	movq	-1008(%rbp), %rcx
	testl	%edi, %edi
	setne	%dil
	movzbl	%dil, %edi
	movl	%edi, (%rcx,%rdx,4)
	addq	$1, %rdx
	addl	$1, %eax
	jmp	.L3
.L2:
	movq	$0, -928(%rbp)
	movq	$0, -920(%rbp)
	movq	$4, -928(%rbp)
	movb	$1, -916(%rbp)
	movb	$2, -915(%rbp)
	movq	$1, -904(%rbp)
	movq	$0, -896(%rbp)
	movq	$31, -888(%rbp)
	movq	$4, -912(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, -944(%rbp)
	movq	$0, -936(%rbp)
	movl	$0, %eax
.L5:
	cmpq	$31, %rax
	jg	.L4
	movq	-1008(%rbp), %rcx
	movq	-944(%rbp), %rdx
	movl	(%rcx,%rax,4), %ecx
	movl	%ecx, (%rdx,%rax,4)
	addq	$1, %rax
	jmp	.L5
.L4:
	leaq	-944(%rbp), %rdx
	movq	$0, -864(%rbp)
	movq	$0, -856(%rbp)
	movq	$4, -864(%rbp)
	movb	$1, -852(%rbp)
	movb	$1, -851(%rbp)
	movq	$4, -848(%rbp)
	movq	$0, -880(%rbp)
	movq	$0, -872(%rbp)
	leaq	-880(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	_gfortran_pack@PLT
	movl	$0, %ebx
.L7:
	movq	-824(%rbp), %rax
	movq	-832(%rbp), %rdx
	subq	%rdx, %rax
	cmpq	%rax, %rbx
	jg	.L6
	movq	-880(%rbp), %rax
	movl	(%rax,%rbx,4), %eax
	movl	%eax, -32(%rbp)
	leaq	-32(%rbp), %rcx
	leaq	-560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_integer_write@PLT
	addq	$1, %rbx
	jmp	.L7
.L6:
	movq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args@PLT
	leaq	options.13.0(%rip), %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 32
	.type	A.2.1, @object
	.size	A.2.1, 128
A.2.1:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	12
	.long	13
	.long	14
	.long	15
	.long	16
	.long	17
	.long	18
	.long	19
	.long	20
	.long	21
	.long	22
	.long	23
	.long	24
	.long	25
	.long	26
	.long	27
	.long	28
	.long	29
	.long	30
	.long	31
	.align 16
	.type	options.13.0, @object
	.size	options.13.0, 28
options.13.0:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 4
.LC0:
	.long	1078530011
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04.1) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
