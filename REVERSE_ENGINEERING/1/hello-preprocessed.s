	.file	"hello-preprocessed.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"hello %s! \n"
	.text
	.globl	"say_hello"
	.type	"say_hello", @function
"say_hello":
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR -8[rbp], rdi
	mov	rax, QWORD PTR -8[rbp]
	lea	rdx, .LC0[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, 0
	call	"printf"@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	"say_hello", .-"say_hello"
	.section	.rodata
.LC1:
	.string	"%1000s"
	.text
	.globl	"main"
	.type	"main", @function
"main":
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 1040
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rax, -1040[rbp]
	lea	rdx, .LC1[rip]
	mov	rsi, rax
	mov	rdi, rdx
	mov	eax, 0
	call	__isoc23_scanf@PLT
	lea	rax, -1040[rbp]
	mov	rdi, rax
	call	"say_hello"
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L4
	call	"__stack_chk_fail"@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	"main", .-"main"
	.ident	"GCC: (GNU) 16.1.1 20260430"
	.section	.note.GNU-stack,"",@progbits
