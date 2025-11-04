% ===================== 中文教学注释 =====================
% 文件路径: gwrap/gw_fillSurface.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [] = gw_fillSurface(this, surfacename, varargin)

if isempty(surfacename)
    names = this.surfaces.keys;
    for k = 1:numel(names)
        gw_fillSurface(this, names{k}, varargin{:});
    end
end

loopInds = this.surfaces.get(surfacename); %line loops making up this surface

for k = 1:numel(loopInds)    
    lineloop = this.ll{ abs(loopInds(k)) };
    
    lines = this.l(:, abs(lineloop));
    X = zeros(1, numel(lineloop)); Y = X;
    X(lineloop>0) = this.p(1, lines(1,lineloop>0));
    Y(lineloop>0) = this.p(2, lines(1,lineloop>0));
    X(lineloop<0) = this.p(1, lines(2,lineloop<0));
    Y(lineloop<0) = this.p(2, lines(2,lineloop<0));

    fill(X([1:end 1]), Y([1:end 1]), varargin{1});
end

end   