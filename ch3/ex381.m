clc; clear; close all;

%% state space를 통해 여러 출력을 구하고 각 출력에 해당하는 step response plotting
R = 1;
L = 1;
C = 1;

t = 0:0.01:30;

num1 = [1];
den1 = [L*C R*C 1];

num2 = [C 0];
den2 = [L*C R*C 1];

tf1 = tf(num1, den1);
tf2 = tf(num2, den2);

y1 = step(tf1, t);
y2 = step(tf2, t);

plot(t, y1);

hold on;

plot(t, y2, "LineStyle", "--");

hold off;

legend('E_c', 'I');
xlabel('time(sec)');
ylabel('output');

title('unit step function response');

