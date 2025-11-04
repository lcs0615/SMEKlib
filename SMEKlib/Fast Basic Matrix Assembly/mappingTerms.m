% ===================== 中文教学注释 =====================
% 文件路径: Fast Basic Matrix Assembly/mappingTerms.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [F, F0] = mappingTerms(msh, varargin)
%mappingTerms.
% 
% [F, F0] = mappingTerms(msh) and
% [F, F0] = mappingTerms(msh, elements)
% return the entries of the affine map from the reference element to the
% global elements on the mesh. The terms are returned in the 4xNe matrix
% F = [F11; F21; F12; F22]
%
% Copyright (c) 2013-2016 Antti Lehikoinen / Aalto University

if ~isempty(varargin)
    elem = varargin{1};
    F = [msh.p(:, msh.t(2,elem)) - msh.p(:, msh.t(1,elem));
        msh.p(:, msh.t(3,elem)) - msh.p(:, msh.t(1,elem))];

    F0 = msh.p(:, msh.t(1,elem));
else
    F = [msh.p(:, msh.t(2,:)) - msh.p(:, msh.t(1,:));
    msh.p(:, msh.t(3,:)) - msh.p(:, msh.t(1,:))];

    F0 = msh.p(:, msh.t(1,:));
end
end