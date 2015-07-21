%Lecture 5 - We've now completed basic MATLAB: The real meat of the course
%is numerical methods
% Starting with root-finding algorithms
%% Anonymous Function syntax 
%(@) is our function handle. It provides a means of calling a function indirectly. When you pass a function handle into another function we call that a function function 
% you can create a handle to a local function as long as you do so from within the file that defines that local function
q = @(t) cos(t) + 0.5 * t; % Create a function handle for this function
fplot(q, [-8 5]) % Evaluate this function for the domain specified

%% Creating an inline function, just type @w, @x, @wxy
% Then you just write out the expression
% Better to save it as a script; then you can run the script if you need to
% run it
x = -3:.1:3;
y = q(x); % Calling q, defined in the section above
plottools % Opens plottools to edit plot
plot(x, y, '-o') %Means we draw the line and circles
%% Tips
% The easiest thing to do is when you're working in a session, keep your
% functions open in a folder MATLAB is currently using
% Function handle is what's used to "grab" a function
% When you put a function into a function the outer function is called the
% function function
% You'll need an @ sign to define what you're putting the function into



fplot(@funk3, [-8 15]) %We use a handle to use funk3 as an input, and fplot uses -8 and 15 as it's xmin and xmax

% Anything created in the function cannot be used outside of the function's
% scope, so you must assign a variable to the output of the function

y = funk4(@funk3, -6, 6)
% You can override with global variables
% You can output as many variables with a single function as you'd like
% Slides on functions; review!
% You must decompose the vector that you're using composed of variables
% returned by the function
% You cannot import variables from your workspace into your function unless
% you pass the variable from your workspace as the function's parameters
% Using functions as inputs
% When you pass a function into another function you need a handle

%% Referenced functions...
% This is an m-file function
% Save it by its function name
% % function y = funk3(x)
% % %This is from our class lecture on 7/7/15. Returns x^2 - 2x - 8
% % y = x.^2 - 2.* x - 8;
% % end

% % function out = funk4(funk3, a, b)
% % % This function references our class lecture from 7/7/15 -> the function plots funk3, with a and b as xmin and xmax, and also takes funk3((-6 + 6) / 2), which returns -8 since x becomes 0
% % fplot(funk3, [a b])
% % out = funk3((a+b) / 2)
% % end