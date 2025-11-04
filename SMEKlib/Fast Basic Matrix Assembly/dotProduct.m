% ===================== 中文教学注释 =====================
% 文件路径: Fast Basic Matrix Assembly/dotProduct.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function E = dotProduct(V1, V2)
%dotProduct vectorized dot product.
%
% Copyright (c) 2013-2016 Antti Lehikoinen / Aalto University


E = sum(V1.*V2, 1);
%E = sum(bsxfun(@times, V1, V2), 1);
end