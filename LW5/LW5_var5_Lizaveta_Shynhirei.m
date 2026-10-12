
clc
clear
format compact

students = {
    'Ivan', 'Ivanov', 'Moscow, Russia';
    'Anna', 'Petrova', 'Minsk, Belarus';
    'Dmitry', 'Sidorov', 'Vilnius, Lithuania'
    };

studentStruct = cell2struct(students, {'Name', 'Surname', 'Address'}, 2);

disp('Task 1a: Student structure')
disp(studentStruct)

disp('Task 1b: Structure validation')
disp(isstruct(studentStruct))

disp('Task 2: Operation flow control')

while true
    x = input('Enter x: ');
    y = input('Enter y: ');

    if x == 0 && y == 0
        disp('Program finished.')
        break
    end

    if x == 0
        disp('x cannot be zero. Try again.')
        continue
    end

    b = atan(y / x);
    n = (1:10)';

    left = n .* (cos(b) + 1i * sin(b)).^n;
    right = cos(n * b) + 1i * sin(n * b);
    difference = left - right;

    disp('Results for n = 1 to 10:')

    results = table(left, right, difference, ...
        'VariableNames', {'Left', 'Right', 'Difference'});

    disp(results)

    if all(abs(difference) < 1e-10)
        disp('The equation is true.')
    else
        disp('The equation is not true for all n.')
    end
end


%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
