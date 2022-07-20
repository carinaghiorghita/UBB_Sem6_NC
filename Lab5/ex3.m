
t = linspace(-5,5,15);

ff = @(x)sin(2*x);
f = ff(t);

dt = @(x)2*cos(2*x);
d = dt(t);

x = linspace(-5,5,50);

H = hermite(t,f,d,x);

hold on 
plot(x, ff(x),'rp')
plot(x, H, 'k')