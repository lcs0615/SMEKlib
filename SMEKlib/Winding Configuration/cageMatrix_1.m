% ===================== 中文教学注释 =====================
% 文件路径: Winding Configuration/cageMatrix_1.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function Cr = cageMatrix_1(Qr, varargin)
% Cr = cageMatrix_1 Returns the loop matrix for a rotor cage with Qr
% bars
%   Cr = cageMatrix_1(Qr) ==> end-ring impedance assumed zero
%   Cr = cageMatrix_1(Qr, Zer) == end-ring impedance Z_er between two bars

if isempty(varargin)
    Cr = [ones(1,Qr-1); -eye(Qr-1)];
else
    error('HAHA F U NOT IMPLEMENTED YET')
end

end

