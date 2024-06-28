call main
halt
inicializarTabuleiro:
	push r0
	mov r0, sp
	loadn r7, #82
	sub r7, r0, r7
	mov sp, r7
	loadn r7, #1
	sub r7, r0, r7
	storei r7, r1
	loadn r7, #2
	sub r7, r0, r7
	storei r7, r2
	loadn r7, #3
	sub r7, r0, r7
	storei r7, r3
	loadn r7, #4
	sub r7, r0, r7
	storei r7, r4
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	mul r1, r1, r2
	loadn r2, #2
	div r1, r1, r2
	loadn r2, #70
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	loadn r2, #71
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	loadn r2, #72
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #1
	loadn r2, #73
	sub r2, r0, r2
	storei r2, r1
L1:
	loadn r1, #73
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #70
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #6
	and r1, r1, r7
	jz L2
	loadn r1, #2
	loadn r2, #73
	sub r2, r0, r2
	loadi r2, r2
	mul r1, r1, r2
	loadn r2, #1
	sub r1, r1, r2
	loadn r2, #71
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #2
	loadn r2, #73
	sub r2, r0, r2
	loadi r2, r2
	mul r1, r1, r2
	loadn r2, #2
	sub r1, r1, r2
	loadn r2, #72
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #73
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #69
	sub r2, r0, r2
	loadn r3, #71
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #69
	sub r1, r0, r1
	loadn r2, #71
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #69
	sub r2, r0, r2
	loadn r3, #72
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #73
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L1
L2:
L3:
	loadn r1, #0
	loadn r2, #75
	sub r2, r0, r2
	storei r2, r1
L4:
	loadn r1, #75
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #5
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L5
	loadn r1, #0
	loadn r2, #76
	sub r2, r0, r2
	storei r2, r1
L7:
	loadn r1, #76
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #70
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #2
	mul r2, r2, r3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L8
	loadn r1, #76
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #17
	mul r1, r1, r2
	loadn r2, #75
	sub r2, r0, r2
	loadi r2, r2
	add r1, r1, r2
	loadn r2, #70
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #2
	mul r2, r2, r3
	mod r1, r1, r2
	loadn r2, #77
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #69
	sub r1, r0, r1
	loadn r2, #76
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #78
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #69
	sub r1, r0, r1
	loadn r2, #77
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #69
	sub r2, r0, r2
	loadn r3, #76
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #78
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #69
	sub r2, r0, r2
	loadn r3, #77
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #76
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L7
L8:
L9:
	loadn r1, #75
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L4
L5:
L6:
	loadn r1, #0
	loadn r2, #79
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	loadn r2, #80
	sub r2, r0, r2
	storei r2, r1
L10:
	loadn r1, #80
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L11
	loadn r1, #0
	loadn r2, #81
	sub r2, r0, r2
	storei r2, r1
L13:
	loadn r1, #81
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L14
	loadn r1, #69
	sub r1, r0, r1
	loadn r2, #79
	sub r2, r0, r2
	loadi r3, r2
	inc r3
	storei r2, r3
	dec r3
	loadn r2, #1
	mul r3, r3, r2
	add r1, r1, r3
	loadi r1, r1
	loadn r2, #3
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #80
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #81
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #0
	loadn r2, #4
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #80
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #81
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #81
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L13
L14:
L15:
	loadn r1, #80
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L10
L11:
L12:
Lend0:
	mov sp, r0
	pop r0
	rts
exibirTabuleiro:
	push r0
	mov r0, sp
	loadn r7, #26
	sub r7, r0, r7
	mov sp, r7
	loadn r7, #1
	sub r7, r0, r7
	storei r7, r1
	loadn r7, #2
	sub r7, r0, r7
	storei r7, r2
	loadn r7, #3
	sub r7, r0, r7
	storei r7, r3
	loadn r7, #4
	sub r7, r0, r7
	storei r7, r4
	loadn r1, #str0
	call prints
	mov r2, r7
	loadn r1, #7
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L16
	loadn r1, #str1
	call prints
	mov r2, r7
	jmp L17
L16:
	loadn r1, #str2
	call prints
	mov r2, r7
L17:
	loadn r1, #0
	loadn r2, #5
	sub r2, r0, r2
	storei r2, r1
