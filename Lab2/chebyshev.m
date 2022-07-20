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
## @deftypefn {} {@var{retval} =} chebyshev (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-03-04

function c = chebyshev (n, x)
  if n == 0
    c = 1;
  elseif n == 1
    c = x;
  else 
    c = 2 * x .* chebyshev(n-1,x) - chebyshev(n-2,x);
  endif
endfunction
