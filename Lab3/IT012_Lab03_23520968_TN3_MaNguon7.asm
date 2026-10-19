# Ma nguon 7 - Tong hop ba thang voi du lieu rieng cua sinh vien. Sinh vien: Duong Phuoc Nhat Nam - 23520968
.data
prompt: .asciiz "Nhap chi so (kWh): "
m1:     .asciiz "Thang 1: "
m2:     .asciiz "Thang 2: "
m3:     .asciiz "Thang 3: "
tot:    .asciiz "Tong:    "
nl:     .asciiz "\n"

.text
.globl main
main:
    # Xuat prompt nhap chi so tung thang
    li   $v0, 4              # dich vu 4: in chuoi
    la   $a0, prompt         # doi so: dia chi cua prompt
    syscall
    li   $v0, 4		     # dich vu 4: in chuoi
    la   $a0, nl             # doi so: dia chi cua nl
    syscall
    
    li   $v0, 5              # dich vu 5: doc so nguyen, ket qua o $v0
    syscall
    add  $s0, $v0, $zero     # giu gia tri trong $s0 (reading0)
    li   $v0, 5              # dich vu 5: doc so nguyen, ket qua o $v0
    syscall
    add  $s1, $v0, $zero     # giu gia tri trong $s1 (reading1)
    li   $v0, 5              # dich vu 5: doc so nguyen, ket qua o $v0
    syscall
    add  $s2, $v0, $zero     # giu gia tri trong $s2 (reading2)
    li   $v0, 5              # dich vu 5: doc so nguyen, ket qua o $v0
    syscall
    add  $s3, $v0, $zero     # giu gia tri trong $s3 (reading3)
    
    # Tinh toan tong
    sub $t0, $s1, $s0	# >>> usage1 = reading1 - reading0
    sub $t1, $s2, $s1	# >>> usage2 = reading2 - reading1
    sub $t2, $s3, $s2	# >>> usage3 = reading3 - reading2
    # >>> total = usage1 + usage2 + usage3   (hai lenh add)
    add	$t3, $t0, $t1	# Total = usage1 + usage2
    add $t3, $t3, $t2	# Total = Total + usage3
    
    # Xuat tong chi so tieu thu cua thang 1
    li   $v0, 4                # dich vu 4: in chuoi
    la   $a0, m1               # doi so: dia chi cua m1
    syscall
    li   $v0, 1		       # dich vu 1: in so nguyen
    add  $a0, $0, $t0          # doi so: usage1
    syscall
    li   $v0, 4		       # dich vu 4: in chuoi
    la   $a0, nl               # doi so: dia chi cua nl
    syscall
    # Xuat tong chi so tieu thu cua thang 2
    li   $v0, 4                # dich vu 4: in chuoi
    la   $a0, m2               # doi so: dia chi cua m2
    syscall
    li   $v0, 1		       # dich vu 1: in so nguyen
    add  $a0, $0, $t1          # doi so: usage2
    syscall
    li   $v0, 4		       # dich vu 4: in chuoi
    la   $a0, nl               # doi so: dia chi cua nl
    syscall
    # Xuat tong chi so tieu thu cua thang 3
    li   $v0, 4                # dich vu 4: in chuoi
    la   $a0, m3               # doi so: dia chi cua m3
    syscall
    li   $v0, 1		       # dich vu 1: in so nguyen
    add  $a0, $0, $t2          # doi so: usage3
    syscall
    li   $v0, 4		       # dich vu 4: in chuoi
    la   $a0, nl               # doi so: dia chi cua nl
    syscall
    # Xuat tong chi so tieu thu
    li   $v0, 4                # dich vu 4: in chuoi
    la   $a0, tot              # doi so: dia chi cua tot
    syscall
    li   $v0, 1		       # dich vu 1: in so nguyen
    add  $a0, $0, $t3          # doi so: Total
    syscall
    li   $v0, 4		       # dich vu 4: in chuoi
    la   $a0, nl               # doi so: dia chi cua nl
    syscall
 
    li   $v0, 10
    syscall
    