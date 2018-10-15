! Naman Agarwal I15PH001
! 08 October 2018
! Solving differential equations numerically using Ranga-Kutta Method of 4th order
real y,z,x,h,k0,k1,k2,k3,l0,l1,l2,l3
open(unit=10,file='data1.dat')
open(unit=20,file='data2.dat')
write(*,*)"Press 1. To solve the first question"
write(*,*)"Press 2. To solve the second question"
write(*,*)"Press 3. To solve the third question"
read(*,*)ch
select case(ch)
case (1)
    h=0.05
    last=10.0
    y=4.0
    z=0.0
    do x=0,last,h
        write(10,*)x,y,z
        k0=h*z
        l0=h*(-0.5*z-7.0*y)
        k1=h*(z+(l0/2.0))
        l1=h*(-0.5*(z+(l0/2.0))-7.0*(y+(k0/2.0)))
        k2=h*(z+(l1/2.0))
        l2=h*(-0.5*(z+(l1/2.0))-7.0*(y+(k1/2.0)))
        k3=h*(z+l2)
        l3=h*(-0.5*(z+l2)-7.0*(y+k2))
        y=y+((k0+2.0*k1+2.0*k2+k3)/6.0)
        z=z+((l0+2.0*l1+2.0*l2+l3)/6.0)
    enddo
    write(*,*)"The output is generated in the file data1.dat."
case (2)
    h=0.05
    last=15.0
    y=1.0
    z=0.0
    f=40.0
    do x=0,last,h
        write(20,*)x,y
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
    write(*,*)"The output is generated in the file data2.dat."
case (3)
    h=-0.05
    last=0.00
    y=0.00
    do x=2.75,last-h,h
        k0=h*(-5555.55*x**(0.5)+1851.85*x**(1.5))
        k1=h*(-5555.55*(x+h/2)**(0.5)+1851.85*(x+h/2)**(1.5))
        k2=k1
        k3=h*(-5555.55*(x+h)**(0.5)+1851.85*(x+h)**(1.5))
        y=y+((k0+2.0*k1+2.0*k2+k3)/6.0)
    enddo
    write(*,*)"The value of time at which the tank will be empty is:(in seconds)",y



close(10)
close(20)
end
