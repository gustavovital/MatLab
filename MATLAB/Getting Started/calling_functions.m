clc, clear all;
slCharacterEncoding('UTF-8');

A = [1 3 5]
disp('max(A)');
max(A)

B = [10 6 4]
disp('max(A, B)');
max(A, B)

[maxA, location] = max(A)
