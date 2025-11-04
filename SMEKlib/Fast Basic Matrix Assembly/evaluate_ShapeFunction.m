% ===================== 中文教学注释 =====================
% 文件路径: Fast Basic Matrix Assembly/evaluate_ShapeFunction.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function V = evaluate_ShapeFunction(op, fun, k, varargin)

if strcmp(fun, 'nodal')
   phi_ref = {  [-1 -1 1]; [1 0 0]; [0 1 0] };
   if strcmp(op, '')
        V = phi_ref{k}*X;
    elseif strcmp(op, 'grad')
        F = varargin{1}; detF = varargin{2};
        V = mappingTimesVector(phi_ref{k}(1,1:2)', true, true, F, [], detF);
    elseif strcmp(op, 'curl')
        F = varargin{1}; detF = varargin{2};
        V = [0 1;-1 0] * mappingTimesVector(phi_ref{k}(1,1:2)', true, true, F, [], detF);
    else
        error('Invalid operator.');
    end
else
    error('Shape function not implemented.');
end


end
