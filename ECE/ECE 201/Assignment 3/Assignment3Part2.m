% Daniel Sciortino
% ODU ECE 201
% MATLAB Assignment #3 Part 2 
% A. Graphing a function linearly from 0 to 40ms with 100 points
% B. Graphing a function linearly from 0 to 25 with an increment of.5
% C. Graphing a function linearly from 0 to 5 with 200 points
% D. Graphing a function logarithmically from 0 to 1000 with 50 points

format compact
clc
% Part A
t = linspace(0,40, 100);
v = 250.*sin(500*t);
plot(t,v)
xlabel('Time 0..40ms')
ylabel('Sine of x')
title('250Sin(500t) vs Time')