% ===================== 中文教学注释 =====================
% 文件路径: Classes/Mesh/ExtrudedMachineMesh.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
classdef ExtrudedMachineMesh < ExtrudedPrismMesh
    properties
        
    end
    methods
        function msh3 = ExtrudedMachineMesh(msh2, zs)
            msh3 = msh3@ExtrudedPrismMesh(msh2, zs);
        end
    end
end