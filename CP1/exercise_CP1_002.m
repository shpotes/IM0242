% Santiago Hincapie Potes
% 201510008101
% 26/01/2018
%% Clean enviroment
clear
clc

%% log file
diary ON;

%% 1.6.2 Scalars, Vector and Matrix Operations in MATLAB
% Scalar declaration
esc1 = 12;
esc2 = 4;

% Scalar operation
sum_esc = esc1 + esc2;
subst_esc = esc1 - esc2;
mult_esc = esc1 * esc2;
div_esc = esc1 / esc2;
exp_esc = esc1 ^ esc2;
rz_esc = sqrt(exp_esc);

% Matrix declaration
M1 = ones(4, 4);
M2 = rand(4, 4);
M3 = zeros(3, 4);
identity = eye(4);

% Matrix operation
mult1 = esc1 * identity;
mult2 = mult1 * M2;
produc1 = esc2 * M1;

L = size(M2);
produc2 = ones(L);
for i = 1:L(1)
    for j = 1:L(2)
        produc2(i, j) = produc1(i, j) * M2(i, j);
    end
end

elev = ones(L);
for i = 1:L(1)
    for j = 1:L(2)
        elev(i, j) = sqrt(M2(i, j));
    end
end
clearvars L

% Vector declaration
vect1 = [1 2 3];
vect2 = M2(1:3, 1);
vect50 = 1:2:50;
v_size = size(vect2);
prod = vect2 * vect1;
vect1 = transpose(vect1);

%% log file
diary OFF
