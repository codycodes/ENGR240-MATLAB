function y = funk(a, b)
%This function correlates to Lecture4, and returns y values for the function x^2 - 2* x - 8 between a and b
x = linspace(a, b, 10000);
y = x.^2 - 2* x - 8;
end