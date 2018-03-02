d= 1;
fs = 44.1*10^3;
x= 0:d*fs;
A4 = 440;
r = 2^(1/12);
G4 = A4/r/r;
F4 = G4/r/r;
E4 = F4/r;
D4 = E4/r/r;
C4 = D4/r/r;
A4 = 440;
B4 = A4*r*r;


y = 0;
keys = [C4,D4,E4,F4,G4,A4,B4];
for n = 1:length(keys)
     y = y + mysin_gen(keys(n), 1, 1, fs);
end

toofast_toofourier(y, fs);