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
## @deftypefn {} {@var{retval} =} adaptive_quadrature (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-04-30

function y=adaptive_quadrature(a, b, f, err, n)
  y1 = simpsons_formula(f, a, b, n);
  y2 = simpsons_formula(f, a, (a+b)./2, n) + simpsons_formula(f, (a+b)./2, b, n);
  
  if abs(y1 - y2) < 15 .* err
    y = y2;
    return;
  else
    y = adaptive_quadrature(a, (a+b)./2, f, err./2,n) + adaptive_quadrature((a+b)./2, b, f, err./2,n);
  endif
 endfunction
