% ===================== 中文教学注释 =====================
% 文件路径: gwrap/gw_mesh.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [] = gw_mesh(gm, varargin)

if numel(varargin)
    filename = varargin{1};
else
    filename = [gm.gpath 'gm_geo.geo'];
end

%system(['"' gm.gpath '"' 'gmsh ' '"' filename '"' ' -2']);
system(['"' gm.gpath '"' 'gmsh ' '"' filename '"' ' -2 -format msh2']);
end