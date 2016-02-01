% Daniel Sciortino
% ODU ECE 201
% MATLAB Assignment #3 Part 1 
% Finding the voltage across a 
% 100uF Capacitor
% Given a v(t) find i(t), p(t), w(t) by hand
% verify the answers with matlab from 0:.01:.25

format compact
clc
% Definging the time interval
t = [0:.01:.25];

% Setting the equations up
v = 10.*exp(-20*t);
i = -1/50*exp(-20*t);
p = (-1/50.*exp(-20*t)).*(10.*exp(-20*t));
w = .5*(.0001)*(10.*exp(-20*t))*exp(2); 

% Printing the Table
fprintf('\n\n\n')
disp('       T(s)      V(V)      i(A)      p(W)     w(J)')
disp([t', v', i', p', w'])
