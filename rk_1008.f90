! Naman Agarwal I15PH001
! 08 October 2018
! Figuring the solution of a second order differential equation using RK-4 question 2
real y,z,x,h,k0,k1,k2,k3,l0,l1,l2,l3,c
h=0.05
last=15.0
y=1.0
z=0.0
f=200.0
open(unit=10,file='data2.dat')
do x=0,last,h
	write(10,*)x,y
	k0=h*z
	l0=h*(-f*z/20.0-y)
	k1=h*(z+(l0/2.0))
	l1=h*(-f/20.0*(z+(l0/2.0))-(y+(k0/2.0)))
	k2=h*(z+(l1/2.0))
	l2=h*(-f/20.0*(z+(l1/2.0))-(y+(k1/2.0)))
	k3=h*(z+l2)
	l3=h*(-f/20.0*(z+l2)-(y+k2))
	y=y+((k0+2.0*k1+2.0*k2+k3)/6.0)
	z=z+((l0+2.0*l1+2.0*l2+l3)/6.0)
enddo
close(10)
end
