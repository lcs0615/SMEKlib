% ===================== 中文教学注释 =====================
% 文件路径: dq.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function xdq = dq(x, angles)

%alpha-beta transformation
xab = 2/3 * [1 -0.5 -0.5;0 sqrt(3)/2 -sqrt(3)/2]*x;

%dq transformation, vectorized
xdq = [cos(angles).*xab(1,:) + sin(angles).*xab(2,:);
    -sin(angles).*xab(1,:) + cos(angles).*xab(2,:)];

end