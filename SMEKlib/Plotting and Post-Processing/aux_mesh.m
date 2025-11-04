% ===================== 中文教学注释 =====================
% 文件路径: Plotting and Post-Processing/aux_mesh.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [t, I] = aux_mesh(msh)
%aux_mesh auxiliary mesh for plotting higher-order mesh results.
% 
% Copyright (c) 2016-2018 Antti Lehikoinen / Aalto University

if size(msh.t,1) == 3
    t = msh.t; I = 1; return;
elseif size(msh.t,1) == 6
    % second-order mesh
    t = [msh.t([1 4 6], :) msh.t([4 2 5], :) ...
        msh.t([6 5 3], :) msh.t([6 4 5], :)];
    I = [1 4 6; 4 2 5; 6 5 3; 6 4 5]';
    return;
elseif size(msh.t,1) == 10
    % third-order mesh
    t = [msh.t([1 4 9],:) msh.t([2 6 5],:) msh.t([3 8 7],:) ...
        msh.t([4 10 9], :) msh.t([4 5 10],:) msh.t([5 6 10],:) ...
        msh.t([6 7 10], :) msh.t([7 8 10],:) msh.t([8 9 10],:)];
    return;
end

error('Not yet implemented.');

end