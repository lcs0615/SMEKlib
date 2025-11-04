% ===================== 中文教学注释 =====================
% 文件路径: Plotting and Post-Processing/msh_edgeplot.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function h = msh_edgeplot(msh, edges, varargin)
%msh_edgeplot plots edges of the mesh.
% 
% h = msh_edgeplot(msh, edges, plotArgs) plots a set of edges defined on
% the mesh msh. If edges is a 1xN array, the edges are assumed defined in
% the field msh.edges. Alternatively, is edges is a 2xN array, its each
% column is used to define an edge.
%
% If the mesh msh has a field "rotel" listing the rotor elements, the call 
% syntax can be msh_edgeplot(msh, edges, rotorAngle plotArgs)
% 
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

[p_plot, plotArgs] = aux_Plotting_parseInput(msh, varargin{:});


if size(edges,1) == 1
    h = plot( [p_plot(1, msh.edges(1,edges)); p_plot(1, msh.edges(2,edges))], ...
        [p_plot(2, msh.edges(1,edges)); p_plot(2, msh.edges(2,edges))], plotArgs{:});
else
    h = plot( [p_plot(1, edges(1,:)); p_plot(1, edges(2,:))], ...
        [p_plot(2, edges(1,:)); p_plot(2, edges(2,:))], plotArgs{:} );
end

end