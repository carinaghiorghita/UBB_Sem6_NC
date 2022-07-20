
t = [1 2];
f = [0 0.6931];
d = [1 0.5];
x = 1.5;

H = hermite(t,f,d,x)
#log(x)
fprintf("Absolute approximation error: %f\n",err = abs(log(x) - H));