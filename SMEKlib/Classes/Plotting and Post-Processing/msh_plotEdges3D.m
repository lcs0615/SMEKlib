% ===================== 中文教学注释 =====================
% 文件路径: Classes/Plotting and Post-Processing/msh_plotEdges3D.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [] = msh_plotEdges3D(msh, edges, varargin)
%msh_plotEdges3D edge plot in 3D.
% 
% (c) 2017 Antti Lehikoinen / Aalto University

if edges < 0
    edges = 1:size(msh.edges, 2);
end
%{
plot3( [msh.nodes(1, msh.edges(1, edges));
    msh.nodes(1, msh.edges(2, edges))], ...
    [msh.nodes(2, msh.edges(1, edges));
    msh.nodes(2, msh.edges(2, edges))], ...
    [msh.nodes(3, msh.edges(1, edges));
    msh.nodes(3, msh.edges(2, edges))], ...
    varargin{:});
%}

%{
plot3( reshape(msh.nodes(1, msh.edges(:,edges)), 2, []), ...
    reshape(msh.nodes(2, msh.edges(:,edges)), 2, []), ...
    reshape(msh.nodes(3, msh.edges(:,edges)), 2, []), ...
    varargin{:});
%}

line( reshape(msh.nodes(1, msh.edges(:,edges)), 2, []), ...
    reshape(msh.nodes(2, msh.edges(:,edges)), 2, []), ...
    reshape(msh.nodes(3, msh.edges(:,edges)), 2, []), ...
    varargin{:});

end