[org 0x0100]

    jmp start
	
    val: dw 2568
		
	
   ;=================================== CLEAR SCREEN ==============================================
   clrscr:
            pusha 				; all registers pushed on stack
            mov ax, 0xb800			
            mov es, ax 			; Loading the video memory
            xor di,di			; setting di,0
            mov ax,0x0720			; space attribute set
            mov cx,2000 
            cld				; auto incrementing
            rep stosw			; repeating the process
            popa				; pop the entire stack
            ret
          
    display:
            mov ax, 0xb800			
            mov es, ax 
            mov di, 0
        nextloc: 
                mov word[es:di], 3000h                              ;clear next char on screen
                add di, 2
                cmp di, 3200
                jne nextloc

        nextloc2: 
                mov word[es:di], 2000h                            ;clear next char on screen
                add di, 2
                cmp di, 3360
                jne nextloc2

        nextloc3: 
                mov word[es:di], 6000h                            ;clear next char on screen
                add di, 2
                cmp di, 4000
                jne nextloc3
        ret
    ;==================================== Introduction screen ============================================

    intro:
            push bp
            mov bp,sp
            push ax
            push bx
            push cx				;pushing into stack
            push dx
            push es
            push di
            push si

;================= prints square loop and in between writes arr1 and arr2 and on top displays arr =============

            mov ax , 0x0b800		
            mov es , ax
            mov di,1634
            mov al,'*'
            mov ah, 0xcc
    end11:
            mov word[es:di],ax
            add di,2
            cmp di,1714
            jne end11
            mov al,'*'
            mov ah, 0xcc
            mov di,1794
    end22:
            mov al,'*'
            mov ah, 0xcc
            mov word [es:di],ax
            add di,78
            mov word[es:di],ax
            add di,82
            cmp di,2434
            jne end22
            mov di,2434
    end33:
            mov al,'*'
            mov ah, 0xcc
            mov word[es:di],ax
            add di,2
            cmp di,2514
            jne end33

            mov ax , 0x0b800		
            mov es , ax
            mov di,160
            mov ah,0x0e
            mov si,0
    le:
            mov al,[arr+si]
            mov word [es:di],ax
            add si,1
            add di,2
            cmp si,35
            jne le

            mov ax , 0x0b800		
            mov es , ax
            mov di,1978
            mov ah,0x0c
            mov si,0
    le1:
            mov al,[arr1+si]
            mov word [es:di],ax
            add si,1
            add di,2
            cmp si,11
            jne le1

            mov ax , 0x0b800		
            mov es , ax
            mov di,2290
            mov ah,0x05
            mov si,0
    le2:
            mov al,[arr2+si]
            mov word [es:di],ax
            add si,1
            add di,2
            cmp si,25
            jne le2

            pop si
            pop di
            pop es
            pop dx				;clearing entire stack
            pop cx
            pop bx
            pop ax
            pop bp
            ret

	trees1:
		pusha
		mov ax, 0xb800
		mov es, ax
		
		mov di, 3220
		sub di, 160
		add di, 20
		
		mov ax, 0x6020
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		add di, 322
		
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		add di, 322
		
		mov ax, 0x2020
		
		sub di, 320
		sub di, 8
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		add di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		add di, 160
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
	
		popa
		ret

    trees2:
		pusha
		mov ax, 0xb800
		mov es, ax
		
		mov di, 3300
		sub di, 160
		add di, 20
		
		mov ax, 0x6020
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		add di, 322
		
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		add di, 322
		
		mov ax, 0x2020
		
		sub di, 320
		sub di, 8
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		add di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		add di, 160
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
	
		popa
		ret


     trees3:
		pusha
		mov ax, 0xb800
		mov es, ax
		
		mov di, 3250
		sub di, 160
		add di, 20
		
		mov ax, 0x6020
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		add di, 322
		
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		add di, 322
		
		mov ax, 0x2020
		
		sub di, 320
		sub di, 8
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		add di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		add di, 160
		mov [es:di], ax
		add di, 2
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
	
		popa
		ret
    

	Clouds:
	push bp
	mov bp, sp
	push ax
	push es
	push dx
	push di
	
	mov ax, 0xb800
	mov es, ax
	
	mov ax, 80
	mul word [bp+4]
	add ax, [bp+6]
	shl ax, 1
	
	mov di, ax
	
	mov ah, 0x3F
	
	mov al, 0xDB
	stosw


	mov al, 0xDB
		mov [es:di], ax
		sub di, 160
		mov al, 0xDC
		stosw
		add di, 160

	mov al, 0xDB
		mov [es:di], ax
		sub di, 160
		mov al, 0xDC
		stosw
		add di, 160

	mov al, 0xDB
		mov [es:di], ax
		sub di, 160
		stosw
		add di, 160

    mov al, 0xDB
		mov [es:di], ax
		sub di, 160
		mov al, 0xDC
		stosw
		add di, 160


	mov al, 0xDB
	stosw
	
	pop di
	pop dx
	pop es
	pop ax
	pop bp
	
	ret 4

	

	blocks:
		pusha
		
		mov bx, triangleBlockarr
		mov cx, [triangleBlocktotal]
		
		l7:
			push word [bx]
			push word [bx + 2]
			call triangleBlock
			
			add bx, 4
			loop l7
			
		mov bx, standBlockarr
		mov cx, [standBlocktotal]
		
		l5:
			push word [bx]
			push word [bx + 2]
			push word [bx + 4]
			call standBlock
			
			add bx, 6
			loop l5

		mov bx, straightBlockarr
		mov cx, [straightBlocktotal]
		
		l6:
			push word [bx]
			push word [bx + 2]
			push word [bx + 4]
			call straightBlock
			
			add bx, 6
			loop l6


		push 8
		push 19
		push 5
		call bowleft

		push 8
		push 19
		push 5
		call bowright

		push 6
		push 16
		push 5
		call bowstraight


		popa
		ret
	
	standBlock:
		push bp
		mov bp, sp
		push ax
		push bx
		push cx
		push dx
		push si
		push di
		
		mov ax, 0xb800
		mov es, ax
		
		mov ax, 80
		mul word [bp + 6]
		add ax, [bp + 8]
		shl ax, 1
		
		mov di, ax
		
		mov cx, [bp + 4]
		
		mov ax, 0x6020
		
		loop1:
			mov [es:di], ax
			sub di, 160
			loop loop1
		
		pop di
		pop si
		pop dx
		pop cx
		pop bx
		pop ax
		pop bp
		
		ret 6
		


	bowleft:
		push bp
		mov bp, sp
		push ax
		push bx
		push cx
		push dx
		push si
		push di
		
		mov ax, 0xb800
		mov es, ax
		
		mov ax, 80
		mul word [bp + 6]
		add ax, [bp + 8]
		shl ax, 1
		
		mov di, ax
		
		mov cx, [bp + 4]
		
		mov ax, 0x7020
		
		loop3:
			mov [es:di], ax
			sub di, 160
			sub di,2
			loop loop3
		
		pop di
		pop si
		pop dx
		pop cx
		pop bx
		pop ax
		pop bp
		
		ret 6
		

	bowright:
		push bp
		mov bp, sp
		push ax
		push bx
		push cx
		push dx
		push si
		push di
		
		mov ax, 0xb800
		mov es, ax
		
		mov ax, 80
		mul word [bp + 6]
		add ax, [bp + 8]
		shl ax, 1
		
		mov di, ax
		
		mov cx, [bp + 4]
		
		mov ax, 0x7020
		
		loop2:
			mov [es:di], ax
			sub di, 160
			add di,2
			loop loop2
		
		pop di
		pop si
		pop dx
		pop cx
		pop bx
		pop ax
		pop bp
		
		ret 6
	

	bowstraight:
		push bp
		mov bp, sp
		push ax
		push bx
		push cx
		push dx
		push si
		push di
		
		mov ax, 0xb800
		mov es, ax
		
		mov ax, 80
		mul word [bp + 6]
		add ax, [bp + 8]
		shl ax, 1
		
		mov di, ax
		
		mov cx, [bp + 4]
		
		mov ax, 0x0020
		
		rep stosw
		
		pop di
		pop si
		pop dx
		pop cx
		pop bx
		pop ax
		pop bp
		
		ret 6

	straightBlock:
		push bp
		mov bp, sp
		push ax
		push bx
		push cx
		push dx
		push si
		push di
		
		mov ax, 0xb800
		mov es, ax
		
		mov ax, 80
		mul word [bp + 6]
		add ax, [bp + 8]
		shl ax, 1
		
		mov di, ax
		
		mov cx, [bp + 4]
		
		mov ax, 0x6020
		
		rep stosw
		
		pop di
		pop si
		pop dx
		pop cx
		pop bx
		pop ax
		pop bp
		
		ret 6
		
	triangleBlock:
		push bp
		mov bp, sp
		push ax
		push bx
		push cx
		push dx
		push si
		push di
		
		mov ax, 0xb800
		mov es, ax
		
		mov ax, 80
		mul word [bp + 4]
		add ax, [bp + 6]
		shl ax, 1
		
		mov di, ax
		
		mov ax, 0x0020
		
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		
		add di, 482
		
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		
		add di, 322
		
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		
		add di, 322
		
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		
		add di, 162
		
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		
		add di, 162
		
		stosw
		stosw
		
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		
		add di, 162
		
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		
		add di, 162
		
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		
		add di, 322
		
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		
		add di, 322
		
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		mov [es:di], ax
		sub di, 160
		
		pop di
		pop si
		pop dx
		pop cx
		pop bx
		pop ax
		pop bp
		
		ret 4


	drawbirds:

	   push bp
		mov bp, sp
		push ax
		push bx
		push cx
		push dx
		push si
		push di
		
		mov ax, 0xb800
		mov es, ax
		
		mov ax, 80
		mul word [bp + 4]
		add ax, [bp + 6]
		shl ax, 1
		
		mov di, ax
	
		mov ax, 0x4020
		
		mov [es:di], ax
		add di,2
		mov [es:di], ax
		sub di, 162
		mov[es:di],ax
		sub di,2
		mov ax,0x0020
		mov[es:di],ax
		mov ax,0x772A
		mov[es:di],ax
		
		pop di
		pop si
		pop dx
		pop cx
		pop bx
		pop ax
		pop bp
		ret 4


  
    drawBird:
		push bp
		mov bp, sp
		push ax
		push es
		push dx
		push di
	
		mov ax, 0xb800
		mov es, ax
	
		mov ax, 80
		mul word [bp + 4]
		add ax, [bp + 6]
		shl ax, 1
	
		mov di, ax
	
		mov ax, 0x4020
	    

		mov [es:di], ax
		add di,2
		mov [es:di], ax
		sub di, 160
		mov[es:di],ax
		sub di,2
		mov[es:di],ax
		
	
		add di, 4
	
		mov ax, 0x0F08
	
	
		stosw
	
		add di, 158
	
		mov ah, 0x3E
	
	    mov al, 0xDF
	
		stosw
	   
	   mov al, 0xDF
	
		stosw
	
		
		pop di
		pop dx
		pop es
		pop ax
		pop bp
	
		ret 4

      drawPig:
		push bp
		mov bp, sp
		push ax
		push es
		push dx
		push di
	
		mov ax, 0xb800
		mov es, ax
	
		mov ax, 80
		mul word [bp + 4]
		add ax, [bp + 6]
		shl ax, 1
	
		mov di, ax
	
		mov ax, 0x5020
	    

		mov [es:di], ax
		add di,2
		mov [es:di], ax
		sub di, 160
		mov[es:di],ax
		sub di,2
		mov[es:di],ax
		
	
		add di, 4
	
		mov ax, 0x0F08
	
	
		stosw
	
		add di, 158
	
		mov ah, 0x3E
	
	    mov al, 0xDF
	
		stosw
	   
	   mov al, 0xDF
	
		stosw
	
		
		pop di
		pop dx
		pop es
		pop ax
		pop bp
	
		ret 4

   

    castle:
		push ax
		push es
		push di
		push cx
		push bx
		mov ax,0xb800
		mov es,ax
		mov word di,[castle_pos]
		sub di,800
		mov cx,2
		mov bx,0
		mov ax,0x080a ; first half of the castle
		
		;mov ax,0x880f for blinking

	lap1:
		mov [es:di],ax
		add di,160
		loop lap1
		mov cx,4

	lap2:
		
		mov [es:di],ax
		add di,2
		add bx,1
		cmp bx,5
		jne lap2
		add di,150
		mov bx,0
		loop lap2
		mov di,[castle_pos]
		sub di,1120
		add di,10
		mov cx,6

	lap3:
		mov [es:di],ax
		add di,2
		mov [es:di],ax
		add di,2
		mov [es:di],ax
		add di,156
		loop lap3
		mov cx,2

	lap4:
		
		mov [es:di],ax
		add di,2
		mov [es:di],ax
		add di,2
		mov [es:di],ax
		add di,152
		loop lap4
		mov di,[castle_pos]
		sub di,480
		add di,16
		mov ax,0x080a ; for next half of the castle
		mov cx,4

	lap5:
		mov [es:di],ax
		add di,2
		mov [es:di],ax
		add di,2
		mov [es:di],ax
		add di,2
		mov [es:di],ax
		add di,154
		loop lap5
		mov di,[castle_pos]
		sub di,800
		add di,24
		mov cx,6

	lap6:
		mov [es:di],ax
		add di,160
		loop lap6

		pop bx
		pop cx
		pop di
		pop es
		pop ax
		ret



	printstr:
	         push bp
			 mov bp,sp
			 push es
			 push ax
			 push cx
			 push si
			 push di
			 mov ax,0xb800
			 mov es,ax
			 mov al,80
			 mul byte [bp+10]
			 add ax,[bp+12]
			 shl ax,1
			 mov di,ax
			 mov si,[bp+6]
			 mov cx,[bp+4]
			 mov ah,[bp+8]

			 cld
	nextchar:
	         lodsb
			 stosw
			 loop nextchar

			 pop di
			 pop si
			 pop cx
			 pop ax
			 pop es
			 pop bp
			 ret 10

	myISR9:
			push ax
			
			in al, 0x60
			
			cmp al, 16
			je quitcode
			
			cmp al, 0x4b
			je readymove
			
			cmp al, 0x4d
			je releasemove
			
			cmp al, 0x50
			je movedown
			
			cmp al, 0x48
			je moveup
			
			jmp end1
			
		readymove:
			mov byte [can_release], 1
			cmp word [bird], 7
			jne end1
			
			dec word [bird]
			call backgroundandforeground
			jmp end1
			
		releasemove:
			mov byte [release], 1
			jmp end1
			
		movedown:
			inc word [bird+2]
			call backgroundandforeground
			jmp end1
			
		moveup:
			dec word [bird + 2]
			call backgroundandforeground
			jmp end1
			
		quitcode:
			mov byte [gameloop], 0
			
		end1:
			mov al, 0x20
			out 0x20, al
			
			pop ax
			
			jmp far [cs:oldISR9]
			iret
	
	backgroundandforeground:
           
		   pusha
            
            call clrscr
            call display
			call trees1
            call trees2
			call trees3
			push 2
			push 3
			call Clouds
			push 21
			push 4 
			call Clouds
			push 40
			push 3
			call Clouds
			push 55
			push 4
			call Clouds

			push 70
			push 3
			call Clouds

			call blocks

			push word [bird]
			push word [bird + 2]
			call drawBird

			mov bx, pigarr
			mov cx, [pigtotal]
			
		l4:
			push word [bx]
			push word [bx + 2]
			call drawPig
			
			add bx, 4
			loop l4
			
			
			cmp byte [show_castle], 1
			jne restprinting
			
			call castle

		restprinting:
			push 63
			push 1
			mov ax,2
			push ax
			mov ax,score
			push ax
			push word[length]
			call printstr
		
			popa
			ret
			
	birdmove:
			pusha
			
			cmp byte [can_release], 1
			jne exit2
			
			dec word [tries]
		l2:
			inc word [bird]
			call sleep
			call sleep
			call sleep
			call sleep
			
			call backgroundandforeground
			call checkcollision
			cmp byte [iscollision], 0
			je l2
			
		exit2:
			popa
			ret
			
	checkcollision:
			pusha
			
			cmp word [bird], 76
			jge near endofscreen
			
			mov cx, [pigtotal]
			mov bx, pigarr
			
		l3:

			mov ax, [bird]
			add ax, 3
			
			cmp ax, [bx]
			jne endl3
			
			mov ax, [bird+2]
			mov dx, ax
			sub dx, 2
			
			mov si, [bx + 2]
			mov di, si
			sub di, 2
			
			cmp si, ax
			jnle innerl3
			
			cmp si, dx
			jge collision
			
		innerl3:
			
			cmp di, ax
			jnle endl3
			
			cmp di, dx
			jge collision
			
		endl3:
			add bx, 4

			loop l3
			
		call standBlockcheck
		call straightBlockcheck
		call triangleBlockcheck
		call castlecheck
		cmp byte [iscollision], 1
		jne end3
		
		cmp word [scoreval], 9
		je add10
		
		add word [scoreval], 9
		
		jmp end3
		
		add10:
			add word [scoreval], 10
			jmp end3
		
		collision:
			mov word [bx], -1
			mov word [bx + 2], -1
			
			cmp word [scoreval], 9
			je add10_2
			
			add word [scoreval], 9
			jmp endofscreen
			
			add10_2:
				add word [scoreval], 10
				
		endofscreen:
			mov byte [iscollision], 1
			
		end3:
			popa
			ret
			
	standBlockcheck:
			pusha
			
			mov cx, [standBlocktotal]
			mov bx, standBlockarr
			
		l31:

			mov ax, [bird]
			add ax, 3
			
			cmp ax, [bx]
			jne endl31
			
			mov ax, [bird+2]
			mov dx, ax
			sub dx, 2
			
			mov si, [bx + 2]
			mov di, si
			sub di, [bx + 4]
			
			cmp si, ax
			jnle innerl31
			
			cmp si, dx
			jge collision1
			
		innerl31:
			
			cmp di, ax
			jnle endl31
			
			cmp di, dx
			jge collision1
			
		endl31:
			add bx, 6

			loop l31
			
		
		jmp end31
		
		collision1:
			mov word [bx], -1
			mov word [bx + 2], -1
			mov byte [iscollision], 1
			
		end31:
			popa
			ret
			
	straightBlockcheck:
			pusha
			
			mov cx, [straightBlocktotal]
			mov bx, straightBlockarr
			
		l32:

			mov ax, [bird]
			add ax, 3
			
			cmp ax, [bx]
			jne endl32
			
			mov ax, [bird+2]
			mov dx, ax
			sub dx, 2
			
			mov si, [bx + 2]
			mov di, si
			sub di, [bx + 4]
			
			cmp si, ax
			jnle innerl32
			
			cmp si, dx
			jge collision2
			
		innerl32:
			
			cmp di, ax
			jnle endl32
			
			cmp di, dx
			jge collision2
			
		endl32:
			add bx, 6

			loop l32
			
		
		jmp end32
		
		collision2:
			mov word [bx], -1
			mov word [bx + 2], -1
			mov byte [iscollision], 1
			
		end32:
			popa
			ret
			
	triangleBlockcheck:
			pusha
			
			mov cx, [triangleBlocktotal]
			mov bx, triangleBlockarr
			
		l33:

			mov ax, [bird]
			add ax, 2
			
			cmp ax, [bx]
			jne endl33
			
			mov ax, [bird+2]
			mov dx, ax
			sub dx, 2
			
			mov si, [bx + 2]
			mov di, si
			sub di, 4
			
			cmp si, ax
			jnle innerl33
			
			cmp si, dx
			jge collision3
			
		innerl33:
			
			cmp di, ax
			jnle endl33
			
			cmp di, dx
			jge collision3
			
		endl33:
			add bx, 4

			loop l33
			
		
		jmp end34
		
		collision3:
			mov word [bx], -1
			mov word [bx + 2], -1
			mov byte [iscollision], 1
			
		end34:
			popa
			ret
		
		
	castlecheck:
			pusha
			
			mov ax, [bird]
			add ax, 2
			
			cmp ax, [castle_x_y1_y2]
			jne endc
			
			mov ax, [bird+2]
			mov dx, ax
			sub dx, 2
			
			mov si, [castle_x_y1_y2 + 2]
			mov di, [castle_x_y1_y2 + 4]
			
			cmp ax, si
			jnle nextc
			
			cmp ax, di
			jge collisionc
			
		nextc:
			
			cmp dx, si
			jnle endc
			
			cmp dx, di
			jge collisionc
			
		
		jmp endc
		
		collisionc:
			mov byte [show_castle], 0
			mov byte [iscollision], 1
			
		endc:
			popa
			ret
		
	timer: 
			push ax
			
			inc word [cs:tickcount]

			mov al, 0x20
			out 0x20, al 
			
			pop ax
			
			iret 
			
	runclock:
			pusha
			
			cmp word [tickcount], 18
			jge clocksecond
			
			jmp runclock_end
			
		clocksecond:
			mov word [tickcount], 0
			inc word [clock]
			
			cmp word [clock], 30
			jne runclock_end
			
			dec word [tries]
			mov word [clock], 0
			
			mov byte [release], 0
			mov byte [can_release], 0
			mov word [bird], 7
			mov word [bird + 2], 15
			mov byte [iscollision], 0
			call backgroundandforeground
			
		runclock_end:
			
			popa
			ret
				
	sleep:
			pusha
			mov cx, 0xFFFF
			delay:
				loop delay
				
			popa
			ret
			
	printnum: 
			push bp
			mov bp, sp
			push es
			push ax
			push bx
			push cx
			push dx
			push di
			mov ax, 0xb800
			mov es, ax ; point es to video base
			mov ax, [bp+4] ; load number in ax
			mov bx, 10 ; use base 10 for division
			mov cx, 0 ; initialize count of digits
		nextdigit: 
			mov dx, 0 ; zero upper half of dividend
			div bx ; divide by 10
			add dl, 0x30 ; convert digit into ascii value
			push dx ; save ascii value on stack
			inc cx ; increment count of values
			cmp ax, 0 ; is the quotient zero
			jnz nextdigit ; if no divide it again
			mov di, 0 ; point di to top left column
			nextpos: pop dx ; remove a digit from the stack
			mov dh, 0x07 ; use normal attribute
			mov [es:di], dx ; print char on screen
			add di, 2 ; move to next screen location
			loop nextpos ; repeat for all digits on stack
			pop di
			pop dx
			pop cx
			pop bx
			pop ax
			pop es
			pop bp
			ret 2

	printnum1: 
			push bp
			mov bp, sp
			push es
			push ax
			push bx
			push cx
			push dx
			push di
			mov ax, 0xb800
			mov es, ax ; point es to video base
			mov ax, [bp+4] ; load number in ax
			mov bx, 10 ; use base 10 for division
			mov cx, 0 ; initialize count of digits
		nextdigit1: 
			mov dx, 0 ; zero upper half of dividend
			div bx ; divide by 10
			add dl, 0x30 ; convert digit into ascii value
			push dx ; save ascii value on stack
			inc cx ; increment count of values
			cmp ax, 0 ; is the quotient zero
			jnz nextdigit1 ; if no divide it again
			mov di, 300 ; point di to top left column
			nextpos1: pop dx ; remove a digit from the stack
			mov dh, 0x07 ; use normal attribute
			mov [es:di], dx ; print char on screen
			add di, 2 ; move to next screen location
			loop nextpos1 ; repeat for all digits on stack
			pop di
			pop dx
			pop cx
			pop bx
			pop ax
			pop es
			pop bp
			ret 2
			
	start:
			call clrscr
            call intro			; displays introduction screen
            mov ah,0
            int 0x16 			; keyboard activated
            mov dx,0
			call backgroundandforeground
			
			xor ax, ax
			mov es, ax
			
			mov ax, [es:9*4]
			mov [oldISR9], ax
			mov ax, [es:9*4+2]
			mov [oldISR9+2], ax
			
			mov ax, [es:8*4]
			mov [oldISR8], ax
			mov ax, [es:8*4+2]
			mov [oldISR8+2], ax
			
			cli
			mov word [es:9*4], myISR9
			mov [es:9*4+2], cs
			mov word [es:8*4], timer
			mov [es:8*4+2], cs
			sti
			
			l1:
				call runclock
				push word [clock]
				call printnum
				push word[scoreval]
				call printnum1
				cmp byte [release], 1
				je releasebird
				cmp byte [gameloop], 1
				jne exit
				
				cmp word [tries], 0
				jne l1
			
			xor ax, ax
			mov es, ax
			mov ax, [oldISR9]
			mov bx, [oldISR9+2]
			
			cli
			mov [es:9*4], ax
			mov [es:9*4+2], bx
			sti
			
			mov ax, [oldISR8]
			mov bx, [oldISR8+2]
			
			cli
			mov [es:8*4], ax
			mov [es:8*4+2], bx
			
			sti
	exit:

    mov ax, 0x4c00 
    int 0x21
	
		releasebird:
			call birdmove
			mov byte [release], 0
			mov byte [can_release], 0
			mov word [bird], 7
			mov word [bird + 2], 15
			mov byte [iscollision], 0
			mov word[clock],0
			call backgroundandforeground
			jmp l1

    arr: db 'Haroon,Khuzaima,Aroob ',0
    arr1: db 'ANGRY BIRDS !',0
    arr2: db 'Press Any key to Continue',0
	score : db 'SCORE:',0
	length: dw 8
	castle_pos: dw 3287
	show_castle : db 1
	bird : dw 7, 15
	release : db 0
	can_release : db 0
	gameloop : db 1
	oldISR9 : dd 0
	oldISR8 : dd 0
	iscollision : db 0 
	
	pigarr : dw 68, 19, 72, 19, 70, 7, 70, 11, 55, 14, 43, 14, 49, 12
	pigtotal : dw 7
	standBlockarr : dw 66, 19, 3, 76, 19, 3, 66, 11, 3, 76, 11, 3, 66, 8, 3, 76, 8, 3
	standBlocktotal : dw 6
	straightBlockarr : dw 65, 16, 14, 65, 12, 14, 65, 8, 14
	straightBlocktotal : dw 3
	triangleBlockarr : dw 66, 15
	triangleBlocktotal : dw 1
	castle_x_y1_y2 : dw 43, 20, 12
	scoreval : dw 0
	
	tickcount : dw 0
	clock : dw 0
	tries : dw 10