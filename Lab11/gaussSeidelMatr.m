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
## @deftypefn {} {@var{retval} =} gaussSeidelMatr (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-05-17

function x = gaussSeidelMatr(A, b, N, eps)
  [m,~]=size(A);
  x0=zeros(m,1);
  
  D = diag(diag(A));
  L = tril(A,-1);
  U = triu(A,1);
  
  iter=1;
  while iter<=N
    x=(-1)*inv(D+L)*U*x0+inv(D+L)*b;
    if norm(x-x0) < eps 
      return
    endif
    iter = iter+1;
    x0=x;
  endwhile
  display('Too many iterations')

endfunction
