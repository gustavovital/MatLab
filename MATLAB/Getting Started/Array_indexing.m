clc; clear all
slCharacterEncoding('UTF-8');

A = magic(4)

disp('Selecionando um elemento A(4,2)');
A(4,2)

disp('Dando um erro quando fora dos indices A(4, 5)');
disp('A(4, 5)')

disp('Se quero aumentar a matriz por um elemento:');
A(4, 5) = 17

disp('Selecionando mais de uma linha (ou colunas)');
A(1:3, 2)

disp('Ou pegar todas as colunas');
A(3, :)

disp('Se quero criar um vetor que vá de 0 a 100 por 10 valores');
B = 0:10:100
