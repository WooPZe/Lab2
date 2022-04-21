global _start

section .data
array dw 1, -2, 3, -4, 5, -6, 7, -8, -9, -10

section .text
_start:
mov ecx, 10
mov esi, array
xor eax, eax
xor ebx, ebx

yslovie:
lodsw
cmp eax, 0
jl invent

cicle:
add ebx, eax
loop yslovie
jmp exit

invent:
neg eax
jmp cicle

exit:
mov eax, 1
mov ebx, 0
int 0x80



