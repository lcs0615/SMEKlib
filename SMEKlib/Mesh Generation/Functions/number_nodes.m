% ===================== 中文教学注释 =====================
% 文件路径: Mesh Generation/Functions/number_nodes.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [] = number_nodes(p)
%number_nodes plots node numbers.
% 
% number_nodes(p) plots the indices of the nodes next to their coordinates
% in p.
%
% (c) 2017 Antti Lehikoinen / Aalto University

text(p(1,:), p(2,:), num2str((1:size(p,2))'), 'VerticalAlignment', 'bottom','Fontsize',8);

end
