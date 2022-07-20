f = @(a) (1 + cos(pi*a)) ./ (1 + a);

x = linspace(0, 10); 
y = f(x);
plot(x,y);  

hold on;

xx = linspace(0, 10, 21);
L = lagrange(x, y, xx); 
plot(xx, L); 