% ===================== 中文教学注释 =====================
% 文件路径: gwrap/gw_addLinePoints.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function this = gw_addLinePoints(this, xstart, xend, tol, varargin)

Np = ceil( norm(xend - xstart) / tol );
p = bsxfun(@plus, xstart(1:2,:), bsxfun(@times, xend(1:2,:)-xstart(1:2,:), linspace(0,1,Np)));

Np_orig = this.N_points;
this.addPoints(p);

Np = size(p, 2);
ldef = [1:(Np-1);2:Np] + Np_orig;
this.addLines(ldef, varargin{:});
end