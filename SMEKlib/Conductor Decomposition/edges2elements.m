% ===================== 中文教学注释 =====================
% 文件路径: Conductor Decomposition/edges2elements.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function elems = edges2elements(msh, edgeDefs)
% given a definition of edges in the format [start_nodes; end_nodes]
% this function returns indices to the first element each of these edges
% belongs to, as defined in the mesh struct msh


edgeList = edgeDefs2edges(msh, edgeDefs);
elems = msh.e2t(1, edgeList);


end