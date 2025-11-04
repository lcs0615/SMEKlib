% ===================== 中文教学注释 =====================
% 文件路径: Mesh/Edge-Specific Functions/edges2elements.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function elems = edges2elements(msh, edgeDefs)
%edges2elements element that an edge belongs to.
% 
% Function
% elems = edges2elements(msh, edgeDefs)
% when given a definition of edges in the format [start_nodes; end_nodes]
% returns indices to the first element each of these edges
% belongs to, as defined in the mesh struct msh
% 
% Copyright (c) 2016 Antti Lehikoinen / Aalto University


edgeList = edgeDefs2edges(msh, edgeDefs);
elems = msh.e2t(1, edgeList);


end