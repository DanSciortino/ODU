% Daniel Sciortino
% ODU ECE 201
% MATLAB Assignment #1 Part 1 
% Voltage Division with multiple resistors in series

clc %Clear the window
format compact

disp('Voltage division calculator with 4 resistors in series')

prompt = 'Enter Voltage: ';
V_Source = input(prompt);

prompt = 'Enter value for Resistor 1: ';
R_1 = input(prompt);

prompt = 'Enter value for Resistor 2: ';
R_2 = input(prompt);

prompt = 'Enter value for Resistor 3: ';
R_3 = input(prompt);

prompt = 'Enter value for Resistor 4: ';
R_4 = input(prompt);

%Sum of the resistors in series
R_Total = R_1 + R_2 + R_3 +R_4;

%Calculating the voltage across each resistor 
V_Division_1 = V_Source * (R_1/R_Total);

V_Division_2 = V_Source * (R_2/R_Total);

V_Division_3 = V_Source * (R_3/R_Total);

V_Division_4 = V_Source * (R_4/R_Total);

%Print to command window
fprintf('Voltage across resistor 1 = %.1f',V_Division_1); disp(' Volts');
fprintf('Voltage across resistor 2 = %.1f',V_Division_2); disp(' Volts');
fprintf('Voltage across resistor 3 = %.1f',V_Division_3); disp(' Volts');
fprintf('Voltage across resistor 4 = %.1f',V_Division_4); disp(' Volts');
