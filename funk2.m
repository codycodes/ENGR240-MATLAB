function y = funk2(a,b)
% I'm pretty sure this does the same thing as funk1
x = linspace(a, b, 10000);
y = x.^2 - 2.* x - 8;
plot(x, y)