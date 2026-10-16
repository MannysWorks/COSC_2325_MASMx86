COMMENT !
 Program: Main.asm
 Description: This is a program that evaluates the expression (10 + 3) - (2 + 4)
 Author: Emmanuel Onotota
 Date: 10/15/2026
! 

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD
INCLUDELIB kernel32.lib

; I'm' using DWORD data type bc it is has a 32 bit storage
.data
Total DWORD ? 
.code

main PROC
    mov eax, 10
    add eax, 3
    mov ebx, 2 
    add ebx, 4
    sub eax, ebx
    mov Total, eax 

    INVOKE ExitProcess, 0
main ENDP

END main