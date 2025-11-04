% ===================== 中文教学注释 =====================
% 文件路径: Conductor Decomposition/aux_linspace.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function y = aux_linspace(x1, x2, Npoints)

blin = linspace(1, 10, Npoints); 

y = bsxfun(@plus, bsxfun(@times, (x2-x1)/9, blin), x1 - (x2-x1)/9);

end