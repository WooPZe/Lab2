.data
print_format:
.string "Сумма элементов массива с учетом инвертации = %d\n"
arr:
.long 1, -2, 3, -4, 5, -6, 7, -8, 9, -10
arr_end:
.text
.globl main
.type main, @function
main:
movl $0, %ecx
movl $arr, %ebx
movl (%ebx), %eax
jmp bound
start:
cmpl $0, (%ebx)
jg ok
notl (%ebx)
addl $1, (%ebx)
ok:
add (%ebx), %ecx
addl $4, %ebx
movl (%ebx), %eax
bound:
cmpl $arr_end, %ebx
jne start
push %ecx
push $print_format
call printf
addl $8, %esp
movl $0, %ecx
movl $0, %ebx
movl $0, %eax
ret

