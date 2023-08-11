! Este programa imprime los números primos gemelos
program p
implicit none
integer:: n, m, q, r, s, t, u
q = 1.0 
m = 2.0
r = 0.0
t = 0.0
u = 0.0
!print*, "número:"
!read*, n
n=3
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
		end if
		if (mod ((n+2),m) == 0) then
			t = 1.0
		end if	
		!if (m > 4.0) then
		!if (mod ((n-2),(m-2)) == 0) then
			!u = 1.0
		!end if	
		!end if		
		m = m + 1.0
	end do		
	if (r == 0.0) then
		if (t == 0.0) then		
		!if (u == 1.0) then		
		print*, n, ",", (n+2)
		!end if
		end if
	end if	
	r = 0.0
	t = 0.0
	u = 0.0
	m = 2.0	
	q = q + 1.0
	n = n + 1.0
end do
stop
end program
