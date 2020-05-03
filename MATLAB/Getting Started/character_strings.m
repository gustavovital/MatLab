clc, clear all;
slCharacterEncoding('UTF-8');

my_text = 'Hello, world'
other_text = 'you''are right'

disp('Para verificar as infos');
whos my_text

disp('concatenar caracteres');
longText = [my_text, '--', other_text]

disp('trabalhando com numeros e textos:');
f = 71
c = (f - 32)/1.5

tempText = ['A temperatura é ', num2str(c), 'C']
