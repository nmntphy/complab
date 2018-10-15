! Naman Agarwal I15PH001
!  
! Gaussian elimination
real a(10,10)
write(*,*)"Enter the number of equations "
read(*,*)r
write(*,*)"Enter the number of variables "
read(*,*)c
write(*,*)"Enter the coeffecient matrix augmented with the constants:"
do i=1,r,1
    read(*,*)(a(i,j),j=1,c+1,1)
enddo
write(*,*)"The entered matrix is "

do i=1,c+1,1
    if (a(i,i).eq.0.0) then 
        do j=i,r,1
            if (a(j,i).ne.0) then 
                do k=1,c+1,1
                    temp=a(j,k)
                    a(j,k)=a(i,k)
                    a(i,k)=temp
                enddo
                exit
            endif
        enddo
    endif
    if (i<=r) then 
        temp=a(i,i)
        do j=1,c+1,1
            a(i,j)=a(i,j)/temp
        enddo
    endif

    do j=1,r,1
        if (j.ne.i) then
            temp=a(j,i)
            do k=1,c+1,1
                a(j,k)=a(j,k)-a(i,k)*temp
            enddo
        endif
    enddo



enddo    

do i=1,r,1
    write(*,*)(a(i,j),j=1,c+1,1)
enddo
        

end
