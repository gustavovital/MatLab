clc; clear all
slCharacterEncoding('UTF-8');
% Criação de arrays

 a = [1 2 3 4]

% Uma matriz

a = [1 2 3; 4 5 6; 7 8 10]

% E criando uma matriz de zeros

disp('E criando uma matriz de zeros');
zeros(5,5)

disp('Ou uma de zeros 5 por 1');

zeros(5,1)

disp('Soamndo a com 10');
a + 10

disp('Ou o seno de a:');
sin(a)

disp('Matriz ransposta');
a'

disp('identidade');
p = a*inv(a)

disp('Mudamos o formato com format long ou format short');

disp('');
disp('Para ultiplicar elemento por elemento, usamos .*');

p = a.*a

disp('para concatenar, basta utilizarmos as chaves');
disp('Para linhas');
A = [a, a]

disp('Para colunas');
[a; a]

disp('Por fim, numeros complexos:');

sqrt(-1)

disp('para repreentar partes imaginarias, use i ou j');

c = [3+4i, 4+3j; -i, 10j]
