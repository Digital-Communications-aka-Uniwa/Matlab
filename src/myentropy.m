function H=myentropy(prob)

Hi=prob.*log2(1./(prob+1e-9));
H=sum(Hi);