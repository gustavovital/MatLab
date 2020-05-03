clc, clear all;
slCharacterEncoding('UTF-8');

x = 0:pi/100:2*pi;
y = sin(x);

plot(x, y)
xlabel('x')
ylabel('seno de x')
title('plot da função seno')

plot(x, y, 'r--')

% Para adicionar mais pontos

x = 0:pi/100:pi*2;
y = sin(x);

plot(x,y)

hold on

y2 = cos(x);
plot(x, y2, ':')
legend('sin', 'cos');

hold off

% plots em 3d

[X, Y] = meshgrid(-2:.2:2);
Z = X .* exp(-X .^2 - Y.^2);

surf(X,Y,Z)
