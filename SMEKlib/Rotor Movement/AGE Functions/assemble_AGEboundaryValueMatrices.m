% ===================== 中文教学注释 =====================
% 文件路径: Rotor Movement/AGE Functions/assemble_AGEboundaryValueMatrices.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [Bs, Br, Is, Ir] = assemble_AGEboundaryValueMatrices(N_pp, bndData)

N_ag_s = bndData.N_ag_s;
N_ag_r = bndData.N_ag_r;

Bs = zeros(N_ag_s, 2*N_pp);
Br = zeros(N_ag_r, 2*N_pp);
for k_pp = 1:2*N_pp
    kf = floor( (k_pp-1)/2 ) + 1;
    if mod(k_pp, 2)
        Bs(:,k_pp) = cos(kf * bndData.agAngles_global(1:N_ag_s)');
        Br(:,k_pp) = cos(kf * bndData.agAngles_global((N_ag_s+1):(N_ag_s+N_ag_r))');
    else
        Bs(:,k_pp) = sin(kf * bndData.agAngles_global(1:N_ag_s)');
        Br(:,k_pp) = sin(kf * bndData.agAngles_global((N_ag_s+1):(N_ag_s+N_ag_r))');
    end
end

Bs = [sparse(Bs), sparse(N_ag_s, 2*N_pp)];
Br = [sparse(N_ag_r, 2*N_pp), sparse(Br)];

Is = speye(N_ag_s, N_ag_s);
Ir = speye(N_ag_r, N_ag_r);


end