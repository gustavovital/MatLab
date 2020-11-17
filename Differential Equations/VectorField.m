%% First ODE
clc,clear

% function
[X,Y] = meshgrid(-20:01:20);
F = @(X,Y) Y./6 * (4 - Y);

% equation
[x,y] = ode45(F,[-20 20],0);
DY = F(1,Y);
DX = DY*0 + 5;

quiver(X,Y,DX,DY)
hold on
plot(x,y,'r')
hold off
