% ===================== 中文教学注释 =====================
% 文件路径: Classes/Other/get_PrismIntegrationPoints.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [X, W] = get_PrismIntegrationPoints(p)
%get_PrismIntegrationPoints Quadrature points for a unit prism.
% 
% [X, W] = get_PrismIntegrationPoints(p)
%
% (c) 2017 Antti Lehikoinen / Aalto University

[x12, w12] = get_2DtriangleIntegrationPoints(p);

if p == 0
    p = 1;
end

[z3, w3] = get_1DQuadPoints(p);
z3 = 0.5 + 0.5*z3;
w3 = 0.5*w3;

X = [repmat(x12, 1, numel(w3));
    kron(z3, ones(1, numel(w12)))];

W = kron(w3, w12);

end