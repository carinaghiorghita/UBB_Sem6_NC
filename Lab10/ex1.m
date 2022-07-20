
A = [10, 7, 8, 7; 
     7, 5, 6, 5; 
     8, 6, 10, 9; 
     7, 5, 9, 10];
     
b = [32; 
     23; 
     33; 
     31];
#x=A\b
x=gauss(A,b)


b2=[32.1;
   22.9;
   33.1;
   30.8];
   
#x2=A\b2
x2=gauss(A,b2)

ire = norm(b - b2) / norm(b);
fprintf("Input relative error: %d\n", ire)
ore = norm(x - x2) / norm(x);
fprintf("Output relative error: %d\n", ore)

fprintf("%d\n",ore / ire)


A2 = [ 10 7 8.1 7.2; 
       7.08 5.04 6 5; 
       8 5.98 9.89 9; 
       6.99 4.99 9 9.98 ];
  
#x3=A2\b 
x3 = gauss(A2,b)
      
ire2 = norm(A - A2) / norm(A);
fprintf("Input relative error: %d\n", ire2)
ore2 = norm(x - x3) / norm(x);
fprintf("Output relative error: %d\n", ore2)

fprintf("%d\n",ore2 / ire2)
