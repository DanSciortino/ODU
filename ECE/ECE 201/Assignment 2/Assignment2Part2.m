% Daniel Sciortino
% ODU ECE 201
% MATLAB Assignment #2 Part 2 
% Solving 4.36 from the texbook
% Solving a problem with Mesh Equations


format compact

% Top line is for the Mesh A
% Middle Line is for Mesh B
% Bottom Line is for Mesh C
% Final Equations look like
% 34A - 4B - 10C =0
% -4A + 11B - 5C = -106
% -10A - 5B + 45C = -130

A=[34 -4 -10; -4 11 -5; -10 -5 45]

B=[0 ; -106 ; -130]

X = A\B