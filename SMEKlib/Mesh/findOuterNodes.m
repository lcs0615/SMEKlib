% ===================== 中文教学注释 =====================
% 文件路径: Mesh/findOuterNodes.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [n_out, e_out] = findOuterNodes(t)
%findOuterNodes returns the outer nodes of the triangulation.
% 
% [n_out, e_out] = findOuterNodes(t) returns the outer nodes n_out of the
% triangulation t, along with the outer edges e_out
% 
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

[edges, e2t, ~] = getEdges(t);

e_out = edges(:, ~e2t(2,:));

e_out = order_edges(e_out);
n_out = e_out(1,:);

end