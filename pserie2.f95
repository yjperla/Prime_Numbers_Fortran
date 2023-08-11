! SE ESTA PROBANDO CIERTA SERIE, LA CUAL MARCA CON LOS NUMEROS PRIMOS DE LA SIGUIENTE FORMA:
! PRIMERO SE MARCAN LA MITAD PUES SON PARES, LUEGO LA TERCERA PARTE DE LA OTRA MITAD PUES
! SON LOS IMPARES MULTIPLOS DE 3, LUEGO LA QUINTA PARTE DE LA MITAD MENOS LA TERCERA PARTE
! DE LA MITAD QUE REPRESENTA LO QUE SOBRA, LUEGO LA SPETIMA PARTE DE LO SOBRANTE, LUEGO LA
! ONCEAVA PARTE DE LO SOBRANTE Y ASI SUCESIVAMENTE BAJO LA HIPOTESIS DE QUE DE ESTA MANERA
! SE MARCAN TODOS LOS NUMEROS, EN ESTE CASA LA SERIE DEBE DAR IGUAL A 1 SI ESTO ES CIERTO.
! v.2.x ES MAS RAPIDO QUE EL ORIGINAL AL MEJOR LA PRUEBA DE PRIMALIDAD COMPROBANDO HASTA LA
! RAIZ CUADRADA DEL NUMERO EN LUGAR DE HASTA EL NUMERO MISMO.
program p
implicit none
double precision:: n, m, q, r, s
double precision:: t, u, v
q = 1.0 
m = 2.0
r = 0.0
t = 1.0
u = 1.0
v = 0.0
print*, "número:"
read*, n
s = n
print*, "-->", n
do
	if (q > 400000.0) then
	exit
	end if
	do	
		if (m > sqrt(n)) then
		exit
		end if
		if (mod (n,m) == 0) then
			r = 1.0
		end if	
		m = m + 1.0
	end do		
	if (r == 0.0) then
	u = t/n
	v = v + u
	t = t - (t/n)
	print*, n
	print*, "resultado:", v
	end if	
	r = 0.0
	m = 2.0	
	q = q + 1.0
	n = n + 1.0
end do
stop
end program
