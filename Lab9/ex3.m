
f = @(x) (100./(x.^2)) .* sin(10./x);

a = 1;
b = 3;
eps = 1e-4;
exact = -1.4260247818;
n1 = 50;
n2 = 100;

x = linspace(1,3,100);
y = f(x);
plot(x, y);

aq1 = adaptive_quadrature(a,b, f, eps,n1)
aq2 = adaptive_quadrature(a,b, f, eps,n2)

simpsons1 = simpsons_formula(f,a,b,n1)
simpsons2 = simpsons_formula(f,a,b,n2)