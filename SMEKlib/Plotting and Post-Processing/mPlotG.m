% ===================== 中文教学注释 =====================
% 文件路径: Plotting and Post-Processing/mPlotG.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function [] = mPlotG( G , varargin)
%mPlotG Plots geometry description matrix.
%   mPlotG(G, plotargs) plots the geometry description matrix G (used with 
%   Matlab's decsg function) with the plotargs arguments.
%   Functionality very limited for now.
%   
%   (c) 2017 Antti Lehikoinen / Aalto University

for k = 1:size(G,2)
    if (G(1,k)==2) || (G(1,k)==3)
        np = G(2,k);
        plot( G([3:(3+np-1) 3], k), G([(3+np):(3+2*np-1) 3+np], k), varargin{:});
    elseif G(1,k)==1
        r = G(4,k);
        rectangle('Position', [G(2,k)-r G(3,k)-r 2*r*[1 1]], 'Curvature', [1 1], ...
            'EdgeColor', varargin{1}, varargin{2:end});
    else
       warning('Geometry shape not yet implemented.')
    end

end

