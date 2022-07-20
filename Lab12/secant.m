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
## @deftypefn {} {@var{retval} =} secant (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-05-19

function x = secant (f,x0,x1,N,eps)
  x=x1;
  iter=1;
  while iter<=N
    
    x=x1-f(x1)*((x1-x0)/(f(x1)-f(x0)));
    iter=iter+1;
    x0=x1;
    x1=x;
    
    if(abs(x1-x0))<eps
      fprintf("Number of iterations: %d\n", iter);
      return
    endif
  endwhile
  
  display('Too many iterations')
endfunction
