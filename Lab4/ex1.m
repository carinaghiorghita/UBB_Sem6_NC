
x = [1 1.5 2 3 4];
y = [0 0.17609 0.30103 0.47712 0.60206];
xx = [2.5 3.25];

i = [10:35];
yi = i ./ 10 ;
newton(x, y, yi)
fprintf("Maximum interpolation error is %f \n", max(abs(log10(yi) - newton(x, y, yi))))
