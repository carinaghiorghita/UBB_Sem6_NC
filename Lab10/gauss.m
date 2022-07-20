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
## @deftypefn {} {@var{retval} =} gauss (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-05-12

function x = gauss(A, b)
  [~,n]=size(A);
  
  for p = 1 : n - 1
    # q = position of pivot 
    [none, q] = max(abs(A(p:n, p)));
    q = q + p - 1;
    
    if(A(p,q)==0)
      display("Error");
      return;
    endif
    
    #put max on diagonal
    if (q!=p)
      A([p, q], :) = A([q, p], :);
      b([p, q]) = b([q, p]);
    endif
   
  
    #make zeros under diagonal
    for i = p + 1 : n 
      const = A(i,p)/A(p,p);
      A(i, p : n) = A(i, p : n) - const * A(p, p : n);
      b(i) = b(i) - const * b(p);
    endfor   
  endfor
  
   #A
   
    if(A(n,n)==0)
      display("Error");
      return;
    endif

   % backward elimination
   x = zeros(size(b));
   for i = n : -1: 1
     x(i) = (b(i) - A(i, i + 1 : n) * x(i + 1 : n)) / A(i,i);
   endfor
endfunction
