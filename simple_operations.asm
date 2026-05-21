start:
  mov eax, 10
  add eax, 2
  mov edx, 5
  sub eax, edx
  
  xor eax, eax
  xor edx, edx

	int 80h              ; Call the kernel
	mov eax,1            ; The system call for exit (sys_exit)
	mov ebx,0            ; Exit with return "code" of 0 (no error)
	int 80h;
