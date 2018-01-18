	.file	"gpuirr.avx.cpp"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.type	_ZL11gpuirr_openii._omp_fn.0, @function
_ZL11gpuirr_openii._omp_fn.0:
.LFB1240:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	omp_get_num_threads
	movl	%eax, _ZL11num_threads(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1240:
	.size	_ZL11gpuirr_openii._omp_fn.0, .-_ZL11gpuirr_openii._omp_fn.0
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.type	_ZL11gpuirr_firriPdS_, @function
_ZL11gpuirr_firriPdS_:
.LFB1229:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movslq	%edi, %rax
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	imulq	$2416, %rax, %r10
	leaq	(%rax,%rax,2), %rax
	subq	$400, %rsp
	salq	$5, %rax
	movq	_ZL4ptcl(%rip), %r8
	vmovapd	_ZL8vec_tnow(%rip), %xmm7
	addq	_ZL4list(%rip), %r10
	vmovaps	%xmm7, -224(%rbp)
	addq	%r8, %rax
	vmovddup	80(%rax), %xmm0
	vsubpd	%xmm0, %xmm7, %xmm0
	movl	12(%r10), %edi
	vcvtpd2psx	%xmm0, %xmm0
	vshufps	$0, %xmm0, %xmm0, %xmm1
	vshufps	$85, %xmm0, %xmm0, %xmm0
	vinsertf128	$0x1, %xmm0, %ymm1, %ymm0
	vmovaps	16(%rax), %xmm1
	testl	%edi, %edi
	vmovaps	%xmm1, %xmm2
	vinsertf128	$0x1, %xmm1, %ymm2, %ymm4
	vmovaps	32(%rax), %xmm1
	vmovaps	%xmm1, %xmm2
	vinsertf128	$0x1, %xmm1, %ymm2, %ymm1
	vmovaps	48(%rax), %xmm2
	vmovaps	%xmm2, %xmm5
	vinsertf128	$0x1, %xmm2, %ymm5, %ymm5
	vmovaps	64(%rax), %xmm2
	vmovaps	%xmm2, %xmm6
	vinsertf128	$0x1, %xmm2, %ymm6, %ymm6
	vmovaps	(%rax), %xmm2
	vmovaps	%xmm2, %xmm3
	vinsertf128	$0x1, %xmm2, %ymm3, %ymm3
	vmulps	%ymm6, %ymm0, %ymm2
	vaddps	%ymm2, %ymm5, %ymm2
	vmulps	%ymm2, %ymm0, %ymm2
	vaddps	%ymm2, %ymm1, %ymm2
	vmulps	%ymm2, %ymm0, %ymm2
	vaddps	%ymm2, %ymm4, %ymm2
	vaddps	%ymm0, %ymm0, %ymm4
	vmulps	.LC1(%rip), %ymm0, %ymm0
	vmulps	%ymm6, %ymm0, %ymm0
	vaddps	%ymm0, %ymm5, %ymm0
	vmulps	%ymm0, %ymm4, %ymm0
	vaddps	%ymm0, %ymm1, %ymm0
	vshufps	$0, %ymm3, %ymm3, %ymm4
	vmovaps	%ymm4, -272(%rbp)
	vshufps	$85, %ymm3, %ymm3, %ymm4
	vmovaps	%ymm4, -304(%rbp)
	vshufps	$170, %ymm3, %ymm3, %ymm4
	vmovaps	%ymm4, -336(%rbp)
	vshufps	$0, %ymm2, %ymm2, %ymm4
	vmovaps	%ymm4, -368(%rbp)
	vshufps	$85, %ymm2, %ymm2, %ymm4
	vmovaps	%ymm4, -400(%rbp)
	vshufps	$170, %ymm2, %ymm2, %ymm4
	vmovaps	%ymm4, -432(%rbp)
	vshufps	$0, %ymm0, %ymm0, %ymm4
	vmovaps	%ymm4, -464(%rbp)
	vshufps	$85, %ymm0, %ymm0, %ymm4
	vmovaps	%ymm4, -496(%rbp)
	vshufps	$170, %ymm0, %ymm0, %ymm4
	vmovaps	%ymm4, -528(%rbp)
	jle	.L7
	leal	-1(%rdi), %eax
	leaq	16(%r10), %rcx
	movq	%rax, %r9
	leaq	20(%r10,%rax,4), %rdi
	.p2align 4,,10
	.p2align 3
.L5:
	movslq	(%rcx), %rax
	addq	$4, %rcx
	leaq	(%rax,%rax,2), %rax
	salq	$5, %rax
	addq	%r8, %rax
	cmpq	%rdi, %rcx
	prefetcht0	(%rax)
	prefetcht0	64(%rax)
	jne	.L5
	vxorps	%xmm2, %xmm2, %xmm2
	shrl	$3, %r9d
	vmovaps	%ymm2, -48(%rbp)
	leal	8(,%r9,8), %r11d
	vmovaps	%ymm2, -80(%rbp)
	xorl	%r9d, %r9d
	leaq	20(%r10), %rdi
	vmovaps	%ymm2, -112(%rbp)
	vmovaps	%ymm2, -208(%rbp)
	vmovaps	%ymm2, -176(%rbp)
	vmovaps	%ymm2, -144(%rbp)
	.p2align 4,,10
	.p2align 3
.L6:
	movslq	%r9d, %rcx
	movslq	(%rdi), %rax
	addl	$8, %r9d
	addq	$32, %rdi
	movslq	16(%r10,%rcx,4), %rcx
	vmovapd	-224(%rbp), %xmm15
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rcx,2), %rcx
	salq	$5, %rax
	salq	$5, %rcx
	addq	%r8, %rax
	addq	%r8, %rcx
	vmovapd	80(%rcx), %xmm3
	vmovaps	16(%rcx), %xmm9
	vmovhpd	80(%rax), %xmm3, %xmm3
	vmovaps	48(%rcx), %xmm10
	vsubpd	%xmm3, %xmm15, %xmm3
	vmovaps	64(%rcx), %xmm11
	vinsertf128	$0x1, 16(%rax), %ymm9, %ymm5
	vinsertf128	$0x1, 48(%rax), %ymm10, %ymm10
	vmovaps	32(%rcx), %xmm6
	vinsertf128	$0x1, 64(%rax), %ymm11, %ymm11
	vmovaps	(%rcx), %xmm13
	vcvtpd2psx	%xmm3, %xmm3
	vshufps	$0, %xmm3, %xmm3, %xmm0
	movslq	-28(%rdi), %rcx
	vshufps	$85, %xmm3, %xmm3, %xmm3
	vinsertf128	$0x1, %xmm3, %ymm0, %ymm3
	vmulps	%ymm11, %ymm3, %ymm9
	vaddps	%ymm9, %ymm10, %ymm9
	vinsertf128	$0x1, 32(%rax), %ymm6, %ymm1
	vinsertf128	$0x1, (%rax), %ymm13, %ymm13
	movslq	-24(%rdi), %rax
	vmulps	%ymm9, %ymm3, %ymm9
	vaddps	%ymm9, %ymm1, %ymm9
	leaq	(%rcx,%rcx,2), %rcx
	salq	$5, %rcx
	addq	%r8, %rcx
	vmulps	%ymm9, %ymm3, %ymm0
	vaddps	%ymm0, %ymm5, %ymm9
	leaq	(%rax,%rax,2), %rax
	vmovaps	16(%rcx), %xmm2
	vaddps	%ymm3, %ymm3, %ymm0
	salq	$5, %rax
	vmovaps	48(%rcx), %xmm4
	vmulps	.LC1(%rip), %ymm3, %ymm3
	vmulps	%ymm11, %ymm3, %ymm3
	vaddps	%ymm3, %ymm10, %ymm3
	addq	%r8, %rax
	vmovaps	64(%rcx), %xmm8
	vinsertf128	$0x1, 16(%rax), %ymm2, %ymm10
	vinsertf128	$0x1, 48(%rax), %ymm4, %ymm4
	vmovaps	(%rcx), %xmm12
	vmulps	%ymm3, %ymm0, %ymm3
	vaddps	%ymm3, %ymm1, %ymm6
	vmovapd	80(%rcx), %xmm3
	vinsertf128	$0x1, 64(%rax), %ymm8, %ymm8
	vmovaps	32(%rcx), %xmm1
	vinsertf128	$0x1, (%rax), %ymm12, %ymm12
	vmovhpd	80(%rax), %xmm3, %xmm3
	movslq	-20(%rdi), %rcx
	vsubpd	%xmm3, %xmm15, %xmm3
	vinsertf128	$0x1, 32(%rax), %ymm1, %ymm5
	movslq	-16(%rdi), %rax
	vcvtpd2psx	%xmm3, %xmm3
	vshufps	$0, %xmm3, %xmm3, %xmm0
	vshufps	$85, %xmm3, %xmm3, %xmm3
	vinsertf128	$0x1, %xmm3, %ymm0, %ymm3
	vmulps	%ymm8, %ymm3, %ymm2
	vaddps	%ymm2, %ymm4, %ymm2
	leaq	(%rcx,%rcx,2), %rcx
	leaq	(%rax,%rax,2), %rax
	salq	$5, %rcx
	addq	%r8, %rcx
	salq	$5, %rax
	vmulps	%ymm2, %ymm3, %ymm2
	vaddps	%ymm2, %ymm5, %ymm2
	addq	%r8, %rax
	vmulps	%ymm2, %ymm3, %ymm0
	vaddps	%ymm0, %ymm10, %ymm2
	vaddps	%ymm3, %ymm3, %ymm0
	vmulps	.LC1(%rip), %ymm3, %ymm3
	vmulps	%ymm8, %ymm3, %ymm3
	vaddps	%ymm3, %ymm4, %ymm3
	vmulps	%ymm3, %ymm0, %ymm3
	vaddps	%ymm3, %ymm5, %ymm1
	vmovapd	80(%rcx), %xmm3
	vmovaps	16(%rcx), %xmm5
	vmovhpd	80(%rax), %xmm3, %xmm3
	vmovaps	48(%rcx), %xmm8
	vsubpd	%xmm3, %xmm15, %xmm3
	vmovaps	64(%rcx), %xmm11
	vinsertf128	$0x1, 16(%rax), %ymm5, %ymm14
	vinsertf128	$0x1, 48(%rax), %ymm8, %ymm8
	vmovaps	32(%rcx), %xmm4
	vinsertf128	$0x1, 64(%rax), %ymm11, %ymm11
	vmovaps	(%rcx), %xmm7
	vcvtpd2psx	%xmm3, %xmm3
	vshufps	$0, %xmm3, %xmm3, %xmm0
	movslq	-12(%rdi), %rcx
	vshufps	$85, %xmm3, %xmm3, %xmm3
	vinsertf128	$0x1, %xmm3, %ymm0, %ymm3
	vmulps	%ymm11, %ymm3, %ymm5
	vaddps	%ymm5, %ymm8, %ymm5
	vinsertf128	$0x1, 32(%rax), %ymm4, %ymm10
	vinsertf128	$0x1, (%rax), %ymm7, %ymm7
	movslq	-8(%rdi), %rax
	vmulps	%ymm5, %ymm3, %ymm5
	vaddps	%ymm5, %ymm10, %ymm5
	leaq	(%rcx,%rcx,2), %rcx
	salq	$5, %rcx
	addq	%r8, %rcx
	vmulps	%ymm5, %ymm3, %ymm0
	vaddps	%ymm0, %ymm14, %ymm5
	leaq	(%rax,%rax,2), %rax
	vmovaps	32(%rcx), %xmm14
	vaddps	%ymm3, %ymm3, %ymm0
	salq	$5, %rax
	vmulps	.LC1(%rip), %ymm3, %ymm3
	vmulps	%ymm11, %ymm3, %ymm3
	vaddps	%ymm3, %ymm8, %ymm3
	addq	%r8, %rax
	vmovaps	16(%rcx), %xmm8
	vinsertf128	$0x1, 32(%rax), %ymm14, %ymm14
	cmpl	%r11d, %r9d
	vinsertf128	$0x1, 16(%rax), %ymm8, %ymm11
	vmulps	%ymm3, %ymm0, %ymm3
	vaddps	%ymm3, %ymm10, %ymm4
	vmovapd	80(%rcx), %xmm3
	vmovaps	48(%rcx), %xmm10
	vmovhpd	80(%rax), %xmm3, %xmm3
	vsubpd	%xmm3, %xmm15, %xmm3
	vmovaps	64(%rcx), %xmm15
	vinsertf128	$0x1, 48(%rax), %ymm10, %ymm10
	vinsertf128	$0x1, 64(%rax), %ymm15, %ymm15
	vcvtpd2psx	%xmm3, %xmm3
	vshufps	$0, %xmm3, %xmm3, %xmm0
	vshufps	$85, %xmm3, %xmm3, %xmm3
	vinsertf128	$0x1, %xmm3, %ymm0, %ymm3
	vmulps	%ymm15, %ymm3, %ymm8
	vaddps	%ymm8, %ymm10, %ymm8
	vmovaps	(%rcx), %xmm0
	vinsertf128	$0x1, (%rax), %ymm0, %ymm0
	vmulps	%ymm8, %ymm3, %ymm8
	vaddps	%ymm8, %ymm14, %ymm8
	vmulps	%ymm8, %ymm3, %ymm8
	vaddps	%ymm8, %ymm11, %ymm8
	vaddps	%ymm3, %ymm3, %ymm11
	vmulps	.LC1(%rip), %ymm3, %ymm3
	vmulps	%ymm15, %ymm3, %ymm3
	vaddps	%ymm3, %ymm10, %ymm3
	vunpcklps	%ymm0, %ymm12, %ymm10
	vunpckhps	%ymm0, %ymm12, %ymm0
	vmulps	%ymm3, %ymm11, %ymm3
	vaddps	%ymm3, %ymm14, %ymm14
	vunpcklps	%ymm7, %ymm13, %ymm3
	vunpckhps	%ymm7, %ymm13, %ymm7
	vunpcklps	%ymm10, %ymm3, %ymm15
	vunpcklps	%ymm0, %ymm7, %ymm11
	vunpckhps	%ymm10, %ymm3, %ymm10
	vunpckhps	%ymm0, %ymm7, %ymm7
	vunpcklps	%ymm8, %ymm2, %ymm3
	vunpcklps	%ymm5, %ymm9, %ymm0
	vunpcklps	%ymm3, %ymm0, %ymm12
	vsubps	-272(%rbp), %ymm15, %ymm15
	vunpckhps	%ymm3, %ymm0, %ymm0
	vsubps	-368(%rbp), %ymm12, %ymm12
	vunpckhps	%ymm8, %ymm2, %ymm2
	vunpckhps	%ymm5, %ymm9, %ymm5
	vsubps	-400(%rbp), %ymm0, %ymm0
	vunpcklps	%ymm2, %ymm5, %ymm5
	vunpcklps	%ymm14, %ymm1, %ymm8
	vunpckhps	%ymm14, %ymm1, %ymm14
	vsubps	-304(%rbp), %ymm10, %ymm10
	vunpcklps	%ymm4, %ymm6, %ymm2
	vunpcklps	%ymm8, %ymm2, %ymm13
	vunpckhps	%ymm8, %ymm2, %ymm8
	vaddps	%ymm12, %ymm15, %ymm15
	vunpckhps	%ymm4, %ymm6, %ymm4
	vunpcklps	%ymm14, %ymm4, %ymm14
	vsubps	-336(%rbp), %ymm11, %ymm11
	vaddps	%ymm0, %ymm10, %ymm10
	vsubps	-432(%rbp), %ymm5, %ymm5
	vmulps	%ymm15, %ymm15, %ymm1
	vsubps	-464(%rbp), %ymm13, %ymm13
	vmulps	%ymm10, %ymm10, %ymm0
	vaddps	%ymm0, %ymm1, %ymm0
	vaddps	%ymm5, %ymm11, %ymm5
	vsubps	-496(%rbp), %ymm8, %ymm8
	vmulps	%ymm13, %ymm15, %ymm9
	vsubps	-528(%rbp), %ymm14, %ymm14
	vmulps	%ymm5, %ymm5, %ymm1
	vaddps	%ymm1, %ymm0, %ymm1
	vrsqrtps	%ymm1, %ymm2
	vmulps	%ymm2, %ymm1, %ymm1
	vmulps	%ymm1, %ymm2, %ymm1
	vmulps	.LC2(%rip), %ymm2, %ymm3
	vaddps	.LC3(%rip), %ymm1, %ymm0
	vmulps	%ymm8, %ymm10, %ymm2
	vaddps	%ymm2, %ymm9, %ymm2
	vmulps	%ymm14, %ymm5, %ymm9
	vmulps	%ymm0, %ymm3, %ymm0
	vmulps	%ymm0, %ymm0, %ymm1
	vmulps	%ymm0, %ymm7, %ymm7
	vaddps	%ymm9, %ymm2, %ymm9
	vmulps	.LC3(%rip), %ymm1, %ymm2
	vmulps	%ymm7, %ymm1, %ymm1
	vmulps	%ymm1, %ymm15, %ymm0
	vaddps	-144(%rbp), %ymm0, %ymm6
	vmulps	%ymm1, %ymm10, %ymm0
	vmulps	%ymm2, %ymm9, %ymm9
	vmulps	%ymm9, %ymm15, %ymm15
	vmulps	%ymm9, %ymm10, %ymm10
	vaddps	%ymm15, %ymm13, %ymm13
	vmovaps	%ymm6, -144(%rbp)
	vaddps	%ymm10, %ymm8, %ymm8
	vmulps	%ymm9, %ymm5, %ymm9
	vaddps	-176(%rbp), %ymm0, %ymm6
	vmulps	%ymm1, %ymm5, %ymm0
	vaddps	%ymm9, %ymm14, %ymm14
	vmulps	%ymm13, %ymm1, %ymm13
	vaddps	-208(%rbp), %ymm0, %ymm4
	vmulps	%ymm8, %ymm1, %ymm8
	vmovaps	%ymm6, -176(%rbp)
	vaddps	-112(%rbp), %ymm13, %ymm7
	vaddps	-80(%rbp), %ymm8, %ymm6
	vmulps	%ymm14, %ymm1, %ymm14
	vmovaps	%ymm4, -208(%rbp)
	vaddps	-48(%rbp), %ymm14, %ymm4
	vmovaps	%ymm7, -112(%rbp)
	vmovaps	%ymm6, -80(%rbp)
	vmovaps	%ymm4, -48(%rbp)
	jne	.L6
	vmovaps	-144(%rbp), %ymm7
