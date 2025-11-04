% ===================== 中文教学注释 =====================
% 文件路径: Classes/Elements and Shape Functions/Operators.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
classdef Operators < handle
	%{
    enumeration
        %operator types
        div, grad, curl, I
    end
	%}
    methods (Static)		
		%ugly non-enumeration-workaround for enumerations
		function e = div(); e = 20; end;
		function e = grad(); e = 21; end;
		function e = curl(); e = 22; end;
		function e = I(); e = 23; end;
	end
end