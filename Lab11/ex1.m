
A = [3, -1, 0, 0, 0, 0; 
     -1, 3, -1, 0, 0, 0; 
     0, -1, 3, -1, 0, 0; 
     0, 0, -1, 3, -1, 0; 
     0, 0, 0, -1, 3, -1; 
     0, 0, 0, 0, -1, 3];
     
b = [2; 
     1; 
     1; 
     1; 
     1; 
     2];
     
eps = 1e-3;
N = 100;

#x=A\b

Xjacobi=jacobi(A, b, N, eps)
XgaussSeidel = gaussSeidel(A, b, N, eps)
Xsor = sor(A, b, N, eps, 1.1)