L18:
	loadn r1, #5
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L19
	loadn r1, #5
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #11
	sub r2, r0, r2
	loadn r3, #10
	call itos
	mov r4, r7
	loadn r1, #str3
	call prints
	mov r2, r7
	loadn r1, #11
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #5
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L18
L19:
L20:
	loadn r1, #str4
	call prints
	mov r2, r7
	loadn r1, #str5
	call prints
	mov r2, r7
	loadn r1, #0
	loadn r2, #12
	sub r2, r0, r2
	storei r2, r1
L21:
	loadn r1, #12
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L22
	loadn r1, #12
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #18
	sub r2, r0, r2
	loadn r3, #10
	call itos
	mov r4, r7
	loadn r1, #7
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L24
	loadn r1, #str6
	call prints
	mov r2, r7
	jmp L25
L24:
	loadn r1, #str7
	call prints
	mov r2, r7
L25:
	loadn r1, #18
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #32
	call printc
	mov r2, r7
	loadn r1, #0
	loadn r2, #19
	sub r2, r0, r2
	storei r2, r1
L26:
	loadn r1, #19
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L27
	loadn r1, #4
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #12
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #19
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	not r1, r1
	loadn r7, #4
	and r1, r1, r7
	jz L29
	loadn r1, #3
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #12
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #19
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #25
	sub r2, r0, r2
	loadn r3, #10
	call itos
	mov r4, r7
	loadn r1, #str8
	call prints
	mov r2, r7
	loadn r1, #25
	sub r1, r0, r1
	call prints
	mov r2, r7
	loadn r1, #str9
	call prints
	mov r2, r7
	jmp L30
L29:
	loadn r1, #str10
	call prints
	mov r2, r7
L30:
	loadn r1, #19
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L26
L27:
L28:
	loadn r1, #str11
	call prints
	mov r2, r7
	loadn r1, #str12
	call prints
	mov r2, r7
	loadn r1, #12
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L21
L22:
L23:
Lend1:
	mov sp, r0
	pop r0
	rts
main:
	push r0
	mov r0, sp
	loadn r7, #138
	sub r7, r0, r7
	mov sp, r7
	loadn r1, #1
	loadn r2, #3
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #str13
	call prints
	mov r2, r7
	loadn r1, #str14
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
L31:
	loadn r1, #3
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L32
L34:
	loadn r1, #str15
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r2, #48
	sub r1, r1, r2
	loadn r2, #1
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L36
	loadn r1, #1
	jmp L37
L36:
	loadn r2, #8
	loadn r3, #1
	sub r3, r0, r3
	loadi r3, r3
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #2
	and r2, r2, r7
	mov r1, r2
	jz L37
	loadn r1, #1
L37:
	jnz L34
L35:
L38:
	loadn r1, #str16
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r2, #48
	sub r1, r1, r2
	loadn r2, #2
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #2
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L40
	loadn r1, #1
	jmp L41
L40:
	loadn r2, #8
	loadn r3, #2
	sub r3, r0, r3
	loadi r3, r3
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #2
	and r2, r2, r7
	mov r1, r2
	jz L41
	loadn r1, #1
L41:
	jnz L38
L39:
L42:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	mul r1, r1, r2
	loadn r2, #2
	mod r1, r1, r2
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	not r1, r1
	loadn r7, #4
	and r1, r1, r7
	jz L43
	loadn r1, #str17
	call prints
	mov r2, r7
	loadn r1, #str18
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str19
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r2, #48
	sub r1, r1, r2
	loadn r2, #1
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #str20
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r2, #48
	sub r1, r1, r2
	loadn r2, #2
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	jmp L42
L43:
L44:
	loadn r1, #0
	loadn r2, #136
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #67
	sub r3, r0, r3
	loadn r4, #131
	sub r4, r0, r4
	call inicializarTabuleiro
	mov r5, r7
L45:
	loadn r1, #136
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #2
	sub r3, r0, r3
	loadi r3, r3
	mul r2, r2, r3
	loadn r3, #2
	div r2, r2, r3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L46
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #67
	sub r3, r0, r3
	loadn r4, #131
	sub r4, r0, r4
	call exibirTabuleiro
	mov r5, r7
	loadn r1, #0
	loadn r2, #137
	sub r2, r0, r2
	storei r2, r1
L48:
	loadn r1, #137
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L49
	loadn r1, #str21
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r2, #48
	sub r1, r1, r2
	loadn r2, #132
	sub r2, r0, r2
	storei r2, r1
	call getc
	mov r1, r7
	loadn r2, #48
	sub r1, r1, r2
	loadn r2, #133
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #132
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L57
	loadn r1, #1
	jmp L58
