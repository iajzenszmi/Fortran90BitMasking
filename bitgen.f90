program bitgen
implicit none
real pi
integer mask
integer i
pi = 4*atan(1.0)
mask = transfer(pi,mask)
write(*,'(*(i0:","))') pack([(i,i=0,bit_size(mask)-1)], &
[(btest(mask,i),i=0,bit_size(mask)-1)])
end program bitgen 
