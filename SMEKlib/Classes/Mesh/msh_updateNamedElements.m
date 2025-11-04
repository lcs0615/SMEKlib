% ===================== 中文教学注释 =====================
% 文件路径: Classes/Mesh/msh_updateNamedElements.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function msh = msh_updateNamedElements(msh, el_inds_new)
%msh_updateNamedElements
%
% (c) 2018 Antti Lehikoinen / Aalto University

keys = msh.namedElements.keys;
for k = 1:numel(keys)
    key = keys{k};
    val = msh.namedElements.get(key);
    if isa(val, 'cell')
        %val2 = cell(size(val));
        val2 = val;
        for k2 = 1:size(val,2)
            val2{end, k2} = el_inds_new( val{end, k2} );
        end
        val = val2;
    else
        val = el_inds_new(val);
    end
    msh.namedElements.set(key, val);
end

end