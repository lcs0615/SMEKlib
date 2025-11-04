% ===================== 中文教学注释 =====================
% 文件路径: Mesh Generation/Rotors/surf_perma_mgt.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function msh = surf_perma_mgt(msh,dim)
%Creates mesh for surface-mounted permanent magnet machine
%v.0.4
%Copyright (c) 2017 Timo Davidsson / Aalto University
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dim.alfa = 45;  

%Calculate nodes and elements
msh = SPM_new2(msh,dim); 

%Finalize mesh
msh.index_p = size(msh.p,1);
msh.index_t = size(msh.t,1);
end