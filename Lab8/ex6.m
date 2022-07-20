
a = 0;

const_erf = 2./sqrt(pi);
f_erf = @(t) exp(-1 .* (t .^ 2));

erf = @(x, n) const_erf .* repeated_simpsons(f_erf, a, x, n);

n1 = 4;
n2 = 10;

correct = 0.520499876;

r1 = erf(0.5, n1)
err1 = abs(r1-correct)

r2 = erf(0.5, n2)
err2 = abs(r2-correct)