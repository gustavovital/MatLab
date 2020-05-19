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

disp('Em relaçao a overdetermined systems');
disp('suponha t e y para a seguinte função:');
disp('y(t) = c1 + c2exp(-t)');
t = [0 .3 .8 1.1 1.6 2.3]';
y = [.82 .72 .63 .6 .55 .5]';
B = table(t, y)

disp('E segue a tentativa de tentar modelar..');
disp('E = [ones(size(t)) exp(-t)]');
E = [ones(size(t)) exp(-t)]
disp('E com c = E\y temos as constantes');
c = E\y

T = (0:0.1:2.5)';
Y = [ones(size(T)) exp(-T)]*c;
plot(T, Y, '-', t, y, 'o')
