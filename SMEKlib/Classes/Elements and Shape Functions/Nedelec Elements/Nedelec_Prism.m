% ===================== 中文教学注释 =====================
% 文件路径: Classes/Elements and Shape Functions/Nedelec Elements/Nedelec_Prism.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
classdef Nedelec_Prism < handle
    methods (Static)
        function C = getCoefficients(op)
            persistent CI Ccurl
            switch op
                case Operators.I
                    if isempty(CI)
                    	CI = preCompute_referenceShapeFunctions(Elements.prism, ShapeFunctions.nedelec);
                    end
                    C = CI; return;
                case Operators.curl
                    if isempty(Ccurl)
                        Ctemp = Nedelec_Prism.getCoefficients(Operators.I);
                        Ccurl = PolynomialBasis3D.curl_coeffs(Ctemp, Elements.prism, ShapeFunctions.nedelec);
                    end
                    C = Ccurl; return
                otherwise
                    error('Operator type not yet implemented')
            end

        end
    end
end