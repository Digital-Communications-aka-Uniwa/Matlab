function [x, t] = mine_sin(f0, fs, A, ph, T1)

  Ts = 1/fs
  Start = 0
  Step = Ts
  End = T1-Ts
  t = Start:Step:End;
  x = A*sin(2*pi*f0*t+ph);
  
end

