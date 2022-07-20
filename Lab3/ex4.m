x = -5:0.01:5;
fx = 1 ./ (1 + x .^ 2);

i = 0:100;
yi = (i ./ 10) - 5;
fy = 1 ./ (1 + yi .^ 2);

hold on;

for n = 2:2:8
  i = 0:n;
  xi = i * 10 / n - 5;
  fxi = 1 ./ (1 + xi .^ 2);
  l = lagrange(xi, fxi, yi);
  err = max(abs(fy - l));
  disp(err)  
  plot(xi, fxi)
endfor  