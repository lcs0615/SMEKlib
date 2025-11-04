% ===================== 中文教学注释 =====================
% 文件路径: Classes/Mesh/SimpleMesh.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
classdef SimpleMesh < handle
    %SimpleMesh a mesh class reduced functionality.
    properties
        elementType
        p, t, matel
    end
    
    methods
        function msh = SimpleMesh(p, t)
            msh.p = p;
            msh.t = t;
            msh.matel = [];
            switch size(t, 1)
                case 3
                    msh.elementType = Elements.triangle;
                case 6
                    msh.elementType = Elements.triangle2I;
                otherwise
                    error('Element type not included here yet.');
            end
        end
        
        function [F, F0] = getMappingMatrix(this, varargin)
            [F, F0] = msh_getMappingMatrix(this, varargin{:});
        end
        
    end
end