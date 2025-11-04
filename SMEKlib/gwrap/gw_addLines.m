% ===================== 中文教学注释 =====================
% 文件路径: gwrap/gw_addLines.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function this = gw_addLines(this, lines, varargin)

%size check
Nl = size(lines, 2);
if size(this.l, 2) < (this.N_lines + Nl)
    n_add = max(2*size(this.l,2), Nl);
    this.l = [this.l zeros(2, n_add)];
end

%adding
Nl_orig = this.N_lines;
this.l(:, (this.N_lines+1):(this.N_lines+Nl)) = lines;
this.N_lines = this.N_lines + Nl;

%checking if named lines given
if numel(varargin) && strcmpi(varargin{1}, 'linename')
    line_inds = (Nl_orig+1):(Nl_orig + Nl);  
    this.physicalLines.add(varargin{2}, line_inds);
end

end
