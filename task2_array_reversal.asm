section .data
    prompt db "Enter 5 integers (space-separated): ", 0
    output_msg db "Reversed array: ", 0

section .bss
    array resd 5  ; Space for 5 integers
    temp resd 1   ; Temporary storage for swapping

section .text
    global _start

_start:
    ; Prompt user
    mov edx, len prompt
    mov ecx, prompt
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; Simulate reading integers (hardcoded for simplicity)
    mov dword [array], 1
    mov dword [array+4], 2
    mov dword [array+8], 3
    mov dword [array+12], 4
    mov dword [array+16], 5

    ; Reverse array in place
    mov esi, array        ; Start pointer
    mov edi, array+16     ; End pointer

reverse_loop:
    cmp esi, edi          ; Check if pointers meet or cross
    jge reverse_done

    ; Swap values at esi and edi
    mov eax, [esi]        ; Load esi value into eax
    mov ebx, [edi]        ; Load edi value into ebx
    mov [esi], ebx        ; Store edi value into esi
    mov [edi], eax        ; Store esi value into edi

    ; Move pointers inward
    add esi, 4
    sub edi, 4
    jmp reverse_loop

reverse_done:
    ; Output reversed array (example representation)
    mov edx, len output_msg
    mov ecx, output_msg
    mov ebx, 1
    mov eax, 4
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
