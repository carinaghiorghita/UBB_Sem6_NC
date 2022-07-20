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
## @deftypefn {} {@var{retval} =} falseposition (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-05-19

function c = false_position(f,a,b,N,eps)
    if f(a)*f(b)<=0
    iter=0;
    while iter<=N
      c=(f(b)*a-f(a)*b)/(f(b)-f(a));
      
      if f(a)*f(c)<0
        b=c;
      else
        a=c;
      endif
      
      if abs(f(c))<eps
        fprintf("Number of iterations (false position): %d\n", iter);
        return
      endif
      
      iter=iter+1;
    endwhile
    
    display('Too many iterations (false position)')
  endif
  
  display("Error (false position)");

endfunction
