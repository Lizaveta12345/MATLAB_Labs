x = 0:0.5:2*pi;
y = sin(x) + cos(x).^2;

figure(1)
plot(x, y, 'ro', 'MarkerFaceColor', 'y', 'MarkerSize', 8)

title('f(x) = sin(x) + cos^2(x)')
xlabel('x')
ylabel('f(x)')
legend('f(x)')
grid on

axis([min(x) max(x) min(y) max(y)])


x2 = 0:0.1:2;

y1 = x2.^exp(1);
y2 = x2.^(2*exp(1));
y3 = x2.^(3*exp(1));

figure(2)

plot(x2, y1, 'LineWidth', 1.5)
hold on
plot(x2, y2, 'LineWidth', 1.5)
plot(x2, y3, 'LineWidth', 1.5)
hold off

title('Functions x^e, x^{2e}, x^{3e}')
xlabel('x')
ylabel('f(x)')
legend('x^e', 'x^{2e}', 'x^{3e}', 'Location', 'best')
grid on

axis([0 1.2 0 4.5])




x3 = -2*pi:0.5:2*pi;
y4 = x3.^3 + sin(x3);

figure(3)

quiver(x3, zeros(size(x3)), zeros(size(x3)), y4)

title('y(x) = x^3 + sin(x)')
xlabel('x')
ylabel('y(x)')
grid on


figure(4)

bar(x3, y4)

title('y(x) = x^3 + sin(x)')
xlabel('x')
ylabel('y(x)')
grid on