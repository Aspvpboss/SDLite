	.file	"main.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "FPS: %.2f\0"
	.text
	.globl	update_text
	.def	update_text;	.scl	2;	.type	32;	.endef
	.seh_proc	update_text
update_text:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movsd	%xmm1, 24(%rbp)
	movsd	24(%rbp), %xmm0
	movq	24(%rbp), %rcx
	leaq	.LC0(%rip), %rdx
	leaq	-48(%rbp), %rax
	movapd	%xmm0, %xmm3
	movq	%rcx, %r9
	movq	%rdx, %r8
	movl	$40, %edx
	movq	%rax, %rcx
	call	snprintf
	leaq	-48(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_Text_UpdateString(%rip), %rax
	call	*%rax
	nop
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "SDK window\0"
.LC4:
	.ascii "SDK1/assets/sample_wav.wav\0"
.LC5:
	.ascii "audio failed to laod\0"
.LC6:
	.ascii "assets/char_spritesheet.png\0"
.LC7:
	.ascii "Error loading player: %s\12\0"
.LC10:
	.ascii "./assets/blue.bmp\0"
.LC11:
	.ascii "Error loading square: %s\12\0"
	.align 8
.LC16:
	.ascii "Ayo jit, these rects are lowkey touching my fellow\0"
.LC17:
	.ascii "These hoodlums ain't touching\0"
.LC18:
	.ascii "colliding on top\0"
.LC19:
	.ascii "colliding on bottom\0"
.LC20:
	.ascii "these jits ain't colliding yo\0"
.LC21:
	.ascii "some collision direction\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$328, %rsp
	.seh_stackalloc	328
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.seh_endprologue
	call	__main
	movl	$1, 32(%rsp)
	movl	$1, %r9d
	movl	$1, %r8d
	movl	$0, %edx
	movl	$0, %ecx
	movq	__imp_SDK_Init(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L3
	movl	$1, %eax
	jmp	.L4
.L3:
	movss	.LC1(%rip), %xmm1
	movl	$4, %ecx
	movq	__imp_SDK_Create_AudioHandler(%rip), %rax
	call	*%rax
	movq	%rax, 176(%rbp)
	leaq	.LC2(%rip), %rax
	movl	$128, %r9d
	movl	$800, %r8d
	movl	$800, %edx
	movq	%rax, %rcx
	movq	__imp_SDK_CreateDisplay(%rip), %rax
	call	*%rax
	movq	%rax, 168(%rbp)
	movl	$144, %ecx
	movq	__imp_SDK_CreateTime(%rip), %rax
	call	*%rax
	movq	%rax, 160(%rbp)
	movq	__imp_SDK_CreateInput(%rip), %rax
	call	*%rax
	movq	%rax, 152(%rbp)
	movb	$-1, %bl
	movl	$-1, %eax
	movb	%al, %bh
	movl	%ebx, %eax
	orl	$16711680, %eax
	movl	%eax, %ebx
	movl	%ebx, %eax
	orl	$-16777216, %eax
	movl	%eax, %ebx
	movq	168(%rbp), %rax
	movl	%ebx, 40(%rsp)
	movl	$5, 32(%rsp)
	movl	$5, %r9d
	movss	.LC3(%rip), %xmm2
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_SDK_CreateText(%rip), %rax
	call	*%rax
	movq	%rax, 144(%rbp)
	movl	$16, %edx
	movl	$16, %ecx
	movq	__imp_SDK_Create_SpriteManager(%rip), %rax
	call	*%rax
	movq	%rax, 136(%rbp)
	movq	176(%rbp), %rax
	movq	8(%rax), %rax
	leaq	.LC4(%rip), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	MIX_LoadAudio
	movq	%rax, 128(%rbp)
	cmpq	$0, 128(%rbp)
	jne	.L5
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	puts
	movl	$1, %eax
	jmp	.L4
.L5:
	movl	$1099956224, %eax
	movl	%eax, %edx
	movq	%r14, %rcx
	movabsq	$-4294967296, %rax
	andq	%rcx, %rax
	orq	%rdx, %rax
	movq	%rax, %r14
	movl	$1098907648, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movq	%r14, %rdx
	movl	%edx, %edx
	orq	%rdx, %rax
	movq	%rax, %r14
	movl	$1095761920, %eax
	movl	%eax, %edx
	movq	%r15, %rcx
	movabsq	$-4294967296, %rax
	andq	%rcx, %rax
	orq	%rdx, %rax
	movq	%rax, %r15
	movl	$1098907648, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movq	%r15, %rdx
	movl	%edx, %edx
	orq	%rdx, %rax
	movq	%rax, %r15
	movl	$1120403456, %eax
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	-72(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movl	$0, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %r8
	movq	%r14, -64(%rbp)
	movq	%r15, -56(%rbp)
	leaq	-64(%rbp), %rcx
	leaq	.LC6(%rip), %rdx
	movq	168(%rbp), %rax
	movq	%rcx, %r9
	movq	%rax, %rcx
	movq	__imp_SDK_Create_AnimatedSprite(%rip), %rax
	call	*%rax
	movq	%rax, 120(%rbp)
	cmpq	$0, 120(%rbp)
	jne	.L6
	call	SDL_GetError
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	call	SDL_Log
	movl	$1, %eax
	jmp	.L4
.L6:
	movq	120(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	movq	__imp_SDK_Sprite_AllocAnimation(%rip), %rax
	call	*%rax
	movl	$1099956224, %eax
	movl	%eax, %edx
	movq	%r12, %rcx
	movabsq	$-4294967296, %rax
	andq	%rcx, %rax
	orq	%rdx, %rax
	movq	%rax, %r12
	movl	$1098907648, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movq	%r12, %rdx
	movl	%edx, %edx
	orq	%rdx, %rax
	movq	%rax, %r12
	movl	$1095761920, %eax
	movl	%eax, %edx
	movq	%r13, %rcx
	movabsq	$-4294967296, %rax
	andq	%rcx, %rax
	orq	%rdx, %rax
	movq	%rax, %r13
	movl	$1098907648, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movq	%r13, %rdx
	movl	%edx, %edx
	orq	%rdx, %rax
	movq	%rax, %r13
	movq	%r12, -64(%rbp)
	movq	%r13, -56(%rbp)
	movsd	.LC8(%rip), %xmm1
	leaq	-64(%rbp), %rdx
	movq	120(%rbp), %rax
	movl	$0, 40(%rsp)
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, 32(%rsp)
	movapd	%xmm1, %xmm3
	movl	$6, %r8d
	movq	%rax, %rcx
	movq	__imp_SDK_Sprite_AddAnimation(%rip), %rax
	call	*%rax
	movq	120(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_SDK_Sprite_SetLoopAnimation(%rip), %rax
	call	*%rax
	movq	120(%rbp), %rax
	movl	$1, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_SDK_Sprite_EnableAnimation(%rip), %rax
	call	*%rax
	movl	$0, %eax
	movl	%eax, %edx
	movq	%rsi, %rcx
	movabsq	$-4294967296, %rax
	andq	%rcx, %rax
	orq	%rdx, %rax
	movq	%rax, %rsi
	movl	$0, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movq	%rsi, %rdx
	movl	%edx, %edx
	orq	%rdx, %rax
	movq	%rax, %rsi
	movl	$1137180672, %eax
	movl	%eax, %edx
	movq	%rdi, %rcx
	movabsq	$-4294967296, %rax
	andq	%rcx, %rax
	orq	%rdx, %rax
	movq	%rax, %rdi
	movl	$1137180672, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movq	%rdi, %rdx
	movl	%edx, %edx
	orq	%rdx, %rax
	movq	%rax, %rdi
	movl	$1092616192, %eax
	movl	%eax, %edx
	movabsq	$-4294967296, %rax
	andq	-80(%rbp), %rax
	orq	%rdx, %rax
	movq	%rax, %rbx
	movl	$0, %eax
	movl	%eax, %eax
	salq	$32, %rax
	movl	%ebx, %edx
	orq	%rdx, %rax
	movq	%rax, %r8
	movq	%rsi, -64(%rbp)
	movq	%rdi, -56(%rbp)
	leaq	-64(%rbp), %rcx
	leaq	.LC10(%rip), %rdx
	movq	168(%rbp), %rax
	movq	%rcx, %r9
	movq	%rax, %rcx
	movq	__imp_SDK_Create_StaticSprite(%rip), %rax
	call	*%rax
	movq	%rax, 112(%rbp)
	cmpq	$0, 112(%rbp)
	jne	.L7
	call	SDL_GetError
	movq	%rax, %rdx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	call	SDL_Log
	movl	$1, %eax
	jmp	.L4
.L7:
	movsd	.LC12(%rip), %xmm0
	movq	120(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	movq	__imp_SDK_Sprite_UpdateScale(%rip), %rax
	call	*%rax
	movq	120(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_Sprite_GetTexture(%rip), %rax
	call	*%rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	SDL_SetTextureScaleMode
	cmpq	$0, 144(%rbp)
	jne	.L8
	movl	$1, %eax
	jmp	.L4
.L8:
	pxor	%xmm0, %xmm0
	movss	%xmm0, 96(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, 100(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, 104(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, 108(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, 80(%rbp)
	movss	.LC15(%rip), %xmm0
	movss	%xmm0, 84(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, 88(%rbp)
	movss	.LC14(%rip), %xmm0
	movss	%xmm0, 92(%rbp)
	leaq	80(%rbp), %rdx
	leaq	96(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_RectCollision(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L9
	leaq	.LC16(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L10
.L9:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	call	puts
.L10:
	leaq	80(%rbp), %rdx
	leaq	96(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_RectCollision_Dir(%rip), %rax
	call	*%rax
	cmpl	$4, %eax
	je	.L11
	cmpl	$4, %eax
	ja	.L12
	testl	%eax, %eax
	je	.L13
	cmpl	$3, %eax
	jne	.L12
	leaq	.LC18(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L14
.L11:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L14
.L13:
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	call	puts
	jmp	.L14
.L12:
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	call	puts
	nop
.L14:
	movb	$1, 191(%rbp)
	jmp	.L15
.L18:
	movl	-48(%rbp), %eax
	cmpl	$256, %eax
	jne	.L16
	movb	$0, 191(%rbp)
.L16:
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	SDL_PollEvent
	testb	%al, %al
	jne	.L18
	movq	152(%rbp), %rax
	movl	$41, %edx
	movq	%rax, %rcx
	movq	__imp_SDK_Keyboard_JustPressed(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L19
	movb	$0, 191(%rbp)
.L19:
	movq	152(%rbp), %rax
	movl	$82, %edx
	movq	%rax, %rcx
	movq	__imp_SDK_Keyboard_JustPressed(%rip), %rax
	call	*%rax
	movq	152(%rbp), %rax
	movl	$30, %edx
	movq	%rax, %rcx
	movq	__imp_SDK_Keyboard_JustPressed(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L20
	movq	160(%rbp), %rax
	movl	$60, 16(%rax)
.L20:
	movq	152(%rbp), %rax
	movl	$31, %edx
	movq	%rax, %rcx
	movq	__imp_SDK_Keyboard_JustPressed(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L21
	movq	160(%rbp), %rax
	movl	$144, 16(%rax)
.L21:
	movq	152(%rbp), %rax
	movl	$32, %edx
	movq	%rax, %rcx
	movq	__imp_SDK_Keyboard_JustPressed(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L22
	movq	160(%rbp), %rax
	movl	$240, 16(%rax)
.L22:
	movq	160(%rbp), %rax
	movzbl	20(%rax), %eax
	testb	%al, %al
	je	.L23
	movq	160(%rbp), %rax
	movsd	8(%rax), %xmm0
	movq	144(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rcx
	call	update_text
.L23:
	movq	168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	SDL_RenderClear
	movq	120(%rbp), %rdx
	movq	136(%rbp), %rax
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	__imp_SDK_SpriteManager_QueueSprite(%rip), %rax
	call	*%rax
	movq	112(%rbp), %rdx
	movq	136(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rcx
	movq	__imp_SDK_SpriteManager_QueueSprite(%rip), %rax
	call	*%rax
	movq	136(%rbp), %rdx
	movq	168(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_Render_SpriteManager(%rip), %rax
	call	*%rax
	movq	144(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_Render_Text(%rip), %rax
	call	*%rax
	movq	168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rcx
	call	SDL_RenderPresent
	movq	160(%rbp), %rdx
	movq	120(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_Sprite_UpdateAnimation(%rip), %rax
	call	*%rax
	movq	160(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_TimeFunctions(%rip), %rax
	call	*%rax
	movq	152(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_Update_Previous_Inputs(%rip), %rax
	call	*%rax
.L15:
	cmpb	$0, 191(%rbp)
	jne	.L16
	movq	168(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_DestroyDisplay(%rip), %rax
	call	*%rax
	movq	$0, 168(%rbp)
	movq	152(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_DestroyInput(%rip), %rax
	call	*%rax
	movq	$0, 152(%rbp)
	movq	160(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_DestroyTime(%rip), %rax
	call	*%rax
	movq	$0, 160(%rbp)
	movq	144(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_DestroyText(%rip), %rax
	call	*%rax
	movq	$0, 144(%rbp)
	movq	136(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_Destroy_SpriteManager(%rip), %rax
	call	*%rax
	movq	$0, 136(%rbp)
	movq	176(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_Destroy_AudioHandler(%rip), %rax
	call	*%rax
	movq	$0, 176(%rbp)
	movq	120(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_DestroySprite(%rip), %rax
	call	*%rax
	movq	$0, 120(%rbp)
	movq	112(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp_SDK_DestroySprite(%rip), %rax
	call	*%rax
	movq	$0, 112(%rbp)
	movq	__imp_SDK_Quit(%rip), %rax
	call	*%rax
	movl	$0, %eax
.L4:
	addq	$328, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC3:
	.long	1101004800
	.align 8
.LC8:
	.long	0
	.long	1075052544
	.align 8
.LC9:
	.long	0
	.long	1074266112
	.align 8
.LC12:
	.long	0
	.long	1075838976
	.align 4
.LC14:
	.long	1092616192
	.align 4
.LC15:
	.long	1091567616
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev8, Built by MSYS2 project) 15.2.0"
	.def	snprintf;	.scl	2;	.type	32;	.endef
	.def	MIX_LoadAudio;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	SDL_GetError;	.scl	2;	.type	32;	.endef
	.def	SDL_Log;	.scl	2;	.type	32;	.endef
	.def	SDL_SetTextureScaleMode;	.scl	2;	.type	32;	.endef
	.def	SDL_PollEvent;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderClear;	.scl	2;	.type	32;	.endef
	.def	SDL_RenderPresent;	.scl	2;	.type	32;	.endef
