% Homework 2
% Engineering 240
% Cody Antonio Gagnon 7/7/15

 % % Exercise 1: Loops
a = 0;
for l = 1:10000
    a = a + 1;
end
error = 10000 - a
save A1.dat error -ascii
a = 0;
for m = 1:100000
    a = a + .1;
end
error = 10000 - a
a = 0;
save A2.dat error -ascii
for n = 1:1000000
    a = a + .01;
end
error = 10000 - a
save A3.dat error -ascii

% a =
% 
%        10000
% 
% 
% a =
% 
%      1.000000000001885e+04
% 
% 
% a =
% 
%      1.000000000017186e+04

% % Exercise 2: Bisection
function [out1, out2, out3, out4] = bisectionhw(fun, a, b, tol, N) 

% bisection algorithm to find a root
x = [a:0.01:b];
f = fun(x);
plot(x,f);
c = 0;
n = 1;
fc = abs(a-b);
l = zeros(1, N);
fc = fun(c);
l(n) =  (fc);
c = (a+b) / 2;
if (fc > 0)
    b = c;
else
    a = c;
end
while (abs(fc) > tol && n < N)
    n = n + 1;
    c = (a+b) / 2;
    fc = fun(c);
    l(n) = (fc);
    hold on;
    plot(c,fc,'*r')
if (fc > 0)
    b = c;
else
    a = c;
end

end
out1 = c
out2 = fc
out3 = n
out4 = l
end 
m = bisectionhw(@exponx, -1, 0, 10^-16, 17);
save A5.dat m -ascii

% % Exercise 3: Matrices
B1 = zeros(71, 71);
for n = 1:length(B1)
   if(mod(n, 2) ~= 0)
      B1(n, :) = 1; 
   else 
      B1(n, 1:2:end) = 0;
      B1(n, 2:2:end) = 1;
   end
end
save A6.dat B1 -ascii
B2 = zeros(71, 71);
for n = 1:length(B2)
   if(mod(n, 2) ~= 0)
      B2(n, 1:2:end) = 1;
      B2(n, 2:2:end) = 0;
   else 
      B2(n, 1:2:end) = 0;
      B2(n, 2:2:end) = 1;
   end
end
save A7.dat B2 -ascii
B3 = zeros(71, 71);
for n = 1:length(B2)
   if(mod(n, 2) ~= 0)
      B3(n, 1:2:end) = n;
      B3(n, 2:2:end) = 0;
   else 
      B3(n, 1:2:end) = 0;
      B3(n, 2:2:end) = n;
   end
end
save A8.dat B3 -ascii