A = input('Enter vector A: ');

A = A(:).';

idx = true(size(A));

B = [A(idx) A(end:-1:1)];

disp('vector B is:')
disp(B)