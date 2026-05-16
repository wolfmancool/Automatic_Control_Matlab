clc; clear; close all;

%% critically damped에서 라플라스 역변환을 이용한 response 추출

syms s wn;

f1 = 1/s;
f2 = -1/(s+wn);
f3 = -wn/(s+wn)^2;

y1 = ilaplace(f1) + ilaplace(f2) + ilaplace(f3)
