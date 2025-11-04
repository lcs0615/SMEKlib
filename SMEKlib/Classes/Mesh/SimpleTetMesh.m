% ===================== 中文教学注释 =====================
% 文件路径: Classes/Mesh/SimpleTetMesh.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
classdef SimpleTetMesh < handle
    %SimpleTetMesh minimal mesh of 3D tetrahedrons.
    % 
    % (c) 2018 Antti Lehikoinen / Aalto University
    
    properties
        p, t, e, t2e, elementType
    end
    
    methods
        function msh = SimpleTetMesh(p, t, e, t2e)
            %SimpleTetMesh mesh constructor.
            % 
            % Call syntax 
            % msh = SimpleTetMesh(p, t, e, t2e)
            msh.p = p;
            msh.t = t;
            msh.e = e;
            msh.t2e = t2e;
            msh.elementType = Elements.tet;
        end
        
        function x0 = elementCenters(msh3, elem)
            if ~any(elem) || elem(1) < 0
                elem = 1:size(msh3.t,2);
            end
            x0 = zeros(3, numel(elem));
            for k = 1:size(msh3.t, 1)
                x0 = x0 + msh3.p(:, msh3.t(k, elem));
            end
            x0 = x0 / size(msh3.t, 1);
        end
        
        function [F, F0] = getMappingMatrix(this, elem, varargin)
            %getMappingMatrix Mapping matrix from reference to global
            %element.
            % 
            % Call syntax
            %   [F, F0] = getMappingMatrix(this, elem) OR
            %   [F, F0] = getMappingMatrix(this, elem, unused_args)
            
            if isempty(elem)
                elem = 1:size(this.t, 2);
            end
            
            F0 = this.p(:, this.t(1,elem));
            F = [this.p(:, this.t(2,elem)) - this.p(:, this.t(1,elem));
                this.p(:, this.t(3,elem)) - this.p(:, this.t(1,elem));
                this.p(:, this.t(4,elem)) - this.p(:, this.t(1,elem))];
        end
    end
end
                