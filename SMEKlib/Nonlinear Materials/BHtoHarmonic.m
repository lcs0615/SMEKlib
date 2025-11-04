% ===================== 中文教学注释 =====================
% 文件路径: Nonlinear Materials/BHtoHarmonic.m
% 教学提示: 请结合 docs/教学导读.md 中相应章节阅读本文件，以理解其作用和关键算法。
% ===================== 中文教学注释 =====================
function BHh = BHtoHarmonic(BH)

%harmonic-approximation BH-curve (eq. (47) in Arkkio's thesis)
BHh = BH;

Nsamples = 1000;
tsamples = linspace(0, 1, Nsamples);

for k = 1:size(BHh,1)
    Bampl = BHh(k, 1);
    
    Bsamples = Bampl * abs(sin(2*pi*tsamples));
    Hsamples = interp1(BH(:,1), BH(:,2), Bsamples, 'linear', 0);
    nu_samples = Hsamples./Bsamples; 
    nu_samples( abs(Bsamples)<1e-4 ) = 0;    
    nu_eff = trapz(tsamples, nu_samples);    
    BHh(k, 2) = nu_eff*Bampl;
    
end

end