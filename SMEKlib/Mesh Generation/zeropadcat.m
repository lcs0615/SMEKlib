% ===================== 中文教学注释 =====================
% 文件路径: Mesh Generation/zeropadcat.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function y = zeropadcat(varargin)

Nc = sum( cellfun('size', varargin, 2) );
Nr = max( cellfun('size', varargin, 1) );

y = zeros(Nr,Nc);
ri = 1;
for k = 1:size(varargin,2)
    [r,c] = size(varargin{k});
    y(1:r,ri:(ri+c-1)) = varargin{k};
    ri = ri+c;
end

end