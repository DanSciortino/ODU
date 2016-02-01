% Daniel Sciortino
% ODU ECE 201
% MATLAB Assignment #3 Part 2 Graph C

format compact
clc

% Part C
t = linspace(0,5,200);
v = 25.*exp(-t).*cos(2*3.14*t);
plot(t,v)
xlabel('Time 0..5')
ylabel('Function')
title('25e^(-t)cos(2pit) vs Time')
