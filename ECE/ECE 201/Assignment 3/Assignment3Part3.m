% Daniel Sciortino
% ODU ECE 201
% MATLAB Assignment #3 Part 3
% Max power transfer Graph

format compact
clc

r = logspace(0,2,50)
p = (200./(r+25)).^2.*r

semilogx(r,p)
grid on
xlabel('Resistance in Ohms(\Omega)')
ylabel('Power in watts')
title('Max Power therom')

disp([p',r'])