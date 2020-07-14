%% From recuel d'exercice et des problem - example
% Author: gustavo vital
% Date: 14/07/2020

%% 2733
clc,clear

% function
[X,Y] = meshgrid(-5:.5:5);
z = -X;

[dx, dy] = gradient(z, .5, .5);
figure
contour(X, Y, z, 30, 'k')
hold on 
quiver(X, Y, dx, dy)
hold off
%% 2734
clc,clear

% function
[X,Y] = meshgrid(-5:.5:5);
z = -X ./ Y;

[dx, dy] = gradient(z, .5, .5);
figure
contour(X, Y, z, 30, 'k')
hold on 
quiver(X, Y, dx, dy)
hold off

%% 2735
clc,clear

% function
[X,Y] = meshgrid(-5:.5:0);
z = 1 + Y .^2;

[dx, dy] = gradient(z, .5, .5);
figure
contour(X, Y, z, 30, 'k')
hold on 
quiver(X, Y, dx, dy)
hold off

%% 2736 -art
clc,clear

% function
[X,Y] = meshgrid(-10:.5:10);
z = (X + Y)./(X - Y);

[dx, dy] = gradient(z, .5, .5);

figure
contour(X, Y, z, 30, 'k')
hold on 
quiver(X, Y, dx, dy)
hold off

%% 2737
clc,clear

% function
[X,Y] = meshgrid(-30:.5:-20);
z = X.^2 + Y.^2;

[dx, dy] = gradient(z, .5, .5);

figure
contour(X, Y, z, 30, 'k')
hold on 
quiver(X, Y, dx, dy)
hold off

%% 2747
clear; clc;
syms y(x)

ode =  diff(y,x) == y/tan(x);
ySol(x) = dsolve(ode);
disp(ode);
disp(ySol(x));

%% 2746
clear; clc;
syms y(x);

ode = (1-exp(x))*sec(y)^2 * diff(y) == 3*exp(x)*tan(y);
disp(ode);
ySol(x) = dsolve(ode);
disp(ySol(x));

% display vector field
[x, y] = meshgrid(-5:.2:5);
z = 3.*exp(x).*tan(y)./((1-exp(x))*sec(y).^2);
z(isinf(z)) = nan; 
[dx, dy] = gradient(z, .2, .2);

figure
contour(x, y, z, 30, 'k')
hold on 
quiver(x, y, dx, dy, 1)
hold off

%% 2748
clear; clc;

syms y(x);
ode = y*diff(y,x) == exp(x) / (1 + exp(x));
disp(ode);
cond = y(0) == 1;
ySol(x) = dsolve(ode, cond);
disp(ySol(x));

% display vector field
[x, y] = meshgrid(-10:.2:10);
z = exp(x) ./ (1 + exp(x)).*y;
[dx, dy] = gradient(z, .2, .2);

figure
contour(x, y, z, 30, 'k')
hold on 
quiver(x, y, dx, dy, 1)
hold off

%% 2749 -art
clear; clc;

syms y(x);
ode = diff(y,x) == -(x*y^2 + x)/(x^2 *y -y);
disp(ode);
cond = y(0) == 1;
ySol(x) = dsolve(ode, cond);
disp(ySol(x));

% display vector field
[x, y] = meshgrid(-10:.2:10);
z = -(x.*y.^2 + x)./(x.^2 .*y -y);
[dx, dy] = gradient(z, .2, .2);

figure
contour(x, y, z, 30, 'k')
hold on 
quiver(x, y, dx, dy, 1)
hold off

%% 2750
clear; clc;

syms y(x);
ode = diff(y,x) == y*log(y)/sin(x);
disp(ode);
cond = y(pi/2) == 1;
ySol(x) = dsolve(ode, cond);
disp(ySol(x));

% display vector field
[x, y] = meshgrid(1.5:.1:10);
z = y.*log(y)./sin(x);
[dx, dy] = gradient(z, .1, .1);

figure
contour(x, y, z, 30, 'k')
hold on 
quiver(x, y, dx, dy, 10)
hold off