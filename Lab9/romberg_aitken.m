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
## @deftypefn {} {@var{retval} =} romberg_aitken (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-04-30

function T = romberg_aitken(f, i, prev, a, b, eps)
  current = linspace(0, 0, i);
  current(1) = repeated_trapezium(f, a, b, i);
  
  for j = 2 : i
    current(j) = (4^(-j) * prev(j - 1) - current(j - 1)) / (4^(-j) - 1); 
  endfor
  
  if (abs(current(i) - prev(i-1)) > eps)
    T = romberg_aitken(f, i + 1, current, a, b, eps);
  else
    T = current(i);
  endif
endfunction