% Santiago Hincapie Potes
% 201510008101
% 2/02/2018


function [points,triangs]=read_pseudo_vrml(geom_file_name,topo_file_name)
% INPUTS:
%   geom_file_name: file with a (Nv x 3) array of real numbers.
%                   The (x,y,z) cartesian coordinates of line ’i’
%                   correspond to the vertex ’i’ of a triangular shell.
%   topo_file_name: file with a (Nf x 3) array of integer numbers.
%                   The (k,l,m) integer indexes in the line ’i’ are the
%                   indexes of the triangle vertices in the Geometry File.
%                   The indices of the vertices start in ZERO, not in ONE.
% 
% For this exercise you can assume that all the triangular
% face vertices are enumerated in CCW order w.r.t. the
% external normal vector. You do not need to order the faces.
%
% OUTPUTS:
%   points: (Nv x 3 ) array or real numbers. Column ’j’ corresponds to
%           the coordinates of a planar face vertex.
%   triangs: (Nf x 3) array of integer numbers. Entry ’j’ corresponds to
%            the indices of the three vertices of face ’j’. The indices
%            of the vertices start in ONE.

    points = load(geom_file_name);
    triangs = load(topo_file_name) + 1;
end