% ===================== 中文教学注释 =====================
% 文件路径: Classes/Elements and Shape Functions/Elements.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
classdef Elements < handle
	%{
    enumeration
        %element types
        triangle, prism, composite,
        triangle2 %non-curved second-order
        triangle2I %isoparametric second-order
    end
	%}
	
    
    methods (Static)
		
		%ugly non-enumeration-workaround for enumerations
		function e = triangle(); e = 11; end;
		function e = triangle2(); e = 12; end;
		function e = triangle2I(); e = 13; end;		
		function e = prism(); e = 14; end;
		function e = composite(); e = 15; end;
        function e = tet(); e = 16; end;
        
        function bl = isIsoparametric(type)
            if type == Elements.triangle2I
                bl = true; return;
            end
            bl = false;
        end
        function bl = isTriangle(type)
            if type == Elements.triangle || type == Elements.triangle2 || type == Elements.triangle2I
                bl = true;
                return;
            end
            bl = false;
        end
        function bl = isTet(type)
            if type == Elements.tet
                bl = true;
                return;
            end
            bl = false;
        end
        function bl = isPrism(type)
            if type == Elements.prism;
                bl = true;
                return;
            end
            bl = false;
        end
        
        function X = refPoints_nodes(type)
            switch type
                case Elements.prism
                    X = [0 0 0; 1 0 0; 0 1 0;
                        0 0 1; 1 0 1; 0 1 1]';
                otherwise
                    error('');
            end
        end
        
        function X = refPoints_edges(type, varargin)
            switch type
                case Elements.prism
                    tau = [1 0 0; -1 1 0; 0 -1 0; 
                        1 0 0; -1 1 0; 0 -1 0;
                        0 0 1; 0 0 1; 0 0 1]';
                    tau0 = Elements.refPoints_nodes(Elements.prism);
                    Np = 7;
                    X = repmat(tau0(:,[1:end 1:3]), 1, Np) + kron(linspace(0,1, Np), tau);
                otherwise
                    error('');
            end
        end
    end
end