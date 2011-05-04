T=1
K=[T:0.01:10*T]
a=50
t_0=0.001 % 1/t_0 avgjør kva frekvens neuronet vil gå mot. 
% Trur t_0 er "absolute refratory period"

f_medRefraction = (-a) ./ (log((K-T)./K)-a*t_0);
f_utenRefraction= (-a) ./ (log((K-T)./K))


plot( K, f_utenRefraction,  K, f_medRefraction);
legend( 'Without refraction period', 'With refraction period after spike');

xlabel('K / T')
ylabel('frequency')
title('Frequency for different input')
%print -dpsc2 'ut.ps'

