%% some integrals example

fun01 = @(x) exp(-x.^2).*log(x).^2;
q = integral(fun01, 0, inf);
disp(q);