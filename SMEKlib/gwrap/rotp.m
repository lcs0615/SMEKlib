% ===================== 中文教学注释 =====================
% 文件路径: gwrap/rotp.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function y = rotp(p, angle, varargin)
%rotp Rotate point by angle.
%
% (c) 2018 Antti Lehikoinen / Smeklab Ltd

if numel(varargin) == 0
    %rotation around origin
    y = [cos(angle) -sin(angle);sin(angle) cos(angle)]*p;
else
    %rotation around point pc
    pc = varargin{1};
    y = bsxfun(@plus, p, -pc);
    y = [cos(angle) -sin(angle);sin(angle) cos(angle)]*p;
    y = bsxfun(@plus, y, pc);
end

end