# Ma nguon 4 - chuyen cau lenh thanh lenh hop ngu. Sinh vien: Duong Phuoc Nhat Nam - 23520968
.text
.globl main
main:
    addi $s0, $zero, 8       # y = 8
    addi $s1, $zero, 5       # z = 5
    addi $s2, $zero, 3       # w = 3
 
    # >>> cac lenh cho x1, x2, x3 va x4
    # x1 = y + z + w
    add $t0, $s0, $s1	# x1 = y + z
    add $t0, $t0, $s2	# x1 = x1 + w
    
    # x2 = (y + z) - (w + 5)
    add $t1, $s0, $s1	# x2 = y + z
    addi $t5, $s2, 5	# t5 = w + 5
    sub $t1, $t1, $t5	# x2 = x2 - t5
    
    # x3 = y
    add $t2, $0, $s0	# x3 = y + 0
    
    # x4 = z - y
    sub $t3, $s1, $s0 

    li   $v0, 10	# Ket thuc chuong trinh
    syscall
