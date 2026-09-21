t = 0:0.005:2;

A = 6;
f = 2;
sigma = 1.5;
U1 = 4;
U2 = 2;

n = sigma * randn(size(t));
s = A * cos(2*pi*f*t) + n;

selected = s(s > U1);

filtered = s;
filtered(abs(filtered) < U2) = 0;

number_unfiltered = length(s);
number_selected = sum(s > U1);

minimum = min(filtered);
maximum = max(filtered);

disp(number_unfiltered)
disp(number_selected)
disp(minimum)
disp(maximum)