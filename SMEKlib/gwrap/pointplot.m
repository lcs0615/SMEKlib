% ===================== 中文教学注释 =====================
% 文件路径: gwrap/pointplot.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [hp, ht] = pointplot(x, name, varargin)
%pointplot demonstrative plot of gwrap control point.
%
% [hp, ht] = pointplot(x, name, plot_args)
% 
% (c) 2018 Antti Lehikoinen / Smeklab

hp = plot(x(1,:), x(2,:), varargin{:});

%plotting point name
ht = text(x(1), x(2), name, 'VerticalAlignment', 'bottom','Fontsize',8);

end