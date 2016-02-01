% Daniel Sciortino
% ODU ECE 201
% MATLAB Assignment #3 Part 2 Graph D
% For some reason the equation wont print

format compact
clc

% Part D
t = logspace(0,3,50);
w = 20*log10(2000*t)/(sqrt(t.^(2)+10^2).*sqrt(t.^(2)+200^2));
semilogx(t,w)
grid on