
x=[1 2 3 4 5];
f=[22 23 25 30 28];

yi = [2.5];

N = newton(x,f,yi)

plot(x,f,'r*')

hold on

z = 0:0.01:6;
A = newton(x, f, z);

plot(z, A,'b')