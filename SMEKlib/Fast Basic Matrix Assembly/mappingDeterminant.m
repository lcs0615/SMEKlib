% ===================== 中文教学注释 =====================
% 文件路径: Fast Basic Matrix Assembly/mappingDeterminant.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function detF = mappingDeterminant(F)
%mappingDeterminant determinant of the affine mapping.
%
% Copyright (c) 2013-2016 Antti Lehikoinen / Aalto University

detF = F(1,:).*F(4,:) - F(2,:).*F(3,:);
end