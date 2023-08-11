program test
implicit none
integer(8):: n, m
real:: a, b
n=2147483647
a=2147483647
! print*, "numero: "
! read*, n
! m= n
m=n+1.0
b=a*a
print*, n
print*, m
print*, a
print*, b
  print *, selected_int_kind(1)
  print *, selected_int_kind(4)
  print *, selected_int_kind(8)
  print *, selected_int_kind(16)
  print *, selected_int_kind(32)
  print *, selected_int_kind(64)
  print *, huge(0_1)
  print *, huge(0_2)
  print *, huge(0_4)
  print *, huge(0_8)
!  print *, huge(0_16)
stop
end program
