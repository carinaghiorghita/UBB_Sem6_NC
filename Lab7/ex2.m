
t = [0,10,20,30,40,60,80,100];
p = [0.0061,0.0123,0.0234,0.0424,0.0738,0.1992,0.4736,1.0133];

p1 = polyfit(t,p,2);
p2 = polyfit(t,p,3);
fprintf("p1 = %f x^2 + %f x + %f \n", p1)
fprintf("p2 = %f x^3 + %f x^2 + %f x + %f \n", p2)

approx1 = polyval(p1,45)
approx2 = polyval(p2,45)
actual = 0.095848;

error1 = abs(actual - approx1);
error2 = abs(actual - approx2);
fprintf("error1 = %f\n",error1)
fprintf("error2 = %f\n",error2)

hold on
xp = [0:0.01:100];
pp = polyfit(t,p,7);

plot(t, p, 'rp');
plot(xp, polyval(p1, xp), 'b-');
plot(xp, polyval(p2, xp), 'g-');
plot(xp, polyval(pp, xp), 'k-');

hold off