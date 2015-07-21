function out = funk4(funk3, a, b)
% This function references our class lecture from 7/7/15 -> the function plots funk3, with a and b as xmin and xmax, and also takes funk3((-6 + 6) / 2), which returns -8 since x becomes 0
fplot(funk3, [a b])
out = funk3((a+b) / 2)
end