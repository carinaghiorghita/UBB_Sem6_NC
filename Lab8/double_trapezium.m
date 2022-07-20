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
## @deftypefn {} {@var{retval} =} double_trapezium (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-04-28

function y = double_trapezium(f, a, b, c, d)
  y = (b - a)*(d-c)/16 * (f(a, c) + f(a, d) + f(b, c) + f(b, d) +
  2*f((a+b)/2, c) + 2*f((a+b)/2, d) + 2*f(a,(c+d)/2) + 
  2*f(b, (c+d)/2) + 4*f((a+b)/2, (c+d)/2));
endfunction