## Copyright (C) 2022 Carina
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} gaussSeidel (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-05-17

function x = gaussSeidel(A, b, N, eps)
  [m,~]=size(A);

  x0=zeros(m,1);
  x=x0;
  iter=0;
  while iter<=N
    for i=1:m
      firstSum = 0;
      secondSum = 0;
      for j=1:i-1
        firstSum = firstSum + (A(i, j) * x(j));
      endfor
      for j=i+1:m
        secondSum = secondSum + (A(i, j) * x0(j));
      endfor
      x(i)=(b(i) - firstSum - secondSum)/A(i,i); 
    endfor
    
    if norm(x-x0)<eps
      fprintf("Number of iterations (Gauss-Seidel): %d\n", iter);
      return
    endif
   
    x0=x;
    iter=iter+1;
  endwhile
  
  display('Too many iterations')
  
endfunction
