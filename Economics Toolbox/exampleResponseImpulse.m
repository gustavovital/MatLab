%% Example irf with bounds

load Data_JDanish

Mdl = varm(4,2);
Mdl.SeriesNames = DataTable.Properties.VariableNames;
Mdl = estimate(Mdl,DataTable.Series);

%%
ResponseImpulse(Mdl)