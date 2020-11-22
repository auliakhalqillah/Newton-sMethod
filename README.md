# Newton's Method
A Newton’s method is the  fastest method for finding root. This method works by using first derivative of f(x) and an initial root estimation `x`. Therefore, this method require analytical process to determination first derivative of f(x). The root estimation (x) can be calculated by using

![newton equation](https://i.upmath.me/svg/x_%7Bn%2B1%7D%20%3D%20x_n%20-%20%7Bf(x)%5Cover%20f'(x)%7D)

By using this method, the root estimation can be convergence or not convergence. If the root estimation is convergence that means it is close to the expected root of f(x). Otherwise, if the root estimation is not convergence that means it is far to the expected root of f(x), so you have to input another initial root estimation again.

# Example
Given a function of f(x) = x2-2x+1. By using Newton’s Method, set initial root estimation (x) equal to 3. We then get the final root is 1.00024414 (precision in Fortran) by using Newton’s Method, where the f(x) is 0 and convergence to expected root of 1.
```
           Iter	    x             f(x)     	   Info                                                                                     
           1   2.00000000       1.00000000     Not Convergence                                                                                     
           2   1.50000000      0.250000000     Not Convergence                                                                                     
           3   1.25000000       6.25000000E-02 Not Convergence                                                                                     
           4   1.12500000       1.56250000E-02 Not Convergence                                                                                     
           5   1.06250000       3.90625000E-03 Not Convergence                                                                                     
           6   1.03125000       9.76562500E-04 Not Convergence                                                                                     
           7   1.01562500       2.44140625E-04 Not Convergence                                                                                     
           8   1.00781250       6.10351562E-05 Not Convergence                                                                                     
           9   1.00390625       1.52587891E-05 Not Convergence                                                                                     
          10   1.00195312       3.81469727E-06 Not Convergence                                                                                     
          11   1.00097656       9.53674316E-07 Convergence                                                                                         
          12   1.00048828       2.38418579E-07 Convergence                                                                                         
          13   1.00024414       0.00000000     Convergence                                                                                         
          14   1.00024414       0.00000000     Convergence                                                                                         
          15   1.00024414       0.00000000     Convergence                                                                                         
          16   1.00024414       0.00000000     Convergence                                                                                         
          17   1.00024414       0.00000000     Convergence                                                                                         
          18   1.00024414       0.00000000     Convergence                                                                                         
          19   1.00024414       0.00000000     Convergence                                                                                         
          20   1.00024414       0.00000000     Convergence                                                                                         
          ..	...	        ...	     ...                                                                                      
          94   1.00024414       0.00000000     Convergence                                                                                         
          95   1.00024414       0.00000000     Convergence                                                                                         
          96   1.00024414       0.00000000     Convergence                                                                                         
          97   1.00024414       0.00000000     Convergence                                                                                         
          98   1.00024414       0.00000000     Convergence                                                                                         
          99   1.00024414       0.00000000     Convergence                                                                                         
         100   1.00024414       0.00000000     Convergence                                                                                         
```
# Contact
email: auliakhalqillah.mail@gmail.com
# Material Source
[Jeffrey R. Chasnov(2012), Numerical Methods](https://www.math.ust.hk/~machas/numerical-methods.pdf)
