	.file	"test2.c"
	.intel_syntax noprefix
	.section	.rodata
.LC0:
	.string	"locl variable a: %p\n"
.LC1:
	.string	"locl variable b: %p\n"
.LC2:
	.string	"locl variable c: %p\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-8], rax
	xor	eax, eax
	mov	BYTE PTR [rbp-11], 97
	mov	BYTE PTR [rbp-10], 98
	mov	BYTE PTR [rbp-9], 99
	lea	rax, [rbp-11]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC0
	mov	eax, 0
	call	printf
	lea	rax, [rbp-10]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC1
	mov	eax, 0
	call	printf
	lea	rax, [rbp-9]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC2
	mov	eax, 0
	call	printf
	movzx	eax, BYTE PTR [rbp-9]
	movsx	edx, al
	movzx	eax, BYTE PTR [rbp-10]
	movsx	ecx, al
	movzx	eax, BYTE PTR [rbp-11]
	movsx	eax, al
	mov	esi, ecx
	mov	edi, eax
	call	printparamaddr
	mov	eax, 0
	mov	rcx, QWORD PTR [rbp-8]
	xor	rcx, QWORD PTR fs:40
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
.LC3:
	.string	"parameter a: %p\n"
.LC4:
	.string	"parameter b: %p\n"
.LC5:
	.string	"parameter c: %p\n"
	.text
	.globl	printparamaddr
	.type	printparamaddr, @function
printparamaddr:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	ecx, esi
	mov	eax, edx
	mov	BYTE PTR [rbp-4], dil
	mov	BYTE PTR [rbp-8], cl
	mov	BYTE PTR [rbp-12], al
	lea	rax, [rbp-4]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC3
	mov	eax, 0
	call	printf
	lea	rax, [rbp-8]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC4
	mov	eax, 0
	call	printf
	lea	rax, [rbp-12]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC5
	mov	eax, 0
	call	printf
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	printparamaddr, .-printparamaddr
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
