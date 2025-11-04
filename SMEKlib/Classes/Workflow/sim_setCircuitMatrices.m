% ===================== 中文教学注释 =====================
% 文件路径: Classes/Workflow/sim_setCircuitMatrices.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function sim = sim_setCircuitMatrices(sim)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% stator winding matrices
JF_struct = [];
statorConductors = sim.msh.namedElements.get('statorConductors');
if sim.dims.type_statorWinding == defs.stranded
    Nc_s = numel(statorConductors); Ni = size(sim.matrices.Ls, 2);
    for k = 1:Nc_s
        JF_struct = assemble_vector('', 'nodal', 1, k, statorConductors{k}, sim.msh, JF_struct);
    end
    JF_s = sparseFinalize(JF_struct, sim.Np, Nc_s);
    cAs = sum(JF_s*eye(Nc_s),1);
    DRs = sparsediag(sim.dims.leff ./(sim.dims.sigma_stator*cAs)) / sim.dims.fillingFactor; %resistance matrix
    sim.matrices.Cs = bsxfun(@times, JF_s, 1./cAs);
    sim.matrices.Ms = sparse(sim.Np, sim.Np);    
else
    error('Non-stranded stator windings not yet implemented.');
end
sim.matrices.Rew_s = sparse(sim.matrices.Ls'*DRs*sim.matrices.Ls);