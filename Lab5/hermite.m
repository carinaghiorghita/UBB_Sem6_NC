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
## @deftypefn {} {@var{retval} =} hermite (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Carina <Carina@DESKTOP-V9IIJ69>
## Created: 2022-03-27

function H=hermite(t,f,d,x)

  l=length(t);
   
  z=zeros(1,2*l);  
  z(1:2:end)=t; 
  z(2:2:end)=t;
  
  fi=zeros(1,2*l);  
  fi(1:2:end)=f; 
  fi(2:2:end)=f;

  m=zeros(2*l,2*l); 
  m(:,1)=fi';
  m(1:2:end,2)=d';
  #for i=1:l
  #  m(2*i-1,2)=d(i);
  #endfor
  for i=1:l-1
    m(2*i,2)=(f(i+1)-f(i))./(t(i+1)-t(i));
  endfor
  
  for k=3:2*l
      for i=1:2*l-k+1
          m(i,k)=(m(i+1,k-1)-m(i,k-1))./(z(i+k-1)-z(i));
      endfor
  endfor
  #disp(m)
  
  lx=length(x);
  p=ones(lx,1);
  s=m(1,1)*ones(lx,1);
  for j=1:lx
    for i=1:2*l-1
      p(j)=p(j)*(x(j)-z(i));
      s(j)=s(j)+p(j)*m(1,i+1);
    endfor
  endfor

  H=s';
endfunction
