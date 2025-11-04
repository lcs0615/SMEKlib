% ===================== 中文教学注释 =====================
% 文件路径: Classes/Elements and Shape Functions/IDfun.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
classdef IDfun < handle
    properties
        k
    end
    methods
        function this = IDfun(varargin)
            if numel(varargin)
                this.k = varargin{1};
            else
                this.k = 1;
            end
        end
        function N = eval(~, varargin)
            N = 1;
        end
        function [Nf, order, Nvars] = getData(~, ~)
            Nf = 1; order = 0; Nvars = 1;
        end
        function inds = getIndices(this, ~, ~, ~)
            inds = this.k;
        end
    end
end