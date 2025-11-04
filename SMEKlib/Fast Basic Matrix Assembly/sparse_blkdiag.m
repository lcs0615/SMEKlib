% ===================== 中文教学注释 =====================
% 文件路径: Fast Basic Matrix Assembly/sparse_blkdiag.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function Mo = sparse_blkdiag(varargin)
%
% Copyright (c) 2013-2016 Antti Lehikoinen / Aalto University

Nb = numel(varargin);
M = [];
ri_r = 0;
ri_c = 0;

for kb = 1:Nb
    ri_r = ri_r + size(varargin{kb}, 1);
    ri_c = ri_c + size(varargin{kb}, 2);
    
    [I,J,E] = find(varargin{kb});
    
    M = sparseAdd(ri_r + I, ri_c + J, E);
end

Mo = sparseFinalize(M, ri_r, ri_c);

end