program programa
implicit none
integer:: n, m, q(4)
q = (/1, 2, 3, 4/)
print*, "numero: "
read*, n
if (mod (n,5) == 0) then
print*, n
print*, q
end if
stop
end program