L57:
	loadn r2, #1
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #132
	sub r3, r0, r3
	loadi r3, r3
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #6
	and r2, r2, r7
	mov r1, r2
	jz L58
	loadn r1, #1
L58:
	jz L55
	loadn r1, #1
	jmp L56
L55:
	loadn r2, #133
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #0
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #2
	and r2, r2, r7
	mov r1, r2
	jz L56
	loadn r1, #1
L56:
	jz L53
	loadn r1, #1
	jmp L54
L53:
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #133
	sub r3, r0, r3
	loadi r3, r3
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #6
	and r2, r2, r7
	mov r1, r2
	jz L54
	loadn r1, #1
L54:
	jz L51
	loadn r1, #str22
	call prints
	mov r2, r7
	loadn r1, #str23
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	jmp L52
L51:
	loadn r1, #1
	loadn r2, #137
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #1
	loadn r2, #131
	sub r2, r0, r2
	loadn r3, #132
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #133
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
L52:
	jmp L48
L49:
L50:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #67
	sub r3, r0, r3
	loadn r4, #131
	sub r4, r0, r4
	call exibirTabuleiro
	mov r5, r7
	loadn r1, #0
	loadn r2, #137
	sub r2, r0, r2
	storei r2, r1
L59:
	loadn r1, #137
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L60
	loadn r1, #str24
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r2, #48
	sub r1, r1, r2
	loadn r2, #134
	sub r2, r0, r2
	storei r2, r1
	call getc
	mov r1, r7
	loadn r2, #48
	sub r1, r1, r2
	loadn r2, #135
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #134
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L68
	loadn r1, #1
	jmp L69
L68:
	loadn r2, #1
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #134
	sub r3, r0, r3
	loadi r3, r3
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #6
	and r2, r2, r7
	mov r1, r2
	jz L69
	loadn r1, #1
L69:
	jz L66
	loadn r1, #1
	jmp L67
L66:
	loadn r2, #135
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #0
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #2
	and r2, r2, r7
	mov r1, r2
	jz L67
	loadn r1, #1
L67:
	jz L64
	loadn r1, #1
	jmp L65
L64:
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #135
	sub r3, r0, r3
	loadi r3, r3
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #6
	and r2, r2, r7
	mov r1, r2
	jz L65
	loadn r1, #1
L65:
	jz L62
	loadn r1, #str25
	call prints
	mov r2, r7
	jmp L63
L62:
	loadn r1, #1
	loadn r2, #137
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #1
	loadn r2, #131
	sub r2, r0, r2
	loadn r3, #134
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #135
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
L63:
	jmp L59
L60:
L61:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #67
	sub r3, r0, r3
	loadn r4, #131
	sub r4, r0, r4
	call exibirTabuleiro
	mov r5, r7
	loadn r1, #str26
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	loadn r1, #67
	sub r1, r0, r1
	loadn r2, #132
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #8
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #133
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	loadn r2, #67
	sub r2, r0, r2
	loadn r3, #134
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #135
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L70
	loadn r1, #str27
	call prints
	mov r2, r7
	loadn r1, #136
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L71
L70:
	loadn r1, #str28
	call prints
	mov r2, r7
	loadn r1, #0
	loadn r2, #131
	sub r2, r0, r2
	loadn r3, #132
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #133
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #0
	loadn r2, #131
	sub r2, r0, r2
	loadn r3, #134
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #8
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #135
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
L71:
	loadn r1, #str29
	call prints
	mov r2, r7
	jmp L45
L46:
L47:
	loadn r1, #str30
	call prints
	mov r2, r7
	loadn r1, #str31
	call prints
	mov r2, r7
	loadn r1, #str32
	call prints
	mov r2, r7
	loadn r1, #str33
	call prints
	mov r2, r7
	loadn r1, #str34
	call prints
	mov r2, r7
	loadn r1, #str35
	call prints
	mov r2, r7
	loadn r1, #str36
	call prints
	mov r2, r7
	loadn r1, #str37
	call prints
	mov r2, r7
	loadn r1, #str38
	call prints
	mov r2, r7
	loadn r1, #str39
	call prints
	mov r2, r7
	loadn r1, #str40
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r2, #48
	sub r1, r1, r2
	loadn r2, #3
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #10
	call printc
	mov r2, r7
	loadn r1, #0
	loadn r2, #136
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #67
	sub r3, r0, r3
	loadn r4, #131
	sub r4, r0, r4
	call inicializarTabuleiro
	mov r5, r7
	jmp L31
