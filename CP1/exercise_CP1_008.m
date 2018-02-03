% Santiago Hincapie Potes
% 201510008101
% 26/01/2018
%% Clean enviroment
clear
clc
%% 1.6.8 Menu Management in MATLAB.
figure;
while 1
    clf;
    title('Color game');
    axis([0 4 0 4]);
    N = menu('Choose a color', 'yellow', 'blue', 'red', 'green', 'exit');
    switch N
        case 1
            text(0, 4, 'yellow')
        case 2
            text(4, 4, 'blue')
        case 3
            text(4, 0, 'red')
        case 4
            text(0, 0, 'green')
        case 5
            break
    end
    pause(1)
end