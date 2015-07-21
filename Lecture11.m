% Lecture 11 7/16/15
% % LU Factorization
% Permutation Matrix
%%
A = [1 -2 -1; -1 3 3; 2 -3 1];
b = [1 4 10]'
[L U P] = lu(A) %Partial pivots
L * U
% P is the encoded permutation for lower and upper factorization
% P = 
% 
%      0     0     1
%      0     1     0
%      1     0     0
%LU = PA
%LUx =PAx
%(Ux) = d
% chol(L)We won't be doing over this
% We can switch the i's and j's P * P^T
%% Another example
A = [4 3 -1; -2 -4 5; 1 2 6]
% x1 = 0;
% x2 = 0;
% x3 = 0;
% x = [x1 x2 x3]'
% b = [1:3]'
[L U P] = lu(A); % This system doesn't need a pivot!
tf = isequaln(A, L * U);
d = U*P
b = L * d
L \ b
% %Method of least squares; Gaussian regression; line that comes closest to
% the most number of points; be suspect if you have a line of best fit that
% touches a point