% ===================== 中文教学注释 =====================
% 文件路径: Classes/Mesh/to2ndOrder.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [p, t] = to2ndOrder(p, t, varargin)
%to2ndOrder transforms triangulation to second order.
% 
% [p, t] = to2ndOrder(p, t)
% [p, t] = to2ndOrder(p, t, edges, t2e)
% 
% (c) 2017 Antti Lehikoinen / Aalto University

if numel(varargin)
    edges = varargin{1};
    t2e = varargin{2};
else
    [edges, ~, t2e] = getEdges(t);
end

pnew = 0.5*p(:,edges(1,:)) + 0.5*p(:,edges(2,:));

Np = size(p,2);

p = [p pnew];
t = [t; Np+t2e];

end