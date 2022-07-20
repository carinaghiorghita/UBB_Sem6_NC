
r = 110; 
p = 75; 
a = 0; 
b = 2 * pi;

n1 = 50; 
n2 = 100;

coef_H = 60 * r / (r * r - p * p);
f_H = @(x) sqrt(1 - (p / r) ^ 2 * sin(x));

v1 = repeated_trapezium(f_H, a, b, n1);
v2 = repeated_trapezium(f_H, a, b, n2);

n1
H1 = coef_H * v1
n2
H2 = coef_H * v2