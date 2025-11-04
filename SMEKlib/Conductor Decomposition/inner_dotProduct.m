% ===================== 中文教学注释 =====================
% 文件路径: Conductor Decomposition/inner_dotProduct.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function E = inner_dotProduct(x, Y)

E = x(1)*Y(1,:) + x(2)*Y(2,:);
end