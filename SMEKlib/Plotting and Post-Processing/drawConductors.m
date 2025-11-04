% ===================== 中文教学注释 =====================
% 文件路径: Plotting and Post-Processing/drawConductors.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [] = drawConductors(rs, Xc, varargin)
%drawConductors draws conductors as circles.
% 
% drawConductors(rs, Xc, args) draws round conductors with the radius rs
% each centered at columns of Xc. "args" contains the property-value pairs
% for the plotting function "rectangle".
% 
% Alternatively,
% drawConductors(rs, Xc, theta, args)
% rotates the conductors by theta radians.
%
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

if (numel(varargin) > 0) && isa(varargin{1}, 'double')
        rotA = varargin{1};
        Xc = [cos(rotA) -sin(rotA);sin(rotA) cos(rotA)] * Xc;
        plotArgs = {varargin{2:numel(varargin)}};
    else
        plotArgs = varargin;
end

for kc = 1:size(Xc,2)
    rectangle('Position', [Xc(:,kc)-rs; rs*[2;2]]', ...
        'Curvature', [1 1], plotArgs{:});
end

end