program p
implicit none
integer:: n, m, q, r, s
q = 1.0 
m = 2.0
r = 0.0
print*, "número:"
read*, n
s = n
print*, "-->", n
do
	if (q > 400.0) then
	exit
	end if
	do	
		if (m == n) then
		exit
		end if
		if (mod (n,m) == 0) then
			r = 1.0
			! else
			! print*, n
		end if	
		m = m + 1.0
	end do		
	if (r == 0.0) then
	print*, n
	end if	
	! if (mod (n,5) == 0) then
	! print*, n
	! end if
	r = 0.0
	m = 2.0	
	q = q + 1.0
	n = n + 1.0
end do
stop
end program
