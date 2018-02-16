% Santiago Hincapie Potes
% 201510008101
% 26/01/2018
%% Clean enviroment
clear
clc
%% Invariants and Iterative Cycles
N = input('type the number of rows of vector M:\n');
M = rand(N, 1);
sum = 0;
i = 1;
while(i < N + 1)
    sum = sum + M(i);
    i = i + 1;
end