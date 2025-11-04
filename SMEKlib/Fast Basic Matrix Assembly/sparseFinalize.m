% ===================== 中文教学注释 =====================
% 文件路径: Fast Basic Matrix Assembly/sparseFinalize.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function Sf = sparseFinalize(S, varargin)
%sparseFinalize assemble sparse matrix from sparse struct.
% 
% Call syntax
% S = sparseFinalize(Sf, args)
% where Sf = sparse struct and args is a list of arguments (see Matlab's
% "sparse" for examples).
%
% Copyright (c) 2013-2016 Antti Lehikoinen / Aalto University

ri = S.ri-1;
 
Sf = sparse(S.I(1:ri), S.J(1:ri), S.E(1:ri), varargin{:});

end