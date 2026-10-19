# Ma nguon 0 - kiem tra nhanh. Sinh vien: Duong Phuoc Nhat Nam - 23520968
.data
msg:   .asciiz "Xin chao, MARS!\n"
 
.text
.globl main
main:
    li   $v0, 4
    la   $a0, msg
    syscall
    li   $v0, 10
    syscall
