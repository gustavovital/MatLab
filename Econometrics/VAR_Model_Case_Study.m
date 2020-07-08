%% Estudo de caso

% O objetivo é replicar o VAR do MATLAB para a economia
% americana

clear; clc;
%% Base de dados

load Data_USEconModel

%% Manipulação e acerto dos dados

gdp = DataTable.GDP;
m1 = DataTable.M1SL;
tb3 = DataTable.TB3MS;
Y = [gdp,m1,tb3];

%% Plotando as fguras

figure
subplot(3,1,1)
plot(dates,Y(:,1),'r');
title('GDP')
datetick('x')
grid on
subplot(3,1,2);
plot(dates,Y(:,2),'b');
title('M1')
datetick('x')
grid on
subplot(3,1,3);
plot(dates, Y(:,3), 'k')
title('3-mo T-bill')
datetick('x')
grid on
hold off

%% Transformando as series

Y = [diff(log(Y(:,1:2))), Y(2:end,3)] % tira a diferença
X = dates(2:end); % cria datas

%% Plotando as series estacionarias

figure
subplot(3,1,1)
plot(X,Y(:,1),'r');
title('GDP')
datetick('x')
grid on
subplot(3,1,2);
plot(X,Y(:,2),'b');
title('M1')
datetick('x')
grid on
subplot(3,1,3);
plot(X, Y(:,3),'k'),
title('3-mo T-bill')
datetick('x')
grid on

%% Series conjuntas

Y(:,1:2) = 100*Y(:,1:2);
figure
plot(X,Y(:,1),'r');
hold on
plot(X,Y(:,2),'b');
datetick('x')
grid on
plot(X,Y(:,3),'k');
legend('GDP','M1','3-mo T-bill');
hold off