
clear;
clc;
close all;

global x y

x = 0:0.2:2*pi;

globalcalc

figure;
plot(x, y, 'r:s', 'LineWidth', 1.5, 'MarkerSize', 6);

xlabel('x');
ylabel('sin(x) + cos(x)');
title('Global Variables');
grid on;

whos x y
which globalcalc
