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
## @deftypefn {} {@var{retval} =} aitken (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-03-23

function z = aitken(x, y, a)
  err=1e-3; 
  [z, I] = sort(abs(x-a));
  x = x(I);
  y = y(I);
  n=length(x);

  ak=zeros(n,n);
  ak(:,1)=y';
  for i=1:n
      for j=1:i-1
         ak(i,j+1) = (1/(x(i)-x(j))) * (ak(j,j) * (x(i)-a) - ak(i,j) * (x(j)-a));
      end
      if i>1 && abs(ak(i,i)-ak(i-1,i-1))<=err
            z = ak(i,i);
            return
      end
   end

