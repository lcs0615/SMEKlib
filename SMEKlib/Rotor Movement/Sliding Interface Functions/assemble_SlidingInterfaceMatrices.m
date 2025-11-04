% ===================== 中文教学注释 =====================
% 文件路径: Rotor Movement/Sliding Interface Functions/assemble_SlidingInterfaceMatrices.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [Ms, Mr] = assemble_SlidingInterfaceMatrices(bndData, dims, varargin)

nu0 = 1/(pi*4e-7); %air reluctivity
r_si = dims.D_si / 2;
r_ro = dims.D_ro / 2;

N_ag_s = bndData.N_ag_s;
N_ag_r = bndData.N_ag_r;

if numel(varargin)
    ppNumbers = varargin{1};
    N_pp = numel(ppNumbers);
else
    N_pp = floor( max(N_ag_s, N_ag_r) / 2 -0.1);
    ppNumbers = 1:N_pp;
end

MF = assemble_AGbndFourierCoefficientMatrix(2*N_pp + 1, bndData);

[I,J,E] = find(MF);