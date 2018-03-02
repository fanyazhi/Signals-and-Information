[y44, fs44] = audioread('3rd Earth.mp3');
y = 1/2*(y44(1:length(y44), 1) + y44(1:length(y44), 2));
X = fft(y);
[Y, I] = sort(X, 'ascend');
amt = 1/100;
I_discard = I(1:round(amt*length(I)));
Y(I_discard) = 0;
Y_comp(I) = Y;
Y_compressed = ifft(Y_comp)/length(y);
soundsc(real(Y_compressed), fs44)


%Returns the following outputs:
%   S(i,j) = the complex power of frequency F(i) Hz at time T(j) sec
%   F = vector of frequencies (y-axis values of S)
%   T = vector of times (x-axis values of S)
%
[S,F,T] = instaspectrogram(Y_compressed,fs44);

S = abs(S);

[SSort, I] = sort(S(:), 'descend');
a = find(S>6.318523774267778e-05,10);
b = size(S);
i = floor(a/b(1))+1;
j = rem(a, b(2));
time = F(i);
frequency = T(j);
% for k = 1:10
%     [i, j] = find(S,1);
%     time(k) = T(j);
%     frequency(k) = F(i);
% end
scatter(time,frequency)
hold off