function [out1, out2, out3, out4, out5] = bisectionhw(fun, a, b, tol, N) 

% bisection algorithm to find a root
x = [a:0.01:b];
f = fun(x);
plot(x,f);
c = 0;
n = 1;
fc = abs(a-b);
l = zeros(1, N);
fc = fun(c); 
while (abs(fc) > tol && n < N + 1)
    c = (a+b) / 2;
    fc = fun(c);
    l(n) = (fc);
    hold on;
    plot(c,fc,'*r')
    n = n + 1;
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
save A4.dat l -ascii

end 