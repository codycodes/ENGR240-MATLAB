%% Lecture10 7/20/15
% Left division can identify what your matrix "looks like" and choose the
% appropriate algorithm
% function [b1;b2;b3] = Gauss(vector A, vector b)
% how can I time this? Use a random 100 by 100 matrix
rand(100);
x = linspace(-10, 10);
y = 4 * x - 5/2;
y2 = 4 * x + 7/3;
hold on
plot(x, y)
plot(x, y2)
% We can see graphically that there are no solutions, since the functions
% are parallel 
% Check if the determinant is 0; this means there can be infinite or no
% solutions, the same holds for if the equations are "masquerading"
% Three different solutions to a systems of linear equations
% Unique solution (x;y;z) = (s1;s2;s3)
% Anomalies >>>>
% Inconsistent system -> NO sol'ns (may not satisfy points or is parallel)
% Dependent system -> two equations are the same
% % https://ece.uwaterloo.ca/~dwharder/NumericalAnalysis/02Numerics/Weaknesses/