.L4:
	vcvtps2pd	%xmm7, %ymm1
	vextractf128	$0x1, %ymm7, %xmm0
	vcvtps2pd	%xmm0, %ymm0
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovaps	-176(%rbp), %ymm4
	vmovaps	-208(%rbp), %ymm7
	vhaddpd	%ymm0, %ymm0, %ymm0
	vcvtps2pd	%xmm4, %ymm2
	vcvtps2pd	%xmm7, %ymm3
	vmovapd	%xmm0, %xmm1
	vextractf128	$0x1, %ymm0, %xmm0
	vaddpd	%xmm0, %xmm1, %xmm1
	vextractf128	$0x1, %ymm4, %xmm0
	vcvtps2pd	%xmm0, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vmovlpd	%xmm1, (%rsi)
	vhaddpd	%ymm0, %ymm0, %ymm0
	vmovapd	%xmm0, %xmm2
	vextractf128	$0x1, %ymm0, %xmm0
	vaddpd	%xmm0, %xmm2, %xmm2
	vextractf128	$0x1, %ymm7, %xmm0
	vcvtps2pd	%xmm0, %ymm0
	vmovaps	-112(%rbp), %ymm7
	vaddpd	%ymm0, %ymm3, %ymm0
	vcvtps2pd	%xmm7, %ymm3
	vmovlpd	%xmm2, 8(%rsi)
	vhaddpd	%ymm0, %ymm0, %ymm0
	vmovapd	%xmm0, %xmm4
	vextractf128	$0x1, %ymm0, %xmm0
	vaddpd	%xmm0, %xmm4, %xmm4
	vextractf128	$0x1, %ymm7, %xmm0
	vcvtps2pd	%xmm0, %ymm0
	vmovaps	-80(%rbp), %ymm7
	vaddpd	%ymm0, %ymm3, %ymm0
	vcvtps2pd	%xmm7, %ymm3
	vmovlpd	%xmm4, 16(%rsi)
	vhaddpd	%ymm0, %ymm0, %ymm0
	vmovapd	%xmm0, %xmm5
	vextractf128	$0x1, %ymm0, %xmm0
	vaddpd	%xmm0, %xmm5, %xmm5
	vextractf128	$0x1, %ymm7, %xmm0
	vcvtps2pd	%xmm0, %ymm0
	vmovaps	-48(%rbp), %ymm7
	vaddpd	%ymm0, %ymm3, %ymm0
	vcvtps2pd	%xmm7, %ymm3
	vmovlpd	%xmm5, (%rdx)
	vhaddpd	%ymm0, %ymm0, %ymm0
	vmovapd	%xmm0, %xmm6
	vextractf128	$0x1, %ymm0, %xmm0
	vaddpd	%xmm0, %xmm6, %xmm6
	vextractf128	$0x1, %ymm7, %xmm0
	vcvtps2pd	%xmm0, %ymm0
	vaddpd	%ymm0, %ymm3, %ymm0
	vmovlpd	%xmm6, 8(%rdx)
	vhaddpd	%ymm0, %ymm0, %ymm0
	vmovapd	%xmm0, %xmm3
	vextractf128	$0x1, %ymm0, %xmm0
	vaddpd	%xmm0, %xmm3, %xmm0
	vmovlpd	%xmm0, 16(%rdx)
	vzeroupper
	addq	$400, %rsp
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L7:
	.cfi_restore_state
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	%ymm2, -48(%rbp)
	vmovaps	%ymm2, %ymm7
	vmovaps	%ymm2, -80(%rbp)
	vmovaps	%ymm2, -112(%rbp)
	vmovaps	%ymm2, -208(%rbp)
	vmovaps	%ymm2, -176(%rbp)
	vmovaps	%ymm2, -144(%rbp)
	jmp	.L4
	.cfi_endproc
