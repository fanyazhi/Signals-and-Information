function y = myamodulate(x, wc, d, fs)
% Returns the amplitude-modulated version of x modulated by a cosine of unit
% amplitude and carrier frequency wc [rad/s]. The result has duration d sampled at
% frequency fs

y = x.*mysin_gen(wc/(2*pi), 1, d, fs);
