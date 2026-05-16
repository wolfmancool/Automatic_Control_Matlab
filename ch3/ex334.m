clc; clear; close all;

%% 부분분수에서 라플라스 역변환

syms s  % 수식에서 s라는 기호를 변수로 사용(숫자로 사용 x)

f1 = 1/(2*s);
f2 = 1/(2*s+4);
f3 = -1/(s+1);
f4 = -1/(s+1)^3;

y1 = ilaplace(f1) + ilaplace(f2) + ilaplace(f3) + ilaplace(f4)

%% 다항식에서 바로 라플라스 역변환

f5 = 1/(s^5 + 5*s^4 + 9*s^3 + 7*s^2 + 2*s);
y2 = ilaplace(f5)
