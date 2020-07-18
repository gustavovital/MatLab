%% following the procedure of a forecast with VAR
% By fanChart ToolBox
clear; clc;

%% Data
load Data_Canada
Y = DataTable{:,3:end};
names = DataTable.Properties.VariableNames(3:end); 
numSeries = size(Y,2);
T = size(Y,1);

%% Plot series
figure
plot(dates,Y,'LineWidth',2)
xlabel 'Year';
ylabel 'Percent';
legend(names,'Location','NW')
title '{\bf Canadian Interest Rates, 1954-1994}';
axis tight
grid on

%% Estimate
numLags = 2;
r = 2;
Mdl = vecm(numSeries,r,numLags);
EstMdl = estimate(Mdl,Y);

%% Monte Carlo Forecasts
numPaths = 1000;
horizon = 15;
Y0 = Y((end-2):end,:);

%% Estimate Model
YSimVEC = simulate(EstMdl,horizon,'NumPaths',numPaths,'Y0',Y0);
YMCVEC   = mean(YSimVEC,3);
VEC_2575 = quantile(YSimVEC,[0.025,0.975],3);
VEC_5095 = quantile(YSimVEC,[0.050,0.950],3);
VEC_0199 = quantile(YSimVEC,[0.01,0.99],3);

fDates = dates(end) + (1:horizon)';

%% plot
figure
fanChart([dates; fDates], [Y(:,2) Y(:,2) Y(:,2) Y(:,2); VEC_5095(:,2,1) ...
    VEC_5095(:,2,2) VEC_0199(:,2,1) VEC_0199(:,2,2)]);
grid on