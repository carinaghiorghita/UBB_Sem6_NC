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
## @deftypefn {} {@var{retval} =} newton (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-03-23

function N=newton(x,f,xx)
  n=length(x)-1;

  m=diff(x, f);

  l=length(xx);
  p=ones(1,l);
  s=m(1,1)*ones(1,l);
  for j=1:l
    for i=1:n
      p(j)=p(j)*(xx(j)-x(i));
      s(j)=s(j)+p(j)*m(1,i+1);
    end
  end

  N=s;

endfunction