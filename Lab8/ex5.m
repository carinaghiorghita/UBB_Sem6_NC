
a = 0;
b = pi;
n1 = 10;
n2 = 30;

f = @(x) 1./(4+sin(20.*x));

n1
v1 = repeated_simpsons(f,a,b,n1)

n2 
v2 = repeated_simpsons(f,a,b,n2)