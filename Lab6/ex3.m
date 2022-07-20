
t = [0 3 5 8 13];
f = [0 225 383 623 993];
d = [75 77 80 74 72];
x = 10;

s1 = spline(t, [75, f, 72]);
s2 = ppder(s1);

ppval(s1,x)
ppval(s2,x)