.LFE1229:
	.size	_ZL11gpuirr_firriPdS_, .-_ZL11gpuirr_firriPdS_
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.type	_ZL15gpuirr_firr_veciPKiPA3_dS2_._omp_fn.1, @function
_ZL15gpuirr_firr_veciPKiPA3_dS2_._omp_fn.1:
.LFB1241:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$1, %ecx
	movq	%rdi, %r15
	movl	$1, %edx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movslq	24(%rdi), %rsi
	xorl	%edi, %edi
	leaq	24(%rsp), %r9
	leaq	16(%rsp), %r8
	call	GOMP_loop_guided_start
	testb	%al, %al
	je	.L13
	movq	_ZL4list(%rip), %r14
	.p2align 4,,10
	.p2align 3
.L15:
	movq	16(%rsp), %rbx
	movl	24(%rsp), %eax
	movq	(%r15), %rcx
	movl	%ebx, %r13d
	movslq	%ebx, %rbx
	leaq	(%rbx,%rbx,2), %rbp
	movl	%eax, 12(%rsp)
	salq	$2, %rbx
	salq	$3, %rbp
	.p2align 4,,10
	.p2align 3
.L14:
	movl	(%rcx,%rbx), %edi
	movq	%rbp, %rdx
	movq	%rbp, %rsi
	addl	$1, %r13d
	addq	16(%r15), %rdx
	addq	$24, %rbp
	addq	8(%r15), %rsi
	subl	$1, %edi
	call	_ZL11gpuirr_firriPdS_
	movq	(%r15), %rcx
	movslq	(%rcx,%rbx), %rax
	addq	$4, %rbx
	imulq	$2416, %rax, %rax
	addl	-2404(%r14,%rax), %r12d
	cmpl	%r13d, 12(%rsp)
	jg	.L14
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdi
	call	GOMP_loop_guided_next
	testb	%al, %al
	jne	.L15
