% Homework1a
% Engineering 240
% Cody Antonio Gagnon 7/2/15

% Vector and matrix definitions %% Store C, D, y, z
C = [2 9 -3; 0 pi 5]
save A1.dat C -ascii
D = [0 7; 8 3; -3 0];
save A2.dat D -ascii
y = [2; 1]
save A3.dat y -ascii
z = [1; exp(1); -1]
save A4.dat z -ascii

% Loading files and Accessing Elements
T = dlmread('M.txt'); % can also use the command load 'M.txt'
v1 = T(3, :); % Set v1 as the 3th row of A
save A5.dat v1 -ascii
v2 = T(:, 13); % Set v2 as the 13th column of A
save A6.dat v2 -ascii
v3 = v1.*v2'; % Set the vector v3 as the row vector which is the element-wise product of v1 and v2
save A7.dat v3 -ascii
B = [zeros(1, 70); v1; zeros(68,70)] % Set B as a 70 x 70 matrix containing v1 in its second row and 0 elsewhere
save A8.dat B -ascii

% Colon Notation
v1 = 1:444; % v1 = [1, 2...]
save A9.dat v1 -ascii
v2 = 35:-5:-15; % v2 = [35, 30...]
save A10.dat v1 -ascii

v3(1:2:199)= 1:100; % v3 = [1, -1, 2, -2...]
v3(2:2:200) = -1:-1:-100;
save A11.dat v3 -ascii
% Product
% approximation = 1;
% for k = 1:30
%     approximation = approximation * (4 * k^2) / ((4 * k^2) - 1);
% end
% approximation = (approximation * 2);
% difference = abs(approximation - pi) / pi
% save A12.dat difference -ascii

%% Another way, this time with section break!
k = 1:30;
n = 4 * k.^2;
d = n - 1;
k = n./ d;
approximation = prod(k) * 2;
difference = abs(approximation - pi) / pi
