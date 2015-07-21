%% Lecture 9 7/14/15
A = eye(3);
% Inverse of A = A^-1
inv(A);
%% Solving a systems of linear equations in MATLAB
% Our graphical interpretation
x = linspace(0,2, 1000);
y1 = 2*x-5;
y2 = -x/4 - 7/4;
hold on;
plot(x, y1)
plot(x, y2)
A = [2 -1; 1 4]
b = [5; -7]

%%  what does inverting the matrix do for you?
sol = inv(A) * b; % This is a computationally intensive way
sol = A\b % This way is much more efficient (left division)