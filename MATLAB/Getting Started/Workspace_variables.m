clc, clear all;
slCharacterEncoding('UTF-8');

A = magic(4);
B = rand(3, 5, 2);

whos

disp('Com o comando save e extensão .mat temos as variaveis salvas');
disp('exemplo: save myFile.mat');

save myFile.mat

clear all;

disp('E para carregar basta: load myFile.mat');
load myFile.mat
