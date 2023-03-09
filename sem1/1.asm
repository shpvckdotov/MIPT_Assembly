%include "st_io.inc"
global _start
section .bss
b resd 1
section .text
_start:

    mov bl, 0
    mov ecx, 16
    GETSIG eax
    
    c1:
        shr ax, 1
        jnc c2
            inc bl
    c2:
        loopne c1
    
    mov [b], ebx
    SIGNINT [b]
    
    FINISH