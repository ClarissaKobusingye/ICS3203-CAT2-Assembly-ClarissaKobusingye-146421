section .data
    prompt db "Enter a number for factorial: ", 0
    result_msg db "The factorial is: ", 0

section .bss
    num resd 1
    result resd 1

section .text
    global _start

_start:
    ; Prompt user for input
    mov edx, len prompt
    mov ecx, prompt
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; Simulate input
    mov dword [num], 5

    ; Call factorial subroutine
    mov eax, [num]
    call factorial
    mov [result], eax  ; Save result

    ; Display result (Example: implementation left abstract)
    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80

factorial:
    ; Base case
    cmp eax, 1
    jle factorial_end

    ; Recursive case
    push eax          ; Save current eax
    dec eax           ; Decrement eax
    call factorial    ; Recursive call
    pop ebx           ; Restore original eax
    mul ebx           ; Multiply result

factorial_end:
    ret
