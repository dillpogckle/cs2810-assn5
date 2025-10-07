# Hello World in MIPS
.data
message: .asciiz "Hello, World!\n"

.text
.globl main
main:
    li $v0, 4          # syscall code for print_string
    la $a0, message    # load address of the string
    syscall

    li $v0, 10         # syscall code for exit
    syscall
