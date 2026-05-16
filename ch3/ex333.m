clc; clear; close all;

% 부분분수 전개
a = [1 5 9 7 2];    % 분모의 계수
b = [1];            % 분자의 계수 

% r : 각 항의 분자
% p : r에 대응하는 항의 극점
[r p k] = residue(b, a) 

[b a] = residue(r, p, k)