L32:
L33:
Lend2:
	mov sp, r0
	pop r0
	rts
str0 : string "\n"
str1 : string "       "
str2 : string "          "
str3 : string "   "
str4 : string "\n"
str5 : string "\n"
str6 : string "      "
str7 : string "         "
str8 : string "  "
str9 : string " "
str10 : string "  ? "
str11 : string "\n"
str12 : string "\n"
str13 : string "\n\n         ----Jogo da Memoria----\n\n"
str14 : string "      Aperte uma tecla para comecar.\n"
str15 : string "Digite o numero de linhas (entre 2 e 8): "
str16 : string "Digite o numero de colunas (entre 2 e 8): "
str17 : string "Numero de linhas x numero de colunas deve ser par.\n"
str18 : string "Aperte uma tecla para continuar.\n"
str19 : string "Digite o numero de linhas (entre 2 e 8):"
str20 : string "Digite o numero de colunas (entre 2 e 8):"
str21 : string "Escolha a primeira carta (linha coluna):"
str22 : string "Posicao invalida! Tente novamente.\n"
str23 : string "Aperte uma tecla para continuar.\n"
str24 : string "Escolha a segunda carta (linha coluna): "
str25 : string "Posicao invalida! Tente novamente.\n"
str26 : string "Digite uma tecla para avancar:"
str27 : string "Voce encontrou um par!\n"
str28 : string "Tente novamente.\n"
str29 : string "\n"
str30 : string "Parabens! Voce completou o jogo.\n"
str31 : string "\n"
str32 : string "\n"
str33 : string "         ******   \n"
str34 : string "       *        * \n"
str35 : string "       *  O  O  * \n"
str36 : string "       *    ^   * \n"
str37 : string "       *  \\___/ * \n"
str38 : string "       *        * \n"
str39 : string "         ******   \n"
str40 : string "Deseja jogar novamente?(1- Sim, 0- Nao)"
; getc   : aguarda e le um caracter do teclado
; out r7 : caracter lido
getc:
  push r1

  loadn r1, #255

  getc_loop:
    inchar r7
    cmp r7, r1
    jeq getc_loop

  getc_rts:
    pop r1
    rts

; scans   : aguarde e le uma string do teclado
; in * r1 : string de destino
; in r2   : numero de caracteres a serem lidos
scans:
  push r3
  push r4
  push r5
  push r6

  xor r3, r3, r3
  loadn r4, #13 ; '\r'
  loadn r5, #255  

  scans_loop:
    cmp r2, r3
    jel scans_rts

    scans_loop_inchar:
      inchar r6
      cmp r6, r5
      jeq scans_loop_inchar
    cmp r6, r4
    jeq scans_rts

    storei r1, r6
    inc r1
    dec r2
    jmp scans_loop

  scans_rts:
    storei r1, r3
    
    pop r3
    pop r4
    pop r5
    pop r6
    rts

; puts    : imprime uma string em uma posição da tela
; in * r1 : string
; in r2   : posição
puts:
  push r3
  push r4
  push r5
  push r6
  push r7

  xor r5, r5, r5
  loadn r6, #'\n'
  loadn r7, #40

  puts_loop:
    loadi r3, r1

    cmp r3, r5
    jel puts_rts

    cmp r3, r6
    jne puts_loop_ne
    mod r4, r2, r7
    sub r4, r7, r4
    add r2, r2, r4
    dec r2

    puts_loop_ne:
    outchar r3, r2
    inc r1
    inc r2
    jmp puts_loop

  puts_rts:
    pop r7
    pop r6
    pop r5
    pop r4
    pop r3
    rts

; printc : imprime um caracter na posição do cursor
; in r1  : caracter
printc:
  push r2

  load r2, __cursor
  outchar r1, r2
  inc r2
  store __cursor, r2

  printc_rts:
    pop r2
    rts

; prints  : imprime uma string na posição do cursor
; in * r1 : string
prints:
  push r2

  load r2, __cursor
  call puts
  store __cursor, r2

  prints_rts:
    pop r2
    rts

; sfill : preenche a tela com um caracter
; in r1 : caracter
sfill:
  push r2

  loadn r2, #1200

  sfill_loop:
    dec r2
    outchar r1, r2
    jnz sfill_loop

  sfill_rts:
    pop r2
    rts

