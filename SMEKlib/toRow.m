% ===================== 中文教学注释 =====================
% 文件路径: toRow.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function x = toRow(x)
%toRow converts vector to row-vector.
%
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

if iscolumn(x)
    x = transpose(x);
end

end