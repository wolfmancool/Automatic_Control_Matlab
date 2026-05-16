clc; clear; close all;

%% prototype 1st order system에서 unit step function response 추출

syms s tau;

Y = (1/s)*(1/(tau*s+1));
y = ilaplace(Y)

%% response plotting

t = 0:0.01:1;   % 0초 부터 1초까지 0.01초 간격으로 시간 배열 생성
tau1 = 0.1;
tau2 = 0.5;
tau3 = 0.8;

plot(1-exp(-t/tau1));

hold on;

plot(1-exp(-t/tau2));
plot(1-exp(-t/tau3));

hold off;

% =========================================================
% tau값이 증가할 수록 응답속도 느려짐
% =========================================================


xlabel('Time (s)');
ylabel('Response');
title('Unit Step Response of 1st Order System');

% \tau를 사용해서 타우의 그리스 문자가 나오도록 출력
% num2str()을 이용해서 타우의 숫자값을 문자열로 변환
legend(['\tau = ' num2str(tau1)], ['\tau = ' num2str(tau2)], ['\tau = ' num2str(tau3)]);
grid on;
