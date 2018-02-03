% Santiago Hincapie Potes
% 201510008101
% 26/01/2018
%% Clean enviroment
clear
clc
%% 1.6.6 Plotting of 2D Polygonal Regions in MATLAB.
N = input('type the number of points to be captured from the screen:\n');
figure;
clf;
coordX = [1, 2, 2, 1];
coordY = [2, 2, 3, 3];
plot(coordX, coordY);
axis([0 3 1.5 3.5]);
xlabel('X');
ylabel('Y');
pause(5);

% play with rectangles :D
figure;
coordX = [coordX 1];
coordY = [coordY 2];
plot(coordX, coordY);
hold on;
axis([0 3 1.5 3.5]);
fill(coordX, coordY, 'k');
fprintf('catch the %d points from the screen\n', N);
xy = ginput(N);
plot(xy(:,1), xy(:,2))
