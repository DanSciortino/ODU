% Daniel Sciortino
% ODU ECE 201
% MATLAB Assignment #1 Part 3  
% Solving symbolic calculations

clc
format compact
syms t

%Deriving charge with respect to time to get current
disp('Deriving charge with respect to time to get current')
q = 25*exp(-2*t)
diff(q,t)
fprintf('\n')

%Integrating current with respect to t over the closed interval to 0 - 2
disp('Integrating current with respect to time over the closed interval 0 - 2')
i = 10*exp(-2*t)
int(i,t,0,2)
fprintf('\n')

% Deriving energy with respect to time to get power
disp('Deriving energy with respect to time to get power')
w = 100*cos(40*t)
diff(w,t)
fprintf('\n')

%Integrating power with respect to time to get to energy over the closed
%interval 0 to .1
disp('Integrating power with respect to time over the interval 0 - .1')
p = 50*sin(10*t)
int(w,t,0,0.1)