% ===================== 中文教学注释 =====================
% 文件路径: Mesh Generation/Stators/stator5.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function msh = stator5(msh,dim)
if dim.SSM1 ~= dim.SSM2
    A1 = size(find(msh.matel == dim.SSM1));
    A2 = size(find(msh.matel == dim.SSM2));
else
    A = size(find(msh.matel == dim.SSM1));
end

%Init the first sector
[p,t,m,FL,LL,cir,ag] = calculate_stator5(dim);

Np_old = size(msh.p, 1);
Nsec = dim.Qs/dim.num2;

[p, t, LLnew, agnew, cirnew] = replicate_sector_fixed(p', t', Nsec, dim.angleS(1), FL, LL, ag, cir);

msh.matel = [msh.matel;repmat(m, Nsec, 1)];

if dim.SSM1 ~= dim.SSM2
    SC = find(msh.matel == dim.SSM1);
    SC = SC(A1+1:end);
    SC1 = find(msh.matel == dim.SSM2);
    SC1= SC1(A2+1:end);
    SC = [SC;SC1];
else
    SC = find(msh.matel == dim.SSM1);
    SC = SC(A+1:end);
end

%Finalize
msh.cir = [1 Np_old+cirnew];
msh.p = [msh.p;p'];
msh.t = [msh.t; Np_old + t'];
msh.n_ag_s = Np_old + agnew';
msh.FL = [msh.FL'; Np_old+FL'];
msh.index_p = size(msh.p,1);
msh.LL = [msh.LL'; LLnew'];
SC = sort(SC);
msh.SC = reshape(SC, [], Nsec);
msh.matel(msh.matel == 9999) = dim.SWM;

end