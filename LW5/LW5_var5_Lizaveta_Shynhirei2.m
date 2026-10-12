
clc
clear
format compact

x = input('Enter x: ');
y = input('Enter y: ');

while x < 1 || y < 1 || x ~= floor(x) || y ~= floor(y)
    disp('Please enter positive integers.')
    x = input('Enter x: ');
    y = input('Enter y: ');
end

for k = 1:20
    m = floor(rand * x) + 1;
    n = floor(rand * y) + 1;

    A = zeros(x, y);
    A(m, n) = NaN;

    disp('Iteration:')
    disp(k)
    disp(A)

    pause(2)
end