.L13:
	call	GOMP_loop_end_nowait
	lock addl	%r12d, 28(%r15)
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1241:
	.size	_ZL15gpuirr_firr_veciPKiPA3_dS2_._omp_fn.1, .-_ZL15gpuirr_firr_veciPKiPA3_dS2_._omp_fn.1
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"gpuirr: it is already open\n"
.LC7:
	.string	"irrlib/gpuirr.avx.cpp"
.LC8:
	.string	"lmax <= 1 + NBlist::NB_MAX"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC9:
	.string	"**************************** \n"
	.align 8
.LC10:
	.string	"Opening GPUIRR lib. AVX ver. \n"
	.section	.rodata.str1.1
.LC11:
	.string	" nmax = %d, lmax = %d\n"
	.section	.rodata.str1.8
	.align 8
.LC14:
	.string	"0 == posix_memalign(&ptr, 64, (1+nmax) * sizeof(Particle))"
	.align 8
.LC15:
	.string	"0 == posix_memalign(&ptr, 64, nmax * sizeof(NBlist))"
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	gpuirr_open_
	.type	gpuirr_open_, @function
gpuirr_open_:
.LFB1231:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	cmpb	$0, _ZL7is_open(%rip)
	movl	(%rsi), %ebx
	movl	(%rdi), %ebp
	jne	.L29
	cmpl	$601, %ebx
	jg	.L30
	movl	$30, %edx
	movl	$1, %esi
	movl	$.LC9, %edi
	movq	stderr(%rip), %rcx
	call	fwrite
	movl	$30, %edx
	movl	$1, %esi
	movq	stderr(%rip), %rcx
	movl	$.LC10, %edi
	call	fwrite
	movl	%ebx, %ecx
	movl	%ebp, %edx
	movl	$.LC11, %esi
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	call	fprintf
	movl	$30, %edx
	movl	$1, %esi
	movq	stderr(%rip), %rcx
	movl	$.LC9, %edi
	call	fwrite
	leal	1(%rbp), %eax
	movl	$64, %esi
	leaq	8(%rsp), %rdi
	cltq
	leaq	(%rax,%rax,2), %rbx
	salq	$5, %rbx
	movq	%rbx, %rdx
	call	posix_memalign
	testl	%eax, %eax
	jne	.L25
	movq	8(%rsp), %rcx
	movq	%rbx, %rdx
	movl	$255, %esi
	movq	%rcx, %rdi
	call	memset
	movl	$64, %esi
	movq	%rsp, %rdi
	vmovaps	.LC12(%rip), %xmm0
	movq	%rax, _ZL4ptcl(%rip)
	leaq	-96(%rax,%rbx), %rax
	movslq	%ebp, %rbx
	imulq	$2416, %rbx, %rbx
	vmovaps	%xmm0, (%rax)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovaps	%xmm0, 16(%rax)
	vmovaps	%xmm0, 32(%rax)
	vmovaps	%xmm0, 48(%rax)
	vmovaps	%xmm0, 64(%rax)
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdx
	vmovaps	%xmm0, 80(%rax)
	call	posix_memalign
	testl	%eax, %eax
	jne	.L26
	movq	(%rsp), %rcx
	movq	%rbx, %rdx
	movl	$255, %esi
	movq	%rcx, %rdi
	call	memset
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$_ZL11gpuirr_openii._omp_fn.0, %edi
	movl	%ebp, _ZL4nmax(%rip)
	movq	%rax, _ZL4list(%rip)
	call	GOMP_parallel
	movb	$1, _ZL7is_open(%rip)
	movq	$0, _ZL9time_grav(%rip)
	movq	$0, _ZL9num_steps(%rip)
	movq	$0, _ZL9num_fcall(%rip)
	movq	$0, _ZL9num_inter(%rip)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore_state
	movl	$_ZZL11gpuirr_openiiE19__PRETTY_FUNCTION__, %ecx
	movl	$368, %edx
	movl	$.LC7, %esi
	movl	$.LC14, %edi
	call	__assert_fail
	.p2align 4,,10
	.p2align 3
