% ===================== 中文教学注释 =====================
% 文件路径: gwrap/gw_addPoints.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function this = gw_addPoints(this, p, varargin)

Np = size(p,2);

%size check
if size(this.p, 2) < (this.N_points + Np)
    n_add = max(2*size(this.p,2), Np);
    this.p = [this.p zeros(3, n_add)];
end

%adding points
this.p(1:size(p,1), (this.N_points+1):(this.N_points+Np)) = p;
this.N_points = this.N_points + Np;
    
end