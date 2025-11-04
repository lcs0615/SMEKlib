% ===================== 中文教学注释 =====================
% 文件路径: Mesh/Edge-Specific Functions/aux_intlogspace.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function y = aux_intlogspace(x1, x2, Npoints)
%aux_intlogspace auxiliary logspace function.
% 
% Function y = aux_intlogspace(x1, x2, Npoints) returns logarithmically 
% spaced points on the interval ]x1,x2[
% x1,x2 can be nx1 vectors
% 
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

lob = logspace( 0, 1, Npoints + 2); %basic log space

ytemp = bsxfun(@plus, bsxfun(@times, (x2-x1)/9, lob), x1 - (x2-x1)/9);

y = ytemp(:, 2:(Npoints+1));

end