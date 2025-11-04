% ===================== 中文教学注释 =====================
% 文件路径: Winding Configuration/doubleLayerFunction_1.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function DL = doubleLayerFunction_1(slotsPerPoleAndPhase, chordingPitch)

%original
%%{
indexMatrix = [1 -5 3 -2 6 -4;
    2 -6 4 -1 5 -3];
%}

%phases b and c reversed
%{
indexMatrix = [1 5 -3 -2 -6 4;
    2 6 -4 -1 -5 3];
%}

%phase b reversed
%{
indexMatrix = [1 5 3 -2 -6 -4;
    2 6 4 -1 -5 -3];
%}

%phases b and c swapped
%{
indexMatrix = [1 -3 5 -2 4 -6;
    2 -4 6 -1 3 -5];
%}




DL = kron(indexMatrix, ones(1, slotsPerPoleAndPhase));

columnIndices = 1:(size(DL,2));
columnIndices = mod(columnIndices-1+chordingPitch, size(DL,2)) + 1;
DL(2,:) = DL(2, columnIndices);

end