% Santiago Hincapie Potes
% 201510008101
% 26/01/2018
%% Clean enviroment
clear
clc
%% 1.6.7 Generation and Plotting of 3D Meshes in MATLAB.
figure;
clf;
x = -3:0.5:3;
y = -2:0.05:2;
[X,Y] = meshgrid(x, y);
Z = peaks(X, Y);
surf(Z);
colormap('gray');
title('Silver Surface');
xlabel("X");
ylabel("Y");
zlabel("Z");


figure;
surf(Z);
colormap('winter');
title('Cold Peak');
xlabel("X");
ylabel("Y");
zlabel("Z");
