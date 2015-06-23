% Daniel Sciortino
% TCC EGR 271
% MATLAB Assignment #1 Part 2  
% Delta-to-wye Conversion

clc %Clear the window
format compact

disp('Given 3 resistors in a delta form covert it to a wye circuit')

prompt = 'Enter R_A: ';
R_A = input(prompt);

prompt = 'Enter R_B: ';
R_B = input(prompt);

prompt = 'Enter R_C: ';
R_C = input(prompt);

R_1 = (R_B * R_C)/(R_A + R_B + R_C);

R_2 = (R_A * R_C)/(R_A + R_B + R_C);

R_3 = (R_B * R_A)/(R_A + R_B + R_C);

fprintf('R1 = %.2f',R_1); disp(' Ohms');
fprintf('R2 = %.2f',R_2); disp(' Ohms');
fprintf('R3 = %.2f',R_3); disp(' Ohms');