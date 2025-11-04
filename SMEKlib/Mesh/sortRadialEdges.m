% ===================== 中文教学注释 =====================
% 文件路径: Mesh/sortRadialEdges.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function n = sortRadialEdges(p, e)
%sortSegmentEdges sorts nodes of circumferentially.
%
%
% (c) 2018 Antti Lehikoinen / Smeklab

n = toRow(unique(e));

[~,I] = sort( sum(p(:,n).^2,1) );
n = n(I);

end