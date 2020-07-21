%% 63)
fun = @(x) x + 1./x;
fplot(fun);
grid on;

%% 64)
fun = @(x) x.^2 ./ (x + 1);
fplot(fun);
grid on;

%% 65)
fun = @(x) 1 ./ x.^2;
fplot(fun);
grid on;

%% 66)
fun = @(x) 1 ./ x.^3;
fplot(fun);
grid on;

%% 67)
fun = @(x) 10 ./ (x.^2 + 1);
fplot(fun);
grid on;

%% 68)
fun = @(x) 2.*x ./ (x.^2 + 1);
fplot(fun);
grid on;

%% 69)
fun = @(x) x + 1 ./ x.^2;
fplot(fun);
grid on;

%% 70)
fun = @(x) x.^2 + 1./x;
fplot(fun);
grid on;

%% 71)
fun = @(x) sqrt(x);
fplot(fun);
grid on;

%% 72)
fun = @(x) x.^(1/3);
fplot(fun);
grid on;

%% 73)
fun = @(x) x.^(2/3);
fplot(fun);
grid on;

%% 74)
fun = @(x) x .* sqrt(x);
fplot(fun);
grid on;

%% 75)
fun = @(x) 3/5 .* (25 - x.^2).^(1/2);
fplot(fun);
grid on;

%% 76)
fun = @(x) sqrt(x.^2 - 1);
fplot(fun);
grid on;

%% 77)
fun = @(x) 1 ./ sqrt(1 - x.^2);
fplot(fun);
grid on;

%% 78)
fun = @(x) x .* sqrt(x ./ (4 - x));
fplot(fun);
grid on;

%% 79)
fun = @(x) x.*sqrt(25-x.^2);
fplot(fun);
grid on;
