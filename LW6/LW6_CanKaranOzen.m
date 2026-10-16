clear

% 1. Creating Matlab functions
F = kelv2far(300)
help kelv2far

% 2. Using Matlab global variables
global x y
x = 2*pi:-0.2:-2*pi;
sinpart
onepart
figure;
plot(x, y, '--y*');
xlabel('x');
ylabel('y(x)');
title('y(x) = sin(x)/x');
whos

% P1. Argument checking in functions
s = onetwo(pi/2)
[s, c] = onetwo(pi/2)
