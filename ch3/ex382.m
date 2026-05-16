clc; clear; close all;

%% state space에 의한 3가지 output의 unit step function response

R1 = 1;
R2 = 1;
L1 = 1;
L2 = 1;
C = 1;

num1 = [L2*C R2*C 1];
num2 = [1];
num3 = [L2 R2];

den = [L1*L2*C (R1*L2+R2*L1)*C (L1+L2+R1*R2*C) (R1+R2)];

t = 0:0.01:30;

tf1 = tf(num1, den);
tf2 = tf(num2, den);
tf3 = tf(num3, den);

y1 = step(tf1, t);
y2 = step(tf2, t);
y3 = step(tf3, t);

plot(t, y1, 'Color', 'r');

hold on;

plot(t, y2, 'Color', 'g');
plot(t, y3, "Color", 'b');

hold off;

title('unit step function response');
legend('i_1', 'i_2', 'e_c');
xlabel('time(sec)');
ylabel('output');


