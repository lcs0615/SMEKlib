% ===================== 中文教学注释 =====================
% 文件路径: Conductor Decomposition/assemble_BoundaryFluxMatrix.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function M = assemble_BoundaryFluxMatrix(msh, boundaryData, v, M)

M = assemble_IntermeshBoundaryFluxMatrix(msh, msh, [boundaryData; boundaryData], v, M);

end