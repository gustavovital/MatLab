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

disp('----------------------------------------------------');
disp('Produto vetorial e transposta');
disp('');
disp('x = v*u');
x = v*u
disp('X = v*u');
X = u*v
disp('-----------------------------------------------------');
disp('Multiplicação de Matrizes');
A = pascal(3);
B = magic(3);
m = 3; n = 3;

for i = 1:m
    for j = 1:n
        C(i, j) = A(i, :)*B(:, j);
    end
end

C

disp('Matriz Identidade');

eye(5,5)

disp('-----------------------------------------------------');
disp('Norma e Vetores');

v = [2 0 -1]
disp('norma de v norm(v)');
norm(v, 1)
norm(v)
norm(v, inf)
disp('O defaut é norm(v, 2), pois corresponde ao comprimento euclidiano');
