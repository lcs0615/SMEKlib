% ===================== 中文教学注释 =====================
% 文件路径: knnsearch.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function I = knnsearch(X1, X2, varargin)

I = zeros( size(X2,1), 1);

if numel(varargin)
    weights = varargin{1};
    X1 = X1 .* weights;
    X2 = X2 .* weights;
end

for k = 1:size(X2,1)
    dists = sum(bsxfun(@minus, X1, X2(k,:)).^2, 2);
    [~, ind] = min(dists);
    I(k) = ind;
end