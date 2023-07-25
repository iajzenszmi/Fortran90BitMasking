ian@ian-Latitude-3190-2-in-1:~$ gfortran bitmask.f90
ian@ian-Latitude-3190-2-in-1:~$ gfortran bitgen.f90
ian@ian-Latitude-3190-2-in-1:~$ gfortran bitgen.f90 -o bitgen
ian@ian-Latitude-3190-2-in-1:~$ gfortran bitmask.f90 -o bitmask
ian@ian-Latitude-3190-2-in-1:~$ ./bitgen
0,1,3,4,6,7,8,9,10,11,16,19,22,30
ian@ian-Latitude-3190-2-in-1:~$ ./bitmask
pi = 3.14159274
ian@ian-Latitude-3190-2-in-1:~$ cat bitgen.f90 bitmask.f90
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


























































































program bitmask
implicit none
integer, parameter :: mask = iany(ibset(0, &
[0,1,3,4,6,7,8,9,10,11,16,19,22,30]))
real, parameter :: pi = transfer(mask,0.0)
write(*,'(*(g0))') 'pi = ',pi
end program bitmask
ian@ian-Latitude-3190-2-in-1:~$ sloccount bitgen.f90 bitmask.f90
Have a non-directory at the top, so creating directory top_dir
Adding /home/ian/bitgen.f90 to top_dir
Adding /home/ian/bitmask.f90 to top_dir
Categorizing files.
Finding a working MD5 command....
Found a working MD5 command.
Computing results.


SLOC	Directory	SLOC-by-Language (Sorted)
17      top_dir         f90=17


Totals grouped by language (dominant language first):
f90:             17 (100.00%)




Total Physical Source Lines of Code (SLOC)                = 17
Development Effort Estimate, Person-Years (Person-Months) = 0.00 (0.03)
 (Basic COCOMO model, Person-Months = 2.4 * (KSLOC**1.05))
Schedule Estimate, Years (Months)                         = 0.06 (0.69)
 (Basic COCOMO model, Months = 2.5 * (person-months**0.38))
Estimated Average Number of Developers (Effort/Schedule)  = 0.05
Total Estimated Cost to Develop                           = $ 375
 (average salary = $56,286/year, overhead = 2.40).
SLOCCount, Copyright (C) 2001-2004 David A. Wheeler
SLOCCount is Open Source Software/Free Software, licensed under the GNU GPL.
SLOCCount comes with ABSOLUTELY NO WARRANTY, and you are welcome to
redistribute it under certain conditions as specified by the GNU GPL license;
see the documentation for details.
Please credit this data as "generated using David A. Wheeler's 'SLOCCount'."
ian@ian-Latitude-3190-2-in-1:~$ 