.L26:
	movl	$_ZZL11gpuirr_openiiE19__PRETTY_FUNCTION__, %ecx
	movl	$376, %edx
	movl	$.LC7, %esi
	movl	$.LC15, %edi
	call	__assert_fail
	.p2align 4,,10
	.p2align 3
.L29:
	movl	$27, %edx
	movl	$1, %esi
	movl	$.LC6, %edi
	movq	stderr(%rip), %rcx
	call	fwrite
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L30:
	.cfi_restore_state
	movl	$_ZZL11gpuirr_openiiE19__PRETTY_FUNCTION__, %ecx
	movl	$358, %edx
	movl	$.LC7, %esi
	movl	$.LC8, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1231:
	.size	gpuirr_open_, .-gpuirr_open_
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.rodata.str1.1
.LC17:
	.string	"gpuirr: it is already close\n"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"Closing GPUIRR lib. CPU ver. \n"
	.section	.rodata.str1.1
.LC20:
	.string	"time grav  : %f sec\n"
.LC23:
	.string	"perf grav  : %f Gflops\n"
.LC24:
	.string	"perf grav  : %f usec\n"
.LC25:
	.string	"<#NB>      : %f \n"
	.section	.text.unlikely
.LCOLDB26:
	.text
.LHOTB26:
	.p2align 4,,15
	.globl	gpuirr_close_
	.type	gpuirr_close_, @function
