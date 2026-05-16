clc; clear; close all;

syms t;     % t를 숫자가 아닌 수식에서 변수를 이용한다고 선언
f = t^4;

laplace(f)
