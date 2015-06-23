% Daniel Sciortino
% TCC EGR 271
% MATLAB Assignment #1 Part 4  
% Solving problem 1 - 18 from the textbook

clc
format compact

syms t

disp('setting v equal to the supplied equation')
v = 15*exp(-250*t);
pretty(v)
fprintf('\n')

disp('Setting I equal to the supplied equation ')
i = .04*exp(-250*t);
pretty(i)
fprintf('\n')

disp('Multipling V * I to get p')
p = v * i;
pretty(p)
fprintf('\n')

disp('Substituting .1 for t in the equation p')
subs(p,t,.01)
fprintf('\n')

disp('Calculating the total energy from power from 0 to infinity')
int(p,t,0,inf)
fprintf('\n')