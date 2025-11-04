% ===================== 中文教学注释 =====================
% 文件路径: Mesh/Edge-Specific Functions/edgeDefs2edges.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function edgeList = edgeDefs2edges(msh, edgeDefs)
%edgeDefs2edges returns edge indices corresponding to edge definitions
%
% Function
% edgeDefs2edges(msh, edgeDefs)
% when given a definition of edges in the format [start_nodes; end_nodes]
% returns indices to corresponding edges as defined in the
% mesh struct msh
% 
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

[~, edgeList] = ismember(sort(edgeDefs,1)', msh.edges(1:2,:)', 'rows');

end