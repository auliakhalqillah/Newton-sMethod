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
integer :: maxiter
real :: error = 1.0e-6
real :: x,f,df
character(len=100) :: fmt, info



write (*,"(a)",advance='no') "Masukan maksimal pengulangan:"
read *, maxiter

write (*,"(a)",advance='no') "Masukan tebakan awal:"
read *, x

fmt = "(a12,a13,a13,a13)"
write (*,*) ""
write(*,fmt)"ITER","X[ROOT]","F(X)","INFO"
open(unit=1, file='newtonraphson.txt', status='replace')
     iter = 1
     do while (iter <= maxiter)
          x = x - (f(x)/df(x))
          
          if (abs(f(x)) <= error) then
               info = "Convergence"
          else
               info = "Not Convergence"
          end if

          write (*,*) iter, x, f(x), info
          write (1,*) iter, x, f(x), info
          iter = iter + 1
     end do
close(1)
end program 

function f(x)
real :: f, x
f = (x**2)-(2*x)+1
end function

function df(x)
real :: df, x
df = (2*x)-2
end function 


