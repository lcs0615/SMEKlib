% ===================== 中文教学注释 =====================
% 文件路径: Classes/Mesh/order_t2e.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function t2e_ordered = order_t2e(msh)
%order_t2e orders the triangles-to-edges matrix.
% 
% (c) 2017 Antti Lehikoinen / Aalto University

t2e_ordered = msh.t2e;

for kn = 1:3
    inds = find( msh.t(kn,:) ~= msh.edges(1, msh.t2e(kn,:)) );
    t2e_ordered(kn, inds) = -t2e_ordered(kn, inds);
end

end