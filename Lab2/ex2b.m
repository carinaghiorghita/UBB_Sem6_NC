function ex2b(N)
  hold on;
  x = -1:0.01:1;
  for n=1:N
    t = chebyshev(n,x);
    plot(x,t);
  endfor
endfunction