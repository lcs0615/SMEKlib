% ===================== 中文教学注释 =====================
% 文件路径: Rotor Movement/Moving Band/angleDifference.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function d = angleDifference(a1, a2)
%angleDifference signed difference between angles
% 
% d = angleDifference(a1, a2)
% calculates the signed difference a1-a2 between the angles
%
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

d = mod(a1 - a2 + pi,2*pi) - pi;
end