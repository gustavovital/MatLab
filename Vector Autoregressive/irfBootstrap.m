%% Bootstrap Confidence Intervals on True IRF
clear; clc

%% Load data
load Data_JDanish

%% Summarize data
figure
subplot(2,2,1)
plot(DataTable.M2)
title('M2')
grid

subplot(2,2,2)
plot(DataTable.Y)
title('Y')
grid

subplot(2,2,3)
plot(DataTable.IB)
title('IB')
grid

subplot(2,2,4)
plot(DataTable.ID)
title('ID')
grid
%% Create VAR
Model = varm(4,2);
Model.SeriesNames = DataTable.Properties.VariableNames;
[Model, ~, ~, E] = estimate(Model, DataTable.Series);
T = size(DataTable, 1);

%% Display infos
disp(Model);
disp(summarize(Model));

%% IRF
[response, lower, upper] = irf(Model, "E", E, ...
    "NumPaths", 500, "Confidence", 0.9);

%% organizing series

shockM2respM2 = response(:, 1, 1);
M2respM2_ci = [lower(:, 1, 1) upper(:, 1, 1)];

shockYrespM2 = response(:, 1, 2);
YrespM2_ci = [lower(:, 1, 2) upper(:, 1, 2)];

shockIBrespM2 = response(:, 1, 3);
IBrespM2_ci = [lower(:, 1, 3) upper(:, 1, 3)];

shockIDrespM2 = response(:, 1, 4);
IDrespM2_ci = [lower(:, 1, 4) upper(:, 1, 4)];

%% Figures

figure
subplot(2,2,1)
plot(0:19, shockM2respM2,'LineWidth',1.5)
hold on
plot(0:19, M2respM2_ci, 'r','LineWidth',1.5)
title("Response of M2 to M2")
grid

subplot(2,2,2)
plot(0:19, shockYrespM2,'LineWidth',1.5)
hold on
plot(0:19, YrespM2_ci, 'r','LineWidth',1.5)
title("Response of M2 to Y")
grid

subplot(2,2,3)
plot(0:19, shockIBrespM2,'LineWidth',1.5)
hold on
plot(0:19, IBrespM2_ci, 'r','LineWidth',1.5)
title("Response of M2 to IB")
grid

subplot(2,2,4)
plot(0:19, shockIDrespM2,'LineWidth',1.5)
hold on
plot(0:19, IDrespM2_ci, 'r','LineWidth',1.5)
title("Response of M2 to ID")
grid
