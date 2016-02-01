% Daniel Sciortino
% ODU ECE 201
% MATLAB Assignment #2 Part 3 
% Solving 4.11 from the texbook
% Solving a problem with mesh equations
% and Matrix operations

format compact

% Equations in Ax=b form
% Top line for Mesh A
% Middle line for Mesh B
% Bottom Line for Mesh C
% 65A - 60B + 0C = 128
% -60A + 144B - 80C = 0
% 0A - 80B + 90C = - 320

fprintf('Reduced Row Echelon Form');
A = [65 -60 0 128; -60 144 -80 0; 0 -80 90 -320]
ReducedMatrixA = rref(A)

fprintf('New matricies for the inverse and x=A\B\n');
a = [65 -60 0; -60 144 -80; 0 -80 90]
b = [ 128; 0; -320]
fprintf('\n')
InverseX= inv(a)*b

fprintf('\n');
X = a\b