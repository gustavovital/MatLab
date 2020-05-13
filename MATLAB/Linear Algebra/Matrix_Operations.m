clc; clear all
slCharacterEncoding('UTF-8');

disp('Matriz simetrica');
A = pascal(3)

disp('Matriz assimetrica');
B = magic(3)

disp('Matriz 3x2 de inteiros aleatorios');
C = fix(10*rand(3, 2))

disp('Vetores e linhas');
u = [3; 1; 4]
v = [2 0 -1]
s = 7

disp('----------------------------------------------------');
disp('Operações entre matrizes');
disp('');
disp('X = A + B');
X = A + B
disp('');
disp('Y = X - A');
Y = X - A
