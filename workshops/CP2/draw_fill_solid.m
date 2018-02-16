% Santiago Hincapie Potes
% 201510008101
% 2/02/2018


function draw_fill_solid(verts, loops, face_color)
% This function draws a polyhedron withouth holes
% whose faces are filled with a color
% INPUTS:
%   verts: (Nv x 3) or (Nv x 4) array or real numbers. Row �i� contains
%           the coordinates x, y, z of the vertex �i�.
%   loops: (Nf x 3) array of integer numbers. Row �i� corresponds to
%           the indices of the vertices of triangle �i�.
%   face_color: One of �m�, �c�, �b�, �y�, �g�, �r�, �k� corresponding to
%               the color to draw the faces of the solid. If face_color is �X�
%               the drawing is in wireframe format with color �k�.
    Nf = length(loops);
    hold on;
    for i=1:Nf
        idx = loops(i,:);
        coord = verts(idx, :);
        plot3(coord(:, 1)', coord(:, 2)', coord(:, 3)')
        fill3(coord(:, 1)', coord(:, 2)', coord(:, 3)', face_color)
    end
    hold off;
    
end