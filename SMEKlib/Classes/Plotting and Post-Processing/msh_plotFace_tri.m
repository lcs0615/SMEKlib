% ===================== 中文教学注释 =====================
% 文件路径: Classes/Plotting and Post-Processing/msh_plotFace_tri.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [] = msh_plotFace_tri(msh, faces, varargin)

%generating face
n = zeros(3, size(faces,2));
for kn = 1:3
    n(kn, faces(kn,:)>0) = msh.edges(1, faces(kn, faces(kn,:)>0));
    n(kn, faces(kn,:)<0) = msh.edges(2, -faces(kn, faces(kn,:)<0));
end

n

plot3( reshape(msh.nodes(1, n), 1, []), ...
    reshape(msh.nodes(2, n), 1, []), ...
    reshape(msh.nodes(3, n), 1, []), ...
    varargin{:});

end