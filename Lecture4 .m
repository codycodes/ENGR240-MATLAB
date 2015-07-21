%Lecture4 7/6/15
%% Summing cosine in vector v
c = cos(1:10);
v = zeros(1, 10); % Initialize a row vector of 10 zeroes 
v = sum(c); % Redefine v as the sum of cosine values from 1 to 10
% Approximate Euler's e \approx 2.71828...
n = 0:31; % Create a row vector from 0 to31
v = factorial(n); % Take the factorial of n for each v element from 1 to 10
w = (3.^n)./v; % w is equal to each element of n as a power of 3, each divided by v
exp(3) % The real value of e^3
sum(w) % Our approximation
%% Another approximation for e
n = 0:8;
v = factorial(n);
w = (3.^n)./v;
exp(3);
sum(w);
k = 0:57;
mye = sum(1./factorial(k));
error = abs(exp(1) - mye)
%%
A = load('A1.dat'); % This is how we can load a file and assign it to a variable in MATLAB