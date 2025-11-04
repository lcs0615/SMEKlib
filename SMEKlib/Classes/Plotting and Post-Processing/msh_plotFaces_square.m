% ===================== 中文教学注释 =====================
% 文件路径: Classes/Plotting and Post-Processing/msh_plotFaces_square.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [] = msh_plotFaces_square(msh, faces, varargin)

%generating face
if faces < 0
    faces = 1:size(msh.faces_square,2);
end

edges = toRow(unique(abs( msh.faces_square(:, faces) )));
msh_plotEdges3D(msh, edges, varargin{:});

end