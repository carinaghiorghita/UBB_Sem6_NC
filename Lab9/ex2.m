
f = @(x) 2./(1+x.*x);

a = 0;
b = 1;

eps = 1e-4;
actual = pi/2;

k=0;
h = b - a;
res = h/2*(f(a) + f(b));

while abs(res-actual) > eps
  k = k+1;
  q0 = res;
  coef = (2 * [1:2^(k-1)] - 1) ./ 2^k;
  s = sum(f(a + coef .* h));
  res = 1/2 * q0 + h/2^k*s;
endwhile

fprintf("Trapezium:\n")
res


T0 = repeated_trapezium(f, a, b, 1);

fprintf("\n\nAitken:\n")
res = romberg_aitken(f, 2, T0, a, b, eps)