% Lecture 12 7/20/15
% % You have to name your function files the same as the file name and call
% % it from a script, for all future homework assignments.
% A mxn v nx1

%% Multiplying a matrix by a row vector
A = [1:3; 1:3; 1:3];
[m, n] = size(A);
v = [1:m];
w = zeros([m, 1]);
for i = 1:m;
    for j = 1:n;
       w(i) = w(i) + (A(i, j) * v(i)); 
    end
end

%% Vectorized version
x = (A(1:m, 1:n) * v(1:n)); % Vectorized version
%% Taking the dot product of two arbirtarily sized matrices
A = magic(8);
[m, n] = size(A);
v = magic(8);
[m1, n1] = size(v);
if (n == m1 && n1 > 1) 
    w = zeros([m, n]);
    for i = 1:m;
        for j = 1:n;
            w(i, j) = w(i, j) + (A(i, :) * v(:, j));
        end
    end
end

%% Vectorized Version For Matrix Multiplication
A = magic(8);
[m, n] = size(A);
v = magic(8);
x = (A(1:m, 1:n) * v(1:n, 1:m));