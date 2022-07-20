f = @(E) E - 0.8*sin(E) - 2*pi/10;
fd = @(E) 1 - 0.8*cos(E);

E0=1;
N=6;
eps=1e-4;

x = newton(f, fd,  E0, N, eps)