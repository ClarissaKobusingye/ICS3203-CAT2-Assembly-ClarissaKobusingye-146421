section .data
    sensor_val db 75   ; Example sensor value
    motor_status db 0  ; Motor control
    alarm_status db 0  ; Alarm control

section .text
    global _start

_start:
    ; Load sensor value
    mov al, [sensor_val]

    ; Decision-making
    cmp al, 50         ; Moderate level
    jle motor_stop
    cmp al, 100        ; High level
    jg trigger_alarm
    jmp motor_on

motor_stop:
    mov byte [motor_status], 0
    jmp end_program

motor_on:
    mov byte [motor_status], 1
    jmp end_program

trigger_alarm:
    mov byte [alarm_status], 1

end_program:
    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
