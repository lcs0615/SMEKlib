% ===================== 中文教学注释 =====================
% 文件路径: Plotting and Post-Processing/msh_triplot.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function h = msh_triplot(msh, elements, varargin)
%msh_triplot plots elements.
% 
% msh_triplot(msh, elements, plotArgs)
% plots the specified elements of the mesh msh, using the plot arguments
% plotArgs (for triplot).
%
% If the mesh msh has a field "rotel" listing the rotor elements, the call 
% syntax can be msh_triplot(msh, elements, rotorAngle, plotArgs)
% 
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

[p_plot, plotArgs] = aux_Plotting_parseInput(msh, varargin{:});

if any(elements)
    h = triplot( msh.t(1:3,elements)', p_plot(1,:), p_plot(2,:), plotArgs{:} );
else
    h = triplot( msh.t(1:3,:)', p_plot(1,:), p_plot(2,:), plotArgs{:} );
end

end