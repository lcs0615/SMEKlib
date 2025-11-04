% ===================== 中文教学注释 =====================
% 文件路径: Classes/Mesh/MeshBase3D.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
classdef MeshBase3D < handle
    %MeshBase3D a base class for a 3D mesh.
    % 
    % Subject to changes.
    %
    % (c) 2017 Antti Lehikoinen / Aalto University
    
    properties
        elementType
        nodes, elements
        edges, faces,
        faces2elements, elements2faces, elements2edges
        namedNodes, namedElements, namedFaces, info
    end
    
    methods
        function msh = MeshBase3D()
            msh.namedNodes = SLContainer();
            msh.namedElements = SLContainer();
            msh.namedFaces = SLContainer();
            msh.info = SLContainer();
        end
        
    end
    
end