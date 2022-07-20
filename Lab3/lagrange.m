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
## @deftypefn {} {@var{retval} =} lagrange (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-03-11

function L = lagrange (x, y, xx)
  m=length(x);
  P=zeros(1,m);
  N=length(xx);
  L=zeros(1,N);
  for j=1:N
    s1=0;
    s2=0;
    for i=1:m
      P(i)=Ai(x,i);
      s1 = s1 + P(i)*y(i)/(xx(j)-x(i));
      s2 = s2 + P(i)/(xx(j)-x(i));
    endfor
    L(j)=s1/s2;
  endfor
endfunction