gpuirr_close_:
.LFB1232:
	.cfi_startproc
	cmpb	$0, _ZL7is_open(%rip)
	je	.L40
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_ZL4ptcl(%rip), %rdi
	call	free
	movq	_ZL4list(%rip), %rdi
	movq	$0, _ZL4ptcl(%rip)
	call	free
	movq	_ZL9num_inter(%rip), %rax
	movq	$0, _ZL4list(%rip)
	testq	%rax, %rax
	js	.L33
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rax, %xmm1, %xmm1
.L34:
	movq	_ZL9num_fcall(%rip), %rax
	vmovsd	_ZL9time_grav(%rip), %xmm4
	testq	%rax, %rax
	js	.L35
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtsi2sdq	%rax, %xmm2, %xmm2
.L36:
	vdivsd	%xmm2, %xmm4, %xmm2
	movq	_ZL9num_steps(%rip), %rax
	testq	%rax, %rax
	vmulsd	.LC18(%rip), %xmm2, %xmm2
	js	.L37
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtsi2sdq	%rax, %xmm3, %xmm3
.L38:
	movl	$30, %edx
	movl	$1, %esi
	movl	$.LC9, %edi
	movq	stderr(%rip), %rcx
	vdivsd	%xmm3, %xmm1, %xmm3
	vmovsd	%xmm2, 24(%rsp)
	vmovsd	%xmm4, 16(%rsp)
	vmovsd	%xmm1, 8(%rsp)
	vmovsd	%xmm3, (%rsp)
	call	fwrite
	movl	$30, %edx
	movl	$1, %esi
	movq	stderr(%rip), %rcx
	movl	$.LC19, %edi
	call	fwrite
	movl	$.LC20, %esi
	movl	$1, %eax
	movq	stderr(%rip), %rdi
	vmovsd	_ZL9time_grav(%rip), %xmm0
	call	fprintf
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	call	fputc
	vmovsd	8(%rsp), %xmm1
	movl	$.LC23, %esi
	movl	$1, %eax
	vmulsd	.LC21(%rip), %xmm1, %xmm1
	vmulsd	.LC22(%rip), %xmm1, %xmm1
	vmovsd	16(%rsp), %xmm4
	movq	stderr(%rip), %rdi
	vdivsd	%xmm4, %xmm1, %xmm0
	call	fprintf
	vmovsd	24(%rsp), %xmm2
	movl	$.LC24, %esi
	movl	$1, %eax
	movq	stderr(%rip), %rdi
	vmovapd	%xmm2, %xmm0
	call	fprintf
	vmovsd	(%rsp), %xmm3
	movl	$.LC25, %esi
	movl	$1, %eax
	movq	stderr(%rip), %rdi
	vmovapd	%xmm3, %xmm0
	call	fprintf
	movl	$30, %edx
	movl	$1, %esi
	movq	stderr(%rip), %rcx
	movl	$.LC9, %edi
	call	fwrite
	movb	$0, _ZL7is_open(%rip)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L40:
	movl	$28, %edx
	movl	$1, %esi
	movl	$.LC17, %edi
	movq	stderr(%rip), %rcx
	jmp	fwrite
	.p2align 4,,10
	.p2align 3
.L33:
	.cfi_def_cfa_offset 48
	movq	%rax, %rdx
	andl	$1, %eax
	vxorpd	%xmm1, %xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2sdq	%rdx, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm1, %xmm1
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L37:
	movq	%rax, %rdx
	andl	$1, %eax
	vxorpd	%xmm3, %xmm3, %xmm3
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2sdq	%rdx, %xmm3, %xmm3
	vaddsd	%xmm3, %xmm3, %xmm3
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L35:
	movq	%rax, %rdx
	andl	$1, %eax
	vxorpd	%xmm2, %xmm2, %xmm2
	shrq	%rdx
	orq	%rax, %rdx
	vcvtsi2sdq	%rdx, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm2, %xmm2
	jmp	.L36
	.cfi_endproc
.LFE1232:
	.size	gpuirr_close_, .-gpuirr_close_
	.section	.text.unlikely
.LCOLDE26:
	.text
.LHOTE26:
	.section	.text.unlikely
.LCOLDB27:
	.text
.LHOTB27:
	.p2align 4,,15
	.globl	gpuirr_set_jp_
	.type	gpuirr_set_jp_, @function
gpuirr_set_jp_:
.LFB1233:
	.cfi_startproc
	movl	(%rdi), %eax
	pushq	%r10
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	vmovsd	16(%rsi), %xmm6
	leaq	16(%rsp), %r10
	vmovsd	(%rsi), %xmm7
	vmovhpd	(%r9), %xmm6, %xmm1
	vmovsd	(%rdx), %xmm5
	vmovhpd	8(%rsi), %xmm7, %xmm0
	subl	$1, %eax
	vmovsd	(%rcx), %xmm6
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
	vcvtpd2psy	%ymm0, %xmm3
	vcvtps2pd	%xmm3, %ymm2
	vsubpd	%ymm2, %ymm0, %ymm0
	cltq
	vmovsd	16(%rdx), %xmm1
	leaq	(%rax,%rax,2), %rax
	vmovsd	16(%rcx), %xmm4
	vmovsd	(%r8), %xmm7
	salq	$5, %rax
	vcvtpd2psy	%ymm0, %xmm2
	vmovhpd	8(%rdx), %xmm5, %xmm0
	movq	(%r10), %r10
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm1
	vcvtpd2psy	%ymm1, %xmm1
	vmovhpd	8(%rcx), %xmm6, %xmm0
	vmovsd	16(%r8), %xmm5
	vinsertf128	$0x1, %xmm4, %ymm0, %ymm4
	vmovhpd	8(%r8), %xmm7, %xmm0
	addq	_ZL4ptcl(%rip), %rax
	vinsertf128	$0x1, %xmm2, %ymm3, %ymm2
	vcvtpd2psy	%ymm4, %xmm4
	vinsertf128	$0x1, %xmm4, %ymm1, %ymm1
	vinsertf128	$0x1, %xmm5, %ymm0, %ymm0
	vcvtpd2psy	%ymm0, %xmm0
	vmovddup	(%r10), %xmm3
	vinsertf128	$0x1, %xmm3, %ymm0, %ymm0
	vmovaps	%ymm2, (%rax)
	vmovaps	%ymm1, 32(%rax)
	vmovaps	%ymm0, 64(%rax)
	vzeroupper
	popq	%r10
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1233:
	.size	gpuirr_set_jp_, .-gpuirr_set_jp_
	.section	.text.unlikely
.LCOLDE27:
	.text
.LHOTE27:
	.section	.rodata.str1.1
.LC28:
	.string	"nnb <= NBlist::NB_MAX"
	.section	.text.unlikely
.LCOLDB30:
	.text
.LHOTB30:
	.p2align 4,,15
	.globl	gpuirr_set_list_
	.type	gpuirr_set_list_, @function
gpuirr_set_list_:
.LFB1234:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xd,0x2,0x76,0x78
	.cfi_escape 0x10,0xc,0x2,0x76,0x70
	pushq	%rbx
	subq	$48, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x60
	movl	(%rsi), %ecx
	movl	(%rdi), %r8d
	subl	$1, %r8d
	cmpl	$600, %ecx
	jg	.L78
	leal	-1(%rcx), %r9d
	movslq	%r8d, %r8
	imulq	$2416, %r8, %r8
	addq	_ZL4list(%rip), %r8
	testl	%ecx, %ecx
	movl	%ecx, 12(%r8)
	leaq	16(%r8), %rdx
	jle	.L49
	vmovdqa	.LC29(%rip), %xmm2
	movl	%r9d, %edi
	xorl	%eax, %eax
	shrl	$3, %edi
	addq	$1, %rdi
	salq	$5, %rdi
	.p2align 4,,10
	.p2align 3
