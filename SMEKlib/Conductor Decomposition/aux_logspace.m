% ===================== 中文教学注释 =====================
% 文件路径: Conductor Decomposition/aux_logspace.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function y = aux_logspace(x1, x2, N)
% y = aux_logspace(x1, x2, N)
% returns N points spaced logarithmically on the interval
% [x1 x2]

lob = logspace( 0, 1, N); %basic log space

y = bsxfun(@plus, bsxfun(@times, (x2-x1)/9, lob), x1 - (x2-x1)/9);

end