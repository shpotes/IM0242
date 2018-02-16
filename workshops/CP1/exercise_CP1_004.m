% Santiago Hincapie Potes
% 201510008101
% 26/01/2018
%% Clean enviroment
clear
clc
%% 1.6.4 2D Plotting in MATLAB
figure;
clf;
x = 0:pi/12:2 * pi;
y = sin(x);
plot(x, y)
xlabel('X');
ylabel('Y');
title('sin(x)');
grid on;
pause(5);
axis([-1 3*pi -2 2]);
pause(5);
grid off;
text(1.0, 1.1, '(1.0, 1.1)');
text(-1, -2, 'Left inferior point');
text(3*pi, 2, ' right superior point');
disp('pick a point with the mouse');
pos = ginput(1);
gtext('a text')
