
X = 0 : 0.01 : 6;
f = @(x) exp(sin(x));

plot(X, f(X), 'g'); 

x = linspace(0, 6, 13);
y = newton(x, f(x), X);

hold on

plot(X, y, 'b')

plot(x, f(x), 'r*')

