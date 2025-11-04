% ===================== 中文教学注释 =====================
% 文件路径: Classes/Plotting and Post-Processing/msh_plot3D.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [] = msh_plot3D(msh, nodes, varargin)

plot3(msh.nodes(1,nodes), msh.nodes(2,nodes), msh.nodes(3,nodes), varargin{:});

end