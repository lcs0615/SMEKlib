% ===================== 中文教学注释 =====================
% 文件路径: gwrap/uniqueWithTol.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function varargout = uniqueWithTol(varargin)
%uniqueWithTol wrapper for uniquetol
%
% (c) 2017 Antti Lehikoinen / Aalto University

%[varargout{1:nargout}] = uniquetol(varargin{:});

try
    [varargout{1:nargout}] = uniquetol(varargin{:});
catch
    x = varargin{1};
    tol = varargin{2};
    temp = floor( x / tol );
    [~,IA,IC] = unique(temp, 'rows');
    C = x(IA,:);
    varargout{1} = C;
    varargout{2} = IA;
    varargout{3} = IC;
    %error('Matlab built-in function uniquewithtol not available. Replacement not implemented.');
end

end