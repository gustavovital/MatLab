% base de dados 
load(fullfile(matlabroot,'examples','econ','Data_Airline.mat'))

y = log(Data);
T = length(y);

% estimando o modelo ARIMA(0,1,1)[12]

Mdl = arima('Constant', 0, 'D', 1, 'Seasonality', 12, ...
    'MALags', 1, 'SMALags', 12)

% o y0 sao os dados amostrais

y0 = y(1:13);
[EstMdl, EstParamCov] = estimate(Mdl, y(14:end), 'Y0', y0)

% Analise de residuos

res = infer(EstMdl,y(14:end),'Y0',y0);

figure
plot(14:T, res)
xlim([0, T])
title('Residuos')
axis tight