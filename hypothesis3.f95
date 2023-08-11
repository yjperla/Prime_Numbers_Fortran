! Este programa comprueba que todo número par es la suma de un número primo gemelo y un número primo cualquiera. Esta vez imprime falso si la hipótesis es incorrecta
! Versión mas rápida
program p
implicit none
integer:: a, b, d, e, r, t, u, v, x, m, n
a=3.0
d=3.0
m=2.0
n=2.0
r=0.0
t=0.0
u=0.0
v=0.0
x=0.0
do
if (a > 4000.0) then
exit
end if
b=2.0*a
print*, b
	do
	if (d == b) then
	exit
	end if
		do 
		if (((d)/2) == (n)) then
		exit
		end if
		if (((d)/2) < (n)) then
		exit
		end if
		if (mod ((d),n) == 0) then
			t = 1.0
		end if
		if (mod ((d)+2,n) == 0) then
			u = 1.0
		end if	
		if ((d-2) > n) then
		if (mod ((d-2),(n)) == 0) then
			v = 1.0	
		end if
		end if		
		n = n + 1.0
		end do		
		!		
		if ((b-d)>1.0) then
		if (t==0.0) then
		if (u==0.0) then		
		do	
		if (((b-d)/2) == (m)) then
		exit
		end if
		if (((b-d)/2) < (m)) then
		exit
		end if
		if (mod ((b-d),m) == 0) then
			r = 1.0
		end if	
		m = m + 1.0
		end do
		else
		if (v==0.0) then
			do	
			if (((b-d)/2) == (m)) then
			exit
			end if
			if (((b-d)/2) < (m)) then
			exit
			end if
			if (mod ((b-d),m) == 0) then
			r = 1.0
			end if	
			m = m + 1.0
			end do
		end if		
		end if
		end if
		end if
		!
	if (r==0.0) then
		if ((b-d)>1.0) then
		if (t==0.0) then
		if (u==0.0) then
		x=1.0		
		print*, "-->", d, "+", (b-d)
		else		
		if (v==0.0) then
		x=1.0
		print*, "-->", d, "+", (b-d)
		end if		
		end if
		end if
		end if
	end if
	!if (x==0.0) then
	!print*, "FALSO", b
	!end if
	d=d+1.0
	r=0.0
	t=0.0
	u=0.0
	v=0.0
	m=2.0
	n=2.0
	!x=0.0
	end do
!if (x==0.0) then
!print*, "FALSO", b
!end if
!print*, a
r=0.0
t=0.0
u=0.0
v=0.0
m=2.0
n=2.0
d=3.0
a=a+1.0
x=0.0
end do
print*, "FIN"
end program
