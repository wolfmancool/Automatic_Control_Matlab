clc; clear; close all;

%% 2nd order prototype system에서 impulse response plotting

num = [1000];
den = [1 34.5 1000];

G = tf(num, den);

impulse(G);

title('impulse response');
xlabel('time(sec)');
ylabel('response y(t)');

