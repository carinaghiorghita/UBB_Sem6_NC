hold on;
T = @(x) 1;
fplot(T, [-1, 3]);
for i = 1 : 6
  T = @(x) T(x) + (x.^i) / factorial(i);
  fplot(T, [-1, 3]);
endfor