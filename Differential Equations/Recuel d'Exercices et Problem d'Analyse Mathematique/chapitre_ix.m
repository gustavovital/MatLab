%% From recuel d'exercice et des problem - example
clc,clear

% function
[X,Y] = meshgrid(-5:.5:5);
F = @(X,Y) X;

% equation
[x1,y1] = ode45(F,[-3 3],0);
[x2,y2] = ode45(F,[-3 3],1);
[x3,y3] = ode45(F,[-3 3],2);
[x4,y4] = ode45(F,[-3 3],3);
[x5,y5] = ode45(F,[-3 3],4);
DX = F(X,1);
DY = DX*0 + 1;

figure
quiver(X,Y,DX,DY)
hold on
plot(x1,y1,'r')
hold on
plot(x2,y2,'r')
hold on
plot(x3,y3,'r')
hold on
plot(x4,y4,'r')
hold on
plot(x5,y5,'r')
hold off

%% 2736
clc,clear

% function
[X,Y] = meshgrid(-3:.5:3);
F = @(X,Y) (X + Y)/(X - Y);

% equation
[x1,y1] = ode45(F,[-3 3],0);
[x2,y2] = ode45(F,[-3 3],1);
[x3,y3] = ode45(F,[-3 3],2);
[x4,y4] = ode45(F,[-3 3],3);
[x5,y5] = ode45(F,[-3 3],4);
DX = F(X,1);
DY = DX*0 + 1;

figure
quiver(X,Y,DX,DY)
hold on
plot(x1,y1,'r')
hold on
plot(x2,y2,'b')
hold on
plot(x3,y3,'g')
hold on
plot(x4,y4,'y')
hold on
plot(x5,y5,'black')
hold off

%% 2737
clc,clear

% function
[X,Y] = meshgrid(-3:.5:-2);
F = @(X,Y) X^2 + Y^2;

% equation
[x1,y1] = ode45(F,[-3 3],0);
[x2,y2] = ode45(F,[-3 3],1);
[x3,y3] = ode45(F,[-3 3],2);
[x4,y4] = ode45(F,[-3 3],3);
[x5,y5] = ode45(F,[-3 3],4);
DX = F(X,1);
DY = DX*0 + 1;

figure
quiver(X,Y,DX,DY)
hold on
plot(x1,y1,'r')
hold on
plot(x2,y2,'b')
hold on
plot(x3,y3,'g')
hold on
plot(x4,y4,'y')
hold on
plot(x5,y5,'black')
hold off

%% 2735
clc,clear

% function
[X,Y] = meshgrid(-5:.5:0);
F = @(X,Y) 1 + Y .^2;

% equation
[x1,y1] = ode45(F,[-3 3],0);
[x2,y2] = ode45(F,[-3 3],1);
[x3,y3] = ode45(F,[-3 3],2);
[x4,y4] = ode45(F,[-3 3],3);
[x5,y5] = ode45(F,[-3 3],4);
DY = F(1,Y);
DX = DY*0 + 1;

figure
quiver(X,Y,DX,DY)
hold on
plot(x1,y1,'r')
hold on
plot(x2,y2,'b')
hold on
plot(x3,y3,'g')
hold on
plot(x4,y4,'y')
hold on
plot(x5,y5,'black')
hold off