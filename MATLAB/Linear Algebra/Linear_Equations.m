clc; clear all
slCharacterEncoding('UTF-8');

disp('Dado:');
A = pascal(3)
u = [3; 1; 4]

disp('podemos definir Ax = u');
disp('ou x = A\u');
x = A\u

disp('seja:');
b = magic(3)
disp('Seja AX = b');
disp('Então a solução é dada por:');
disp('X = A\b');
X = A\b

disp('resolvendo por meio da pseudoinversa de A');
b = [5; 2; 12]

disp('x = pinv(A)*b');
pinv(A)*b
A*pinv(A)*b

disp('Redução para determinar solução exata ou não, por meio do algoritimo');
disp('de echelon. rref([A b])');
rref([A b])
