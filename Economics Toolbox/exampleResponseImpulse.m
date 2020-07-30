%% Example irf with bounds

load Data_JDanish

Mdl = varm(4,2);
Mdl.SeriesNames = DataTable.Properties.VariableNames;
Mdl = estimate(Mdl,DataTable.Series);

%%
rng(1); % For reproducibility
[Response,Lower,Upper] = irf(Mdl, 'NumObs', 10);

%%
ResponseImpulse(Mdl)

%%
x = 0:0.2:10;                     
y = besselj(0, x);