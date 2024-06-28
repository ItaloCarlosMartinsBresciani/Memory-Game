ImprimeSTR:

	push fr 
	push r0 ;posicao da tela que o primeiro caractere da mensagem será impresso
	push r1	;endereço onde a mensagem inicia (ponteiro para uma string de final "/0")	
	push r2 ;cor da mensagem
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r3, #'\0'	;criterio de parada

   ImprimeStr_Loop:	
		loadi r4, r1			;carrega r4 com o conteúdo de r1 (ponteiro da string)
		cmp r4, r3				;compara com caractere "/0" 
		jeq ImprimeStr_Sai		;se sim, final da subrotina
		add r4, r2, r4			;define a mensagem colorida
		outchar r4, r0			;mostra na posicao da tela o caractere
		inc r0					;próxima posição na tela
		inc r1					;próximo caractere da string a ser impresso
		jmp ImprimeStr_Loop		;imprime mais um caracter no loop
	
   ImprimeStr_Sai:

   	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2		
	pop r1
	pop r0		
	pop fr
	rts