.L48:
	vmovdqu	4(%rsi,%rax), %xmm1
	vmovdqu	20(%rsi,%rax), %xmm0
	vpsubd	%xmm2, %xmm1, %xmm1
	vpsubd	%xmm2, %xmm0, %xmm0
	vmovntdq	%xmm1, (%rdx,%rax)
	vmovntdq	%xmm0, 16(%rdx,%rax)
	addq	$32, %rax
	cmpq	%rdi, %rax
	jne	.L48
.L49:
	leal	6(%rcx), %r10d
	testl	%r9d, %r9d
	movl	_ZL4nmax(%rip), %esi
	cmovs	%r10d, %r9d
	sarl	$3, %r9d
	leal	8(,%r9,8), %r9d
	cmpl	%r9d, %ecx
	jge	.L75
	movslq	%ecx, %r11
	movl	%r9d, %edi
	leaq	4(%r11), %rbx
	subl	%ecx, %edi
	leaq	(%r8,%rbx,4), %rax
	andl	$31, %eax
	shrq	$2, %rax
	negq	%rax
	andl	$7, %eax
	cmpl	%edi, %eax
	cmova	%edi, %eax
	cmpl	$10, %edi
	cmovbe	%edi, %eax
	testl	%eax, %eax
	je	.L51
	cmpl	$1, %eax
	movl	%esi, (%rdx,%r11,4)
	leal	1(%rcx), %r11d
	je	.L63
	movslq	%r11d, %r11
	cmpl	$2, %eax
	movl	%esi, (%rdx,%r11,4)
	leal	2(%rcx), %r11d
	je	.L63
	movslq	%r11d, %r11
	cmpl	$3, %eax
	movl	%esi, (%rdx,%r11,4)
	leal	3(%rcx), %r11d
	je	.L63
	movslq	%r11d, %r11
	cmpl	$4, %eax
	movl	%esi, (%rdx,%r11,4)
	leal	4(%rcx), %r11d
	je	.L63
	movslq	%r11d, %r11
	cmpl	$5, %eax
	movl	%esi, (%rdx,%r11,4)
	leal	5(%rcx), %r11d
	je	.L63
	movslq	%r11d, %r11
	cmpl	$6, %eax
	movl	%esi, (%rdx,%r11,4)
	je	.L67
	movslq	%r10d, %r10
	cmpl	$7, %eax
	movl	%esi, (%rdx,%r10,4)
	leal	7(%rcx), %r10d
	je	.L67
	movslq	%r10d, %r10
	cmpl	$8, %eax
	movl	%esi, (%rdx,%r10,4)
	leal	8(%rcx), %r10d
	je	.L67
	movslq	%r10d, %r10
	cmpl	$10, %eax
	movl	%esi, (%rdx,%r10,4)
	leal	9(%rcx), %r10d
	jne	.L67
	movslq	%r10d, %r10
	addl	$10, %ecx
	movl	%esi, (%rdx,%r10,4)
.L52:
	cmpl	%eax, %edi
	je	.L75
.L51:
	movl	%edi, %r12d
	subl	$1, %edi
	movl	%eax, %r11d
	subl	%eax, %r12d
	subl	%eax, %edi
	leal	-8(%r12), %r10d
	shrl	$3, %r10d
	addl	$1, %r10d
	cmpl	$6, %edi
	leal	0(,%r10,8), %r13d
	jbe	.L54
	movl	%esi, -52(%rbp)
	addq	%r11, %rbx
	vbroadcastss	-52(%rbp), %ymm0
	xorl	%eax, %eax
	leaq	(%r8,%rbx,4), %rdi
.L55:
	addl	$1, %eax
	vmovdqa	%ymm0, (%rdi)
	addq	$32, %rdi
	cmpl	%eax, %r10d
	ja	.L55
	addl	%r13d, %ecx
	cmpl	%r13d, %r12d
	je	.L74
	vzeroupper
.L54:
	movslq	%ecx, %rax
	movl	%esi, (%rdx,%rax,4)
	leal	1(%rcx), %eax
	cmpl	%eax, %r9d
	jle	.L75
	cltq
	movl	%esi, (%rdx,%rax,4)
	leal	2(%rcx), %eax
	cmpl	%eax, %r9d
	jle	.L75
	cltq
	movl	%esi, (%rdx,%rax,4)
	leal	3(%rcx), %eax
	cmpl	%eax, %r9d
	jle	.L75
	cltq
	movl	%esi, (%rdx,%rax,4)
	leal	4(%rcx), %eax
	cmpl	%eax, %r9d
	jle	.L75
	cltq
	movl	%esi, (%rdx,%rax,4)
	leal	5(%rcx), %eax
	cmpl	%eax, %r9d
	jle	.L75
	addl	$6, %ecx
	cltq
	cmpl	%ecx, %r9d
	movl	%esi, (%rdx,%rax,4)
	jle	.L75
	movslq	%ecx, %rcx
	movl	%esi, (%rdx,%rcx,4)
.L75:
	addq	$48, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L63:
	.cfi_restore_state
	movl	%r11d, %ecx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L67:
	movl	%r10d, %ecx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L74:
	vzeroupper
	jmp	.L75
.L78:
	movl	$_ZZL15gpuirr_set_listiiPKiE19__PRETTY_FUNCTION__, %ecx
	movl	$433, %edx
	movl	$.LC7, %esi
	movl	$.LC28, %edi
	call	__assert_fail
	.cfi_endproc
.LFE1234:
	.size	gpuirr_set_list_, .-gpuirr_set_list_
	.section	.text.unlikely
.LCOLDE30:
	.text
.LHOTE30:
	.section	.text.unlikely
.LCOLDB31:
	.text
.LHOTB31:
	.p2align 4,,15
	.globl	gpuirr_pred_all_
	.type	gpuirr_pred_all_, @function