__cursor : var #1 
static __cursor, #0
; stoi    : converte uma string para um inteiro, seguindo a base especificada
; in * r1 : string
; in r2   : base
; out r7  : numero
stoi:
  push r3
  push r4
  push r5
  push r6

  xor r4, r4, r4
  loadn r5, #'0'
  loadn r6, #'W'
  xor r7, r7, r7

  stoi_loop:
    loadi r3, r1
    cmp r3, r4
    jeq stoi_rts

    cmp r3, r6
    jeg stoi_loop_eg  
    
    sub r3, r3, r5
    jmp stoi_loop_le
    stoi_loop_eg:
    sub r3, r3, r6
    stoi_loop_le:

    mul r7, r7, r2
    add r7, r7, r3

    inc r1
    jmp stoi_loop

  stoi_rts:
    pop r6
    pop r5
    pop r4
    pop r3
    rts

; itos    : converte um inteiro para uma string, seguindo a base especificada
; in r1   : numero
; in * r2 : string de destino
; in r3   : base
itos:
  push r4
  push r5
  push r6
  push r7
  push r2

  loadn r5, #'0'
  loadn r6, #10
  loadn r7, #39

  itos_loop:
    mod r4, r1, r3

    cmp r4, r6
    jle itos_loop_le
    add r4, r4, r7

    itos_loop_le:
    add r4, r4, r5
    storei r2, r4

    inc r2
    div r1, r1, r3
    jnz itos_loop

  storei r2, r1

  pop r2
  mov r1, r2
  call strrev

  itos_rts:
    pop r7
    pop r6
    pop r5
    pop r4
    rts

; memset  : preenche um bloco de memoria continuo com um valor
; in * r1 : endereco do bloco de memoria
; in r2   : valor a ser escrito
; in r3   : tamanho do bloco
memset:
  push r4

  xor r4, r4, r4

  memset_loop:
    cmp r3, r4
    jel memset_rts

    storei r1, r2

    inc r1
    dec r3
    jmp memset_loop

  memset_rts:
    pop r4
    rts

; memcpy  : copia um bloco de memoria continuo para um endereco de destino
; in * r1 : destino
; in * r2 : origem
; in r3   : tamanho a ser copiado
memcpy:
  push r4
  push r5

  xor r4, r4, r4

  memcpy_loop:
    cmp r3, r4
    jel memcpy_rts

    loadi r5, r2
    storei r1, r5

    inc r1
    inc r2
    dec r3
    jmp memcpy_loop

  memcpy_rts:
    pop r5
    pop r4
    rts

; strcmp  : compara duas strings terminadas em '\0'
; in * r1 : primeira string
; in * r2 : segunda string
; out r7  : 0 caso forem diferentes, 1 caso forem iguais
strcmp:
  push r3
  push r4
  push r5

  xor r3, r3, r3

  strcmp_loop:
    loadi r4, r1
    loadi r5, r2
    
    cmp r4, r3
    jeq strcmp_rts
    cmp r4, r5
    jne strcmp_rts

    inc r1
    inc r2
    jmp strcmp_loop
  
  strcmp_rts:
    sub r7, r4, r5
    
    pop r5
    pop r4
    pop r3
    rts

; strrev  : reverte uma string (inplace)
; in * r1 : string
strrev:
  push r2
  push r3
  push r7

  ; endereco de memoria do fim da string - 1
  ; r1 + (strlen(r1) - 1)
  push r1
  call strlen
  pop r1
  
  dec r7
  add r7, r7, r1

  strrev_loop:
    ; troca a posicao entre os caracteres
    loadi r2, r1
    loadi r3, r7
    storei r1, r3 
    storei r7, r2

    dec r7
    inc r1

    ; r1 >= r7 ? return
    cmp r1, r7
    jle strrev_loop

  strrev_rts:
    pop r7
    pop r3
    pop r2
    rts

; strlen  : calcula o numero de caracteres de uma string (ignorando '\0')
; in * r1 : string
; out r7  : numero de caracteres
strlen:
  push r2 ; caractere da string apontado por r2
  push r3 ; caractere que termina a string ('\0')

  xor r2, r2, r2
  xor r7, r7, r7

  strlen_loop:
    loadi r3, r1

    cmp r3, r2
    jeq strlen_rts
    
    inc r1
    inc r7
    jmp strlen_loop

  strlen_rts:
    pop r3
    pop r2
    rts
