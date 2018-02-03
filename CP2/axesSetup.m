% Santiago Hincapie Potes
% 201510008101
% 2/02/2018

function axesSetup(data)
% This function arrange graphics as Oscar's describe in point 1.2
% INPUTS:
%   data: and A x B Matrix of points
    xmin = min(data(1, :)); xmax = max(data(1, :));
    ymin = min(data(2, :)); ymax = max(data(2, :));
    zmin = min(data(3, :)); zmax = max(data(3, :));
    axis([xmin, xmax, ymin, ymax, zmin, zmax])
    axis equal
end