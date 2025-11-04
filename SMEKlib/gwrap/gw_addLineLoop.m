% ===================== 中文教学注释 =====================
% 文件路径: gwrap/gw_addLineLoop.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function this = gw_addLineLoop(this, loops)

%size check
Nl = 1;
if size(this.ll, 2) < (this.N_lineloops + Nl)
    n_add = max(2*size(this.ll,2), Nl);
    this.ll = [this.l cell(1, n_add)];
end

%adding
this.ll{this.N_lineloops + 1} = loops;
this.N_lineloops = this.N_lineloops + Nl;

end