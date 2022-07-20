
x = [-2, -1, 0, 1, 2];
y = 3.^x;

[n, m] = size(x);

N = neville(x, y, 1/2);

fprintf("sqrt(3) = %f \n", N(m, m));


xx = [0, 1, 2, 4, 5];
yy = sqrt(xx); 

N = neville(xx, yy, 3);

fprintf("sqrt(3) = %f \n", N(m, m));
