% ===================== 中文教学注释 =====================
% 文件路径: Classes/Matrix Assembly/crossProduct.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function b = crossProduct(u,v)
%crossProduct Cross product in 2D or 3D.
%
% b = crossProduct(u,v)
% 
% Referenced from https://en.wikipedia.org/wiki/Cross_product
% 
% (c) 2017 Antti Lehikoinen / Aalto University

if size(u, 1) == 2
   b = u(1,:).*v(2,:) - u(2,:).*v(1,:); 
else
    b = [u(2,:).*v(3,:) - v(2,:).*u(3,:);
        -u(1,:).*v(3,:) + v(1,:).*u(3,:);
        u(1,:).*v(2,:) - v(1,:).*u(2,:)];
end

end