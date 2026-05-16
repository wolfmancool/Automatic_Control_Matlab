clc; clear; close all;

syms s;

Y = (1/s)*(2/(s^2+3*s+2));
y = ilaplace(Y)
