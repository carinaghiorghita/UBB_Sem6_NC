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
## @deftypefn {} {@var{retval} =} neville (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-03-25

function N = neville(x, y, xx)
  [~, m] = size(x); #ignore first output, we only need the nr of elements in x (columns)
  q = [y'];
  for i = 1:m-1
     for j = 1:i
        s1 = (x(i+1) - xx) * q(i,j) + (xx - x(i-j+1)) * q(i+1,j);
        s2 = x(i+1) - x(i-j+1);
        q(i+1,j+1) = s1 / s2;
    end
  end
  N = q;
end
