% ===================== 中文教学注释 =====================
% 文件路径: Rotor Movement/Bilinear AG Matrix/get_relevantPolePairs.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [inds_pp, indsInMatrix] = get_relevantPolePairs(freqs, fm, N_pp)
%get_relevantPolePairs returns relevant pole-pair numbers and their
%indices.
% 
% 
% [inds_pp, indsInMatrix] = get_relevantPolePairs(freqs, fm)
% 
% (c) 2017 Antti Lehikoinen / Aalto University


TOL = 1e-3;

freqs_transf = fm*(0:N_pp);

inds_pp = find( ismembertol(freqs_transf, get_RelevantFrequencies(freqs), TOL) ) - 1;

indsInMatrix = sort([inds_pp(inds_pp==0)+1 inds_pp(inds_pp>0)*2 inds_pp(inds_pp>0)*2+1]);

end