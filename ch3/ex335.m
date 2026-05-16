clc; clear; close all;

syms s wn w z;

%% 부분분수로 전개된 전달함수의 g(t) 추출 
f1 = wn^2 / (2*j*wn*sqrt(1-z^2)) * (1 / (s + z*wn - j*wn*sqrt(1-z^2)));
f2 = wn^2 / (2*j*wn*sqrt(1-z^2)) * (-1 / (s + z*wn + j*wn*sqrt(1-z^2)));

g1 = ilaplace(f1) + ilaplace(f2)

g11 = simplify(g1)

%% 전달함수에서 직접 g(t) 추출

f3 = wn^2 / (s^2 + 2*z*wn*s + wn^2);

g2 = ilaplace(f3)


