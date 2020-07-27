%% Data
load Data_USEconModel
rcpi = price2ret(DataTable.CPIAUCSL);
unrate = DataTable.UNRATE(2:end);

%% Select lag from VAR
LagCriteria([rcpi unrate], 6)
LagCriteria([rcpi unrate], 16)
