
a = 1;
b = 2;

f = @(x) x .* log(x);
n = 1;

correct = 0.636294368858383;
maximum_error = 1e-3; #0.001 - 'correct to three decimals'
v = repeated_trapezium(f, a, b, n);

while abs(v - correct) > maximum_error
  n = n + 1;
  v = repeated_trapezium(f, a, b, n);
endwhile

printf("Approximation %d was reached for n=%d\n", v, n);