% Santiago Hincapie Potes
% 201510008101
% 26/01/2018
%% Clean enviroment
clear
clc
%% 1.6.5  3D Plotting in MATLAB.
figure;
clf;
x = 0:0.05:10;
y = 0:0.05:10;
z = cos(x) + sin(y);
plot3(x, y, z);
xlabel('X');
ylabel('Y');
zlabel('Z');
title('z = cos(x) + sin(y)');
grid on;