% ===================== 中文教学注释 =====================
% 文件路径: Plotting and Post-Processing/msh_plot.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function h = msh_plot(msh, nodes, varargin)
%msh_plot plots nodes on mesh.
% 
% h = msh_plot(msh, nodes, plotArgs) the specified nodes of the mesh.
%
% If the mesh msh has a field "rotel" listing the rotor elements, the call 
% syntax can be msh_plot(msh, nodes, rotorAngle, plotArgs)
% 
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

[p_plot, plotArgs] = aux_Plotting_parseInput(msh, varargin{:});

h = plot(p_plot(1, nodes), p_plot(2, nodes), plotArgs{:});

end