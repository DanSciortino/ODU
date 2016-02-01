% Daniel Sciortino
% ODU ECE 201
% MATLAB Assignment #3 Part 2 Graph B
format compact
clc

% Part B
i = 10*t.*exp(-.2.*t);
t = 0:.5:25;
plot(t,i)
xlabel('Time 0..25')
ylabel('Function')
title('10te^(-.2t) vs Time')
