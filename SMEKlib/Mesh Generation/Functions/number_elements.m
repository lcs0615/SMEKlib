% ===================== 中文教学注释 =====================
% 文件路径: Mesh Generation/Functions/number_elements.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [] = number_elements(p, t, varargin)
%number_elements plots element numbers.
% 
% number_elements(p, t) plots the indices of the elements (in t) in their
% centers (according to the nodal coordinates p.
%
% (c) 2017 Antti Lehikoinen

x = mean( reshape(p(1,t), size(t,1), []), 1);
y = mean( reshape(p(2,t), size(t,1), []), 1);

%plot(x, y, 'ko', 'Markersize', 12);
text(x, y, num2str((1:size(t,2))'), 'VerticalAlignment', 'middle', ...
    'HorizontalAlignment', 'center','Fontsize',8, varargin{:});

end
