% ===================== 中文教学注释 =====================
% 文件路径: Mesh/get_periodicityFactor.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function h = get_periodicityFactor(N_sec, p)
%get_periodicityFactor returns the periodicity factor.
% 
% Call syntax:
% h = get_periodicityFactor(N_sec, p)
% 
% Use real(h) for time-stepping analysis.
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

h = exp(1i * p * 2*pi/N_sec);

if abs(imag(h)) < 1e-4
    h = real(h);
end

end