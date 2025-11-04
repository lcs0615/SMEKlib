% ===================== 中文教学注释 =====================
% 文件路径: Mesh/get_elementsInDomain.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function el = get_elementsInDomain(bt, minRegion)
%get_elementsInDomain gets elements in domain.
% 
% el = get_elementsInDomain(bt, elementRegion) returns the indices of
% elements in each domain. bt is the boolean table between minimal domains
% and domains (see Matlab's decsg), and minRegion is the minimal region
% each element belongs to.
% 
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

el = cell(1,size(bt,2));

for k = 1:size(bt,2)
    el{k} = find( ismember(minRegion, find(bt(:,k))) );
end
    

end