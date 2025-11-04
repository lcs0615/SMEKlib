% ===================== 中文教学注释 =====================
% 文件路径: Winding Configuration/statorConnectionMatrix.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function Cs = statorConnectionMatrix(W, N_conductorsPerSlot, N_series, varargin)
%statorConnectionMatrix returns the stator loop matrix.
% 
% Basic call syntax
% Cs = statorConnectionMatrix(W, N_conductorsPerSlot, N_series)
% where W is the winding configuration matrix. Use
% Cs = statorConnectionMatrix(W, N_conductorsPerSlot, N_series, transp)
% to specify transposition of conductors between slots. See the function slotConnectionMatrix_1
% for available transposition types.
%
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

Qs = size(W, 2);
N_phases = max(abs(W(:)));
N_layers = size(W,1);
N_inParallel = N_conductorsPerSlot  / N_series / N_layers;

Cs = zeros(Qs*N_conductorsPerSlot, N_inParallel*N_phases);

for kslot = 1:Qs
    Cs( ((kslot-1)*N_conductorsPerSlot+1):(kslot*N_conductorsPerSlot), : ) = ...
        slotConnectionMatrix_1(N_conductorsPerSlot, N_series, W, kslot, varargin{:}) ;
end

end

