
t = [8.3 8.6];
f = [17.56492 18.50515];
d = [3.116256 3.151762];
x = 8.4;

H = hermite(t,f,d,x)
#x.*log(x)
fprintf("Absolute approximation error: %f\n",err = abs(x.*log(x) - H));