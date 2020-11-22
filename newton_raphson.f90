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

integer :: iter
real :: limiterror = 1.0e-6
real :: x,f,df,error,xr,xold
real :: start, finish
character(len=100) :: fmt, info


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
     ! Calculate initial root estimation
     xr = x - (f(x)/df(x))
     xold = x
     x = xr
     error = abs((xr - xold)/xold)
     ! Calculate the next root estimation when error > limit of error
     do while (error > limiterror)
          xr = x - (f(x)/df(x))
          xold = x
          x = xr
          error = abs((xr - xold)/xold)
          ! Write the result on terminal display and save it to file
          write (*,*) iter, x, f(x), info, error
          write (1,*) iter, x, f(x), info, error
          if (abs(f(x)) < limiterror) then
               info = "Convergence"
          else
               info = "Not Convergence"
          end if
          ! update to next iteration
          iter = iter + 1
     end do
close(1)
call cpu_time(finish)
print '("Time = ",f6.5," seconds.")',finish-start
end program 

function f(x)
real :: f, x
f = (x**2)-(2*x)+1
end function

function df(x)
real :: df, x
df = (2*x)-2
end function 


