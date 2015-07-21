% Lecture 2: 7/1/15
%% Sum accumulator (Less efficient method)
% one method 
s = 0;
j = zeros(1, 10); % initialize a row vector of zeros length 10 to add values of sum accumulator into
for k = 1:10
    s = s + k; % sums the value of k to s
    j(k) = s;
    
end
j
%% Sum accumulator (More efficient method)
s = 0;
j = [1:10]; % Define the row vector to be length 10, which can be used as out loop condition
for k = j;
    s = s + k; % sums the value of k to s
    j(k) = s;
end
j
%% using a vector as our loop condition 
w = [2 3 5i pi];
for k = w
    s = k.^2 + 1; % Really doesn't do much, but squares each element in the row vector w. What you're left with is pi^2 + 1
end;
s
%% An example of nested for-loops
A = zeros(4); % Initialize a row vector of zeros
for i = 1:4; % Loop through the rows of each element in A
    for j = 1:4;  % Loop through the columns of each element in A
        A(i, j) = i * j; % Set the row i column j of A to i * j
    end
end
A

A =

     1     2     3     4
     2     4     6     8
     3     6     9    12
     4     8    12    16
%% Calculating an approximation of e
n = [0:10]; % Create a row vector n from 0 to 10.
v = factorial(n); % Take the factorials of n
w = 1./v; % Take the values of v and set them to the denominator of w
eee = sum(w); % Assign the sum of the values of w
error = abs(eee - exp(1)); % always report error as positive
save A3.mat eee 

%% Calculating an approximation of e using a for loop and a break statement
s = 1; % Set s = 1
for i = 1:1000000 % If i gets to this number, it probably went too far!
    s = s + (1 / factorial(i)) % Prints the value of s for each iteration
    if abs((exp(1) - s) < 10^(-20)) % Breaks the loop once we get to the tolerance level of 10^-20
        i % Shows how many iterations were performed to get to our tolerance level
        break
    end
end