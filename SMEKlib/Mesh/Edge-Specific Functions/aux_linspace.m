% ===================== 中文教学注释 =====================
% 文件路径: Mesh/Edge-Specific Functions/aux_linspace.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function y = aux_linspace(x1, x2, Npoints)
%aux_linspace auxiliary linspace function
% 
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

blin = linspace(1, 10, Npoints); 

y = bsxfun(@plus, bsxfun(@times, (x2-x1)/9, blin), x1 - (x2-x1)/9);

end