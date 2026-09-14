% Name: Lizaveta
% Surname: Shynhirei
% Group: EDIfu-25/2
% Date: 14.09.2026

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]   |   F_2 [-x-]')

%second task 

N = 5;

v = N+1 : 0.5 : N+4;

A = [N   N+1 N+2;
    N+3 N+4 N+5;
    N+6 N+7 N+8];

a = A(3,2);

b = A(2:3,1:2);

c = A([1 3],[1 3]);

combined = [A v(1:3)']