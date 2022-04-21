.data

hello_str:
.string "Hello, world!\n"
.set hello_str_length, .
.text
.globl main
.type main, @function

main:
movl $4, %eax
movl $1, %ebx
movl $hello_str, %ecx
movl $hello_str_length, %edx
int $0x80
movl $1, %eax
movl $0, %ebx
int $0x80
