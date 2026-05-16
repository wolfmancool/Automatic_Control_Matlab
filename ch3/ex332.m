clc; clear; close all;


%% 부분분수 전개된 항에서의 라플라스 역변환

syms s;     % 수식에서 s를 변수로 이용한다고 지정
f1 = -1/(s+1);
f2 = 7/(s+2);
f3 = -6/(s+3);

% ilaplace()를 통해 라플라스 역변환 진행
y_1 = ilaplace(f1) + ilaplace(f2) + ilaplace(f3)

%% 부분분수 전개가 안된 항에서의 라플라스 역변환

f4 = (5*s+3)/(s^3 + 6*s^2 + 11*s + 6);
y_2 = ilaplace(f4)