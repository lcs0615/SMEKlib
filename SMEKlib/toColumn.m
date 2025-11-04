% ===================== 中文教学注释 =====================
% 文件路径: toColumn.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function x = toColumn(x)
%toColumn guess what.
% 
% (c) 2017 Antti Lehikoinen / Aalto University

if ~iscolumn(x)
    x = transpose(x);
end

end