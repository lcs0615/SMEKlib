% ===================== 中文教学注释 =====================
% 文件路径: Conductor Decomposition/aux_intlinspace.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function y = aux_intlinspace(x1, x2, Npoints)
%returns Npoints evenly spaced points on the interval ]x1,x2[

blin = linspace(1, 10, Npoints + 2); 

ytemp = bsxfun(@plus, bsxfun(@times, (x2-x1)/9, blin), x1 - (x2-x1)/9);

y = ytemp(:, 2:(Npoints+1));
end