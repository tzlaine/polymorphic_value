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
	mov	edi, 16
	call	__Znwm
	mov	rcx, qword ptr [rip + __ZTV20direct_control_blockI6impl_tS0_E@GOTPCREL]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	mov	dword ptr [rax + 8], 0
	mov	qword ptr [rbx + 8], rax
	lea	rax, [rax + 8]
	mov	qword ptr [rbx], rax
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
	mov	edi, 16
	call	__Znwm
	mov	rcx, qword ptr [rip + __ZTV20direct_control_blockI6impl_tS0_E@GOTPCREL]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	mov	dword ptr [rax + 8], 0
	mov	qword ptr [rbx + 8], rax
	lea	rax, [rax + 8]
	mov	qword ptr [rbx], rax
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
	mov	edi, 16
	call	__Znwm
	mov	rcx, qword ptr [rip + __ZTV20direct_control_blockI6impl_tS0_E@GOTPCREL]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	lea	rcx, [rax + 8]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx], rcx
	mov	dword ptr [rax + 8], r14d
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
	mov	edi, 16
	call	__Znwm
	mov	rcx, qword ptr [rip + __ZTV20direct_control_blockI6impl_tS0_E@GOTPCREL]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	lea	rcx, [rax + 8]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx], rcx
	mov	dword ptr [rax + 8], r14d
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
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [rax + 8], 0
	test	rdi, rdi
	je	LBB4_1
## BB#2:
	mov	rax, qword ptr [rdi]
	pop	rbp
	jmp	qword ptr [rax + 8]     ## TAILCALL
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
	mov	rdi, qword ptr [rax + 8]
	mov	qword ptr [rax + 8], 0
	test	rdi, rdi
	je	LBB5_1
## BB#2:
	mov	rax, qword ptr [rdi]
	pop	rbp
	jmp	qword ptr [rax + 8]     ## TAILCALL
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

	.globl	__ZN20direct_control_blockI6impl_tS0_ED1Ev
	.weak_def_can_be_hidden	__ZN20direct_control_blockI6impl_tS0_ED1Ev
	.align	4, 0x90
__ZN20direct_control_blockI6impl_tS0_ED1Ev: ## @_ZN20direct_control_blockI6impl_tS0_ED1Ev
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp30:
	.cfi_def_cfa_offset 16
Ltmp31:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp32:
	.cfi_def_cfa_register rbp
	pop	rbp
	ret
	.cfi_endproc

	.globl	__ZN20direct_control_blockI6impl_tS0_ED0Ev
	.weak_def_can_be_hidden	__ZN20direct_control_blockI6impl_tS0_ED0Ev
	.align	4, 0x90
__ZN20direct_control_blockI6impl_tS0_ED0Ev: ## @_ZN20direct_control_blockI6impl_tS0_ED0Ev
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp33:
	.cfi_def_cfa_offset 16
Ltmp34:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp35:
	.cfi_def_cfa_register rbp
	pop	rbp
	jmp	__ZdlPv                 ## TAILCALL
	.cfi_endproc

	.globl	__ZNK20direct_control_blockI6impl_tS0_E5cloneEv
	.weak_def_can_be_hidden	__ZNK20direct_control_blockI6impl_tS0_E5cloneEv
	.align	4, 0x90
__ZNK20direct_control_blockI6impl_tS0_E5cloneEv: ## @_ZNK20direct_control_blockI6impl_tS0_E5cloneEv
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp36:
	.cfi_def_cfa_offset 16
Ltmp37:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp38:
	.cfi_def_cfa_register rbp
	push	r14
	push	rbx
Ltmp39:
	.cfi_offset rbx, -32
Ltmp40:
	.cfi_offset r14, -24
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 16
	call	__Znwm
	mov	rcx, qword ptr [rip + __ZTV20direct_control_blockI6impl_tS0_E@GOTPCREL]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	mov	ecx, dword ptr [r14 + 8]
	mov	dword ptr [rax + 8], ecx
	mov	qword ptr [rbx], rax
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret
	.cfi_endproc

	.globl	__ZN20direct_control_blockI6impl_tS0_E3ptrEv
	.weak_def_can_be_hidden	__ZN20direct_control_blockI6impl_tS0_E3ptrEv
	.align	4, 0x90
__ZN20direct_control_blockI6impl_tS0_E3ptrEv: ## @_ZN20direct_control_blockI6impl_tS0_E3ptrEv
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp41:
	.cfi_def_cfa_offset 16
Ltmp42:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp43:
	.cfi_def_cfa_register rbp
	lea	rax, [rdi + 8]
	pop	rbp
	ret
	.cfi_endproc

	.section	__DATA,__data
	.globl	__ZTV20direct_control_blockI6impl_tS0_E ## @_ZTV20direct_control_blockI6impl_tS0_E
	.weak_def_can_be_hidden	__ZTV20direct_control_blockI6impl_tS0_E
	.align	3
__ZTV20direct_control_blockI6impl_tS0_E:
	.quad	0
	.quad	__ZTI20direct_control_blockI6impl_tS0_E
	.quad	__ZN20direct_control_blockI6impl_tS0_ED1Ev
	.quad	__ZN20direct_control_blockI6impl_tS0_ED0Ev
	.quad	__ZNK20direct_control_blockI6impl_tS0_E5cloneEv
	.quad	__ZN20direct_control_blockI6impl_tS0_E3ptrEv

	.section	__TEXT,__const
	.globl	__ZTS20direct_control_blockI6impl_tS0_E ## @_ZTS20direct_control_blockI6impl_tS0_E
	.weak_definition	__ZTS20direct_control_blockI6impl_tS0_E
	.align	4
__ZTS20direct_control_blockI6impl_tS0_E:
	.asciz	"20direct_control_blockI6impl_tS0_E"

	.globl	__ZTS13control_blockI6impl_tE ## @_ZTS13control_blockI6impl_tE
	.weak_definition	__ZTS13control_blockI6impl_tE
	.align	4
__ZTS13control_blockI6impl_tE:
	.asciz	"13control_blockI6impl_tE"

	.section	__DATA,__data
	.globl	__ZTI13control_blockI6impl_tE ## @_ZTI13control_blockI6impl_tE
	.weak_definition	__ZTI13control_blockI6impl_tE
	.align	3
__ZTI13control_blockI6impl_tE:
	.quad	__ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	__ZTS13control_blockI6impl_tE

	.globl	__ZTI20direct_control_blockI6impl_tS0_E ## @_ZTI20direct_control_blockI6impl_tS0_E
	.weak_definition	__ZTI20direct_control_blockI6impl_tS0_E
	.align	4
__ZTI20direct_control_blockI6impl_tS0_E:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTS20direct_control_blockI6impl_tS0_E
	.quad	__ZTI13control_blockI6impl_tE


.subsections_via_symbols
