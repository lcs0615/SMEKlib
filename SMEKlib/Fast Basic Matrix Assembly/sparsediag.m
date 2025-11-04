% ===================== 中文教学注释 =====================
% 文件路径: Fast Basic Matrix Assembly/sparsediag.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function D = sparsediag(V)
%sparsediag sparse diagonal matrix.
% 
% D = sparsediag(V)
% is equivalent to sparse(diag(V))
%
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

Np = numel(V);
D = sparse(1:Np, 1:Np, V, Np, Np);

end