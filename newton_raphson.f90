! HOW TO COMPILE THROUGH COMMAND LINE (CMD OR TERMINAL)
! gfortran -c newton_raphson.f95
! gfortran -o newton_raphson newton_raphson.o
!
! The program is open source and can use to numeric study purpose.
! The program was build by Aulia Khalqillah,S.Si., M.Si
!
! email: auliakhalqillah.mail@gmail.com
! ==============================================================================
program newton
implicit none

integer :: iter,info
real :: limiterror = 1.0e-6
real :: x,f,df,error,xr,xrold
real :: start, finish
character(len=100) :: fmt


write(*,*)""
write(*,*)"---------------------------------"
write(*,*)"NEWTON'S METHOD - FINDING ROOT"
write(*,*)"---------------------------------"
write(*,*) ""

write (*,"(a)",advance='no') "Masukan tebakan awal:"
read *, x

fmt = "(a12,a13,a13,a13)"
write (*,*) ""
write(*,fmt)"ITER","X[ROOT]","F(X)","INFO"
call cpu_time(start)
! start process
open(unit=1, file='newtonraphson.txt', status='replace')
     iter = 1
     info = 0
     ! Calculate initial root estimation
     xr = x - (f(x)/df(x))
     xrold = x
     x = xr
     error = abs((xr - xrold)/xr) * 100
     if ((error < limiterror) .or. isnan(xr)) then
          x = xrold
          info = 1
          error = 0
          write (*,*) iter, x, f(x), info, error
          write (1,*) iter, x, f(x), info, error
     else 
          ! Calculate the next root estimation when error > limit of error
          do while (error > limiterror)
               xr = x - (f(x)/df(x))
               xrold = x
               x = xr
               error = abs((xr - xrold)/xr) * 100
               if (abs(f(x)) < limiterror) then
                    info = 1
               else
                    info = 0
               end if
               ! Write the result on terminal display and save it to file
               if (isnan(error)) then
                    exit
               else
                    write (*,*) iter, x, f(x), info, error
                    write (1,*) iter, x, f(x), info, error
                    ! update to next iteration
                    iter = iter + 1
               end if
          end do
     end if
close(1)
call cpu_time(finish)
print '("Time = ",f12.8," seconds.")',finish-start
end program 

function f(x)
real :: f, x
f = (x**2)-(2*x)+1
end function

function df(x)
real :: df, x
df = (2*x)-2
end function 


