% Daniel Sciortino
% ODU ECE 201
% MATLAB Assignment #2 Part 1 
% Solving 4.12 from the texbook
% Solving a problem with Node Volatage Equations

format compact,

% Top line is for the node voltage at A
% Bottom Line is for Voltage at Node B
% Final Equations look like
% .3625A - .0125B = 36
% -.0125A + .2125B = 3

A = [.3625 -.0125; -.0125 .2125]


B = [ 36 ; 3]

%X holds the answer matrix
X = A\B