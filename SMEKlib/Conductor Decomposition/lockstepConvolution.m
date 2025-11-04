% ===================== 中文教学注释 =====================
% 文件路径: Conductor Decomposition/lockstepConvolution.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [hconst, varargout] = lockstepConvolution(Xs, h_imp, Nh, varargin)
%lockstepConvolution convolution with equal time-step lengths.

N_imp = size(h_imp, 1);
N_source = size(Xs,2);

N = size(Xs,1);

%determining indices
if nargout > 1
    inds_const_X = max(N_source - N_imp + 1, 1):(N_source-1);
    inds_const_h = (2 + numel(inds_const_X) - 1):-1:2;
else
    inds_const_X = max(N_source - N_imp + 1, 1):N_source;
    inds_const_h = (1 + numel(inds_const_X) - 1):-1:1;
end

%constant term
N_c = numel(inds_const_X);

hconst = reshape( transpose(h_imp(inds_const_h,:)), Nh, N_c*N ) * reshape( Xs(:,inds_const_X), N_c*N, 1);

%including decay term if supplied and not yet fully decayed
if (numel(varargin) > 0) && (size(varargin{1},2) >= N_source)
    hconst = hconst + varargin{1}(:, N_source);
end

if nargout > 1
    varargout{1} = reshape( transpose(h_imp(1,:)), Nh, [] );
end

end