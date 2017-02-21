	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.intel_syntax noprefix
	.globl	__ZN11int_wrapperC2Ev
	.align	4, 0x90
__ZN11int_wrapperC2Ev:                  ## @_ZN11int_wrapperC2Ev
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp2:
	.cfi_def_cfa_register rbp
	push	rbx
	push	rax
Ltmp3:
	.cfi_offset rbx, -24
	mov	rbx, rdi
	mov	edi, 4
	call	__Znwm
	mov	dword ptr [rax], 0
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret
	.cfi_endproc

	.globl	__ZN11int_wrapperC1Ev
	.align	4, 0x90
__ZN11int_wrapperC1Ev:                  ## @_ZN11int_wrapperC1Ev
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp4:
	.cfi_def_cfa_offset 16
Ltmp5:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp6:
	.cfi_def_cfa_register rbp
	push	rbx
	push	rax
Ltmp7:
	.cfi_offset rbx, -24
	mov	rbx, rdi
	mov	edi, 4
	call	__Znwm
	mov	dword ptr [rax], 0
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret
	.cfi_endproc

	.globl	__ZN11int_wrapperC2Ei
	.align	4, 0x90
__ZN11int_wrapperC2Ei:                  ## @_ZN11int_wrapperC2Ei
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp8:
	.cfi_def_cfa_offset 16
Ltmp9:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp10:
	.cfi_def_cfa_register rbp
	push	r14
	push	rbx
Ltmp11:
	.cfi_offset rbx, -32
Ltmp12:
	.cfi_offset r14, -24
	mov	r14d, esi
	mov	rbx, rdi
	mov	edi, 4
	call	__Znwm
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rax
	mov	dword ptr [rax], r14d
	pop	rbx
	pop	r14
	pop	rbp
	ret
	.cfi_endproc

	.globl	__ZN11int_wrapperC1Ei
	.align	4, 0x90
__ZN11int_wrapperC1Ei:                  ## @_ZN11int_wrapperC1Ei
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp13:
	.cfi_def_cfa_offset 16
Ltmp14:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp15:
	.cfi_def_cfa_register rbp
	push	r14
	push	rbx
Ltmp16:
	.cfi_offset rbx, -32
Ltmp17:
	.cfi_offset r14, -24
	mov	r14d, esi
	mov	rbx, rdi
	mov	edi, 4
	call	__Znwm
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rax
	mov	dword ptr [rax], r14d
	pop	rbx
	pop	r14
	pop	rbp
	ret
	.cfi_endproc

	.globl	__ZN11int_wrapperD2Ev
	.align	4, 0x90
__ZN11int_wrapperD2Ev:                  ## @_ZN11int_wrapperD2Ev
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp20:
	.cfi_def_cfa_register rbp
	mov	rax, rdi
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rax], 0
	test	rdi, rdi
	je	LBB4_1
## BB#2:
	pop	rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB4_1:
	pop	rbp
	ret
	.cfi_endproc

	.globl	__ZN11int_wrapperD1Ev
	.align	4, 0x90
__ZN11int_wrapperD1Ev:                  ## @_ZN11int_wrapperD1Ev
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp23:
	.cfi_def_cfa_register rbp
	mov	rax, rdi
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rax], 0
	test	rdi, rdi
	je	LBB5_1
## BB#2:
	pop	rbp
	jmp	__ZdlPv                 ## TAILCALL
LBB5_1:
	pop	rbp
	ret
	.cfi_endproc

	.globl	__ZNK11int_wrappercviEv
	.align	4, 0x90
__ZNK11int_wrappercviEv:                ## @_ZNK11int_wrappercviEv
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp26:
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rdi]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret
	.cfi_endproc

	.globl	__ZN11int_wrapperppEv
	.align	4, 0x90
__ZN11int_wrapperppEv:                  ## @_ZN11int_wrapperppEv
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp29:
	.cfi_def_cfa_register rbp
	mov	rax, qword ptr [rdi]
	inc	dword ptr [rax]
	mov	rax, rdi
	pop	rbp
	ret
	.cfi_endproc


.subsections_via_symbols
