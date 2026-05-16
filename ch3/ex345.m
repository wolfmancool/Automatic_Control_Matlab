clc; clear; close all;

%% 2차 표준형 시스템에서 over damped, critically damped, under damped 각각의 
% unit step function response

wn = 10;    % natural frequency 지정

for z = [0.5 1 2]   % damping ratio 값 지정
    num = [wn.^2];
    den = [1 2*z*wn wn.^2];
    G = tf(num, den);

    t = 0:0.01:2;   % time 범위와 얼마나 세분화 할지 지정
    step(G, t);
    hold on;    % 중첩해서 그래프를 그리기 위해 기존의 그래프를 유지한다.
end

legend('z=0.5', 'z=1', 'z=2')
xlabel('time(secs)');
ylabel('amplitude y(t)');
