% Santiago Hincapie Potes
% 201510008101
% 2/02/2018

% Clear the working space
clc;
clear;

% define constants
O0 = [3450, 3917, 65]';
Delta = [3300, 3700, 0]';
WORLD = eye(4);
AXES_SIZE=50;
S0 = eye(4); S0(1:3, 4) = O0;

% read data
[points_cart, triangles] = read_pseudo_vrml("Vert_Geom_Coarse.txt", "Vert_Topo_Coarse.txt");
N_points = size(points_cart, 1);

% create first figure
figure;

draw_fill_solid(points_cart, triangles, 'b');
axesSetup(points_cart)

points_h = ones(4, N_points);
points_h(1:3,:) = points_cart';

% create second figure
figure;
plt_axes_str(WORLD, AXES_SIZE, 'k', 'b', 'r', 'Xw', 'Yw', 'Zw', 'Ow')

%% Translation
M1 = eye(4); M1(1:3, 4) = -Delta;
points_2 = M1 * points_h;
S2 = M1 * S0;

figure;
draw_fill_solid(points_2', triangles, 'X')
axesSetup(points_2)

figure;
plt_axes_str(S2, AXES_SIZE, 'k', 'b', 'r', 'X2', 'Y2', 'Z2', 'O2')

%% Rotation
u = [0.9501, 0.2311, 0.6068]'; u = u/norm(u);
temp = [0.4860, 0.8913, 0.7621]';
w = cross(u, temp); w = w/norm(w);
v = cross(w, u);

% Define M2 matrix
M2 = zeros(4, 4);
M2(1:3, 1:3) = [u, v, w];
M2(1 : 3, 4) = 0;
M2(4, :) = [0, 0, 0, 1];

% Check transformation properties
R = M2(1:3, 1:3); fprintf("R is SO(3) because det(M2) = %f\n", det(R));

% Rotate
points_3 = M2 * points_2;
S3 = M2 * S2;

% Plots
figure;
draw_fill_solid(points_3', triangles, 'r');
axesSetup(points_3)

figure;
plt_axes_str(S3, AXES_SIZE, 'k', 'b', 'r', 'X2', 'Y2', 'Z2', 'O2')

%% Projection
% Define M3 matrix
M3 = eye(4);
M3(1 : 3, 1 : 3) = [u, v, u + v]; M3(1 : 3, 4)= 0; M3(4, :) = [0, 0, 0, 1];

% Check transformatio properties
Pr = M3(1 : 3, 1 : 3); fprintf("Pr is non invertible because det(Pr) = %f\n", det(Pr));

% Project
points_4 = M3 *  points_2;
S4 = M3 * S2;

% Plot
figure;
draw_fill_solid(points_4', triangles, 'r');
axesSetup(points_4)

figure;
plt_axes_str(S4, AXES_SIZE, 'k', 'b', 'r', 'X2', 'Y2', 'Z2', 'O2')

%% Reflection
% Define M4 matrix
M4 = eye(4);
M4(1:3, 1:3) = [u, v, -w]; M4(1:3, 4)= 0; M4(4, :) = [0, 0, 0, 1];

% Check transformatio properties
RF = M4(1 : 3, 1 : 3); fprintf("RF is O(3) and not SO(3) because det(RF) = %f\n", det(RF));

% Reflect
points_5 = M4 *  points_2;
S5 = M4 * S2;

% Plot
figure;
draw_fill_solid(points_5', triangles, 'r');
axesSetup(points_5)

figure;
plt_axes_str(S4, AXES_SIZE, 'k', 'b', 'r', 'X2', 'Y2', 'Z2', 'O2')