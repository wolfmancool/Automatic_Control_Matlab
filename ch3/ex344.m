clc; clear; close all;

%% 표준형 2차시스템에서 unit step function response plotting

% 전달함수의 분자, 분모 계수 지정
a = [1000];
b = [1 34.5 1000];

% tf()을 이용해 전달함수 설정
G = tf(a, b);

% step()을 이용해 단위계단응답을 plotting
step(G);

title('unit step function response');
xlabel('time(seconds)');
ylabel('response y(t)');

