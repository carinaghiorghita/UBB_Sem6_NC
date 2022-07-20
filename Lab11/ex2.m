
A = [3 1 1;
     -2 4 0;
     -1 2 -6]; 

b = [12;
     2;
     -5];

eps = 1e-5;
N = 100;

#A\b

Xjacobi=jacobiMatr(A, b, N, eps)
XgaussSeidel = gaussSeidelMatr(A, b, N, eps)
Xsor = sorMatr(A, b, N, eps, 1.1)
