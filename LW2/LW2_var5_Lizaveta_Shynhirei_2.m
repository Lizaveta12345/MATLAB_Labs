Z = randn(2,3);
Zt = Z';

A = randn(3,1);

M = [Zt A];

D = det(M);

disp(Z)
disp(Zt)
disp(A)
disp(M)
disp(D)