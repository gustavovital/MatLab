%% Data
load Data_USEconModel
rcpi = price2ret(DataTable.CPIAUCSL);
unrate = DataTable.UNRATE(2:end);

%% Create Model
Model = varm(2, 4);

%% Estimate model
EstMdl = estimate(Model,[rcpi unrate]);

%% Sumarize..
teste = summarize(EstMdl);

LagCriteria([rcpi unrate])
