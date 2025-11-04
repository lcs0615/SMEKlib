% ===================== 中文教学注释 =====================
% 文件路径: Nonlinear Materials/derivate_pp.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function pp_der = derivate_pp(pp)
%derivate_pp derivates a piecewise-defined polynomial
% 
% pp_der = derivate_pp(pp) calculates the derivative of the piecewise polynomial(s) defined in pp
%
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

p_order = pp.order - 1; %order of the given polynomial

pp_der = pp; %copying the contents of input polynomials

pp_der.order = pp.order - 1; %derivation reduces order by 1

%updating the coefficients: replacing each c_n*x^n by n*c_n*x^(n-1):
pp_der.coefs = bsxfun(@times, pp.coefs(:, 1:(pp.order - 1)), p_order:-1:1);

end