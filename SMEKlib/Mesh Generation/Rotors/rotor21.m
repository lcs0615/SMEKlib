% ===================== 中文教学注释 =====================
% 文件路径: Mesh Generation/Rotors/rotor21.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function msh = rotor21(msh,dim)

%Init the first sector
[p,t,m,FL,LL,ag] = calculate_rotor21(dim);
Nsec = dim.Qr/dim.num;
[p, t, LLnew, agnew, ~] = replicate_sector_fixed(p', t', Nsec, dim.angleR(1), FL, LL, ag, []);
msh.matel = repmat(m, Nsec, 1);

%Finalize mesh
msh.p = p';
msh.t = t';
msh.index_p = size(msh.p,1);
msh.index_t = size(msh.t,1);
msh.n_ag_r = agnew';
msh.FL = FL(2:end);
msh.index_p = size(msh.p,1);
msh.LL = LLnew(2:end)-1;
msh.RC = reshape(find(msh.matel == 9999), [], Nsec);
msh.matel(msh.matel == 9999) = dim.RSM;
msh.matel(msh.matel == 999) = dim.RO;

end