gpuirr_pred_all_:
.LFB1235:
	.cfi_startproc
	vmovddup	(%rdx), %xmm0
	vmovaps	%xmm0, _ZL8vec_tnow(%rip)
	ret
	.cfi_endproc
.LFE1235:
	.size	gpuirr_pred_all_, .-gpuirr_pred_all_
	.section	.text.unlikely
.LCOLDE31:
	.text
.LHOTE31:
	.section	.text.unlikely
.LCOLDB32:
	.text
.LHOTB32:
	.p2align 4,,15
	.globl	gpuirr_pred_act_
	.type	gpuirr_pred_act_, @function
gpuirr_pred_act_:
.LFB1236:
	.cfi_startproc
	vmovddup	(%rdx), %xmm0
	vmovaps	%xmm0, _ZL8vec_tnow(%rip)
	ret
	.cfi_endproc
.LFE1236:
	.size	gpuirr_pred_act_, .-gpuirr_pred_act_
	.section	.text.unlikely
.LCOLDE32:
	.text
.LHOTE32:
	.section	.text.unlikely
.LCOLDB34:
	.text
.LHOTB34:
	.p2align 4,,15
	.globl	gpuirr_firr_vec_
	.type	gpuirr_firr_vec_, @function
gpuirr_firr_vec_:
.LFB1237:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %r13
	xorl	%esi, %esi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	movslq	(%rdi), %rbx
	leaq	16(%rsp), %rdi
	call	gettimeofday
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	leaq	16(%rsp), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$_ZL15gpuirr_firr_veciPKiPA3_dS2_._omp_fn.1, %edi
	movq	%rbp, 32(%rsp)
	vcvtsi2sdq	24(%rsp), %xmm0, %xmm0
	movl	%ebx, 40(%rsp)
	vmulsd	.LC33(%rip), %xmm0, %xmm0
	movq	%r12, 24(%rsp)
	vcvtsi2sdq	16(%rsp), %xmm1, %xmm1
	movl	$0, 44(%rsp)
	movq	%r13, 16(%rsp)
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovsd	%xmm2, 8(%rsp)
	call	GOMP_parallel
	leaq	16(%rsp), %rdi
	xorl	%esi, %esi
	movslq	44(%rsp), %rax
	addq	%rax, _ZL9num_inter(%rip)
	call	gettimeofday
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	24(%rsp), %xmm1, %xmm1
	vmulsd	.LC33(%rip), %xmm1, %xmm1
	vcvtsi2sdq	16(%rsp), %xmm0, %xmm0
	addq	%rbx, _ZL9num_steps(%rip)
	addq	$1, _ZL9num_fcall(%rip)
	vaddsd	%xmm1, %xmm0, %xmm0
	vsubsd	8(%rsp), %xmm0, %xmm0
	vaddsd	_ZL9time_grav(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, _ZL9time_grav(%rip)
	addq	$56, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1237:
	.size	gpuirr_firr_vec_, .-gpuirr_firr_vec_
	.section	.text.unlikely
.LCOLDE34:
	.text
.LHOTE34:
	.section	.text.unlikely
.LCOLDB35:
	.section	.text.startup,"ax",@progbits
.LHOTB35:
	.p2align 4,,15
	.type	_GLOBAL__sub_I_gpuirr_open_, @function
_GLOBAL__sub_I_gpuirr_open_:
.LFB1239:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE1239:
	.size	_GLOBAL__sub_I_gpuirr_open_, .-_GLOBAL__sub_I_gpuirr_open_
	.section	.text.unlikely
.LCOLDE35:
	.section	.text.startup
.LHOTE35:
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_gpuirr_open_
	.section	.rodata
	.align 32
	.type	_ZZL15gpuirr_set_listiiPKiE19__PRETTY_FUNCTION__, @object
	.size	_ZZL15gpuirr_set_listiiPKiE19__PRETTY_FUNCTION__, 43
_ZZL15gpuirr_set_listiiPKiE19__PRETTY_FUNCTION__:
	.string	"void gpuirr_set_list(int, int, const int*)"
	.align 16
	.type	_ZZL11gpuirr_openiiE19__PRETTY_FUNCTION__, @object
	.size	_ZZL11gpuirr_openiiE19__PRETTY_FUNCTION__, 27
_ZZL11gpuirr_openiiE19__PRETTY_FUNCTION__:
	.string	"void gpuirr_open(int, int)"
	.local	_ZL8vec_tnow
	.comm	_ZL8vec_tnow,16,16
	.local	_ZL9num_steps
	.comm	_ZL9num_steps,8,8
	.local	_ZL9num_fcall
	.comm	_ZL9num_fcall,8,8
	.local	_ZL9num_inter
	.comm	_ZL9num_inter,8,8
	.local	_ZL9time_grav
	.comm	_ZL9time_grav,8,8
	.local	_ZL11num_threads
	.comm	_ZL11num_threads,4,4
	.local	_ZL4nmax
	.comm	_ZL4nmax,4,4
	.local	_ZL4list
	.comm	_ZL4list,8,8
	.local	_ZL4ptcl
	.comm	_ZL4ptcl,8,8
	.local	_ZL7is_open
	.comm	_ZL7is_open,1,1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC1:
	.long	1069547520
	.long	1069547520
	.long	1069547520
	.long	1069547520
	.long	1069547520
	.long	1069547520
	.long	1069547520
	.long	1069547520
	.align 32
.LC2:
	.long	3204448256
	.long	3204448256
	.long	3204448256
	.long	3204448256
	.long	3204448256
	.long	3204448256
	.long	3204448256
	.long	3204448256
	.align 32
.LC3:
	.long	3225419776
	.long	3225419776
	.long	3225419776
	.long	3225419776
	.long	3225419776
	.long	3225419776
	.long	3225419776
	.long	3225419776
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC12:
	.long	1132396544
	.long	1132396544
	.long	1132396544
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC18:
	.long	0
	.long	1093567616
	.align 8
.LC21:
	.long	0
	.long	1078853632
	.align 8
.LC22:
	.long	3894859413
	.long	1041313291
	.section	.rodata.cst16
	.align 16
.LC29:
	.long	1
	.long	1
	.long	1
	.long	1
	.section	.rodata.cst8
	.align 8
.LC33:
	.long	2696277389
	.long	1051772663
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
