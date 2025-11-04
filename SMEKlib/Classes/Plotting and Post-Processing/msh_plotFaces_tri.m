% ===================== 中文教学注释 =====================
% 文件路径: Classes/Plotting and Post-Processing/msh_plotFaces_tri.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [] = msh_plotFaces_tri(msh, faces, varargin)

%generating face
if faces < 0
    faces = 1:size(msh.faces_tri,2);
end

edges = toRow(unique(abs( msh.faces_tri(:, faces) )));
msh_plotEdges3D(msh, edges, varargin{:});

%{
n = zeros(3, size(faces,2));
for kn = 1:3
    n(kn, faces(kn,:)>0) = msh.edges(1, faces(kn, faces(kn,:)>0));
    n(kn, faces(kn,:)<0) = msh.edges(2, -faces(kn, faces(kn,:)<0));
end
n = [n; n(1,:)];

plot3( reshape(msh.nodes(1, n), 4, []), ...
    reshape(msh.nodes(2, n), 4, []), ...
    reshape(msh.nodes(3, n), 4, []), ...
    varargin{:});
%}

end