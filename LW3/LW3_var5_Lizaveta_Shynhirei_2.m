t = 0:0.005:2;
A = 6;
f = 2;
sigma = 1.5;
U1 = 4;
U2 = 2;

n = sigma * randn(size(t));
s = A * cos(2*pi*f*t) + n;

filtered = s;
filtered(abs(filtered) < U2) = 0;

figure

subplot(1,2,1)

plot(t, s, '-', 'LineWidth', 2)
hold on

plot(t, filtered, ':', 'LineWidth', 2)

yline(U1, '--')
yline(U2, '--m')

title('Original and Filtered Signals')
xlabel('Time (s)')
ylabel('Voltage (V)')

legend('Original signal', 'Filtered signal', 'U1', 'U2', ...
    'Location', 'northeast')

grid on
hold off


subplot(1,2,2)

idx = s > U1;

selectedTimes = t(idx);
selectedValues = s(idx);

stem(selectedTimes, selectedValues)
hold on

[maxValue, maxIndex] = max(selectedValues);
[minValue, minIndex] = min(selectedValues);

plot(selectedTimes(maxIndex), maxValue, ...
    'go', 'MarkerSize', 9, 'LineWidth', 1.5)

plot(selectedTimes(minIndex), minValue, ...
    'o', 'MarkerSize', 9, 'LineWidth', 1.5)

title('Signal Values Above U1')
xlabel('Time (s)')
ylabel('Voltage (V)')

legend('Values above U1', 'Maximum', 'Minimum', ...
    'Location', 'northeast')

grid on
hold off