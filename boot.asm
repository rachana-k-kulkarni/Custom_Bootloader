org 0x7C00           ; BIOS loads the program here
bits 16              ; Set the processor to 16-bit mode

start:
    cli              ; Disable interrupts (we're in 16-bit mode)
    mov si, welcm    ; SI points to the custom data (message)
    mov ah, 0x0E     ; Tell BIOS to print characters (teletype function)

.loop:
    lodsb            ; Load byte at DS:SI into AL, and increment SI
    or al, al        ; Check if AL is zero (null-terminator)
    jz halt          ; If zero, jump to halt (end)
    int 0x10         ; Call BIOS interrupt to print character in AL
    jmp .loop        ; Repeat for the next character

halt:
    hlt              ; Halt the CPU

welcm: 
    db "System initialized. Welcome aboard!"  ; Custom message to display

times 510 - ($-$$) db 0   ; Fills remaining bytes to make 512 bytes (boot sector size)
dw 0xAA55          ; Boot sector magic number (required for boot)
