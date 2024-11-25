section .data
    prompt db "Enter a number: ", 0
    positive_msg db "The number is POSITIVE.", 0
    negative_msg db "The number is NEGATIVE.", 0
    zero_msg db "The number is ZERO.", 0

section .bss
    num resb 4  ; Reserve space for user input

section .text
    global _start

_start:
    ; Display prompt
    mov edx, len prompt
    mov ecx, prompt
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; Read user input
    mov edx, 4  ; Max input length
    mov ecx, num
    mov ebx, 0
    mov eax, 3
    int 0x80

    ; Convert input to integer
    mov eax, [num]   ; Load input into register
    sub eax, '0'     ; Convert ASCII to integer

    ; Classification logic
    cmp eax, 0
    je is_zero
    jl is_negative
    jmp is_positive

is_zero:
    ; Display "ZERO"
    mov edx, len zero_msg
    mov ecx, zero_msg
    jmp display

is_negative:
    ; Display "NEGATIVE"
    mov edx, len negative_msg
    mov ecx, negative_msg
    jmp display

is_positive:
    ; Display "POSITIVE"
    mov edx, len positive_msg
    mov ecx, positive_msg

display:
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; Exit program
    mov eax, 1
    xor ebx, ebx
    int 0x80
