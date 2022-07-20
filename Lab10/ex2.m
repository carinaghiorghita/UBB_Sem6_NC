for n=10:15
  k=1:n;
  t=1./k;
  fprintf("n=%d: %f\n",n,cond(vander(t)))
endfor