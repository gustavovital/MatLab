%% Base de dados e preparação

load Data_USEconModel
cpi = DataTable.CPIAUCSL;
cpi = log(cpi);
dCPI = diff(cpi);
unem = DataTable.UNRATE;
Y = [dCPI,unem(2:end)];

%% Criando um VAR

Spec = vgxset('n',2,'nAR',4,'Constant',true)

%% Ajustando o modelo 

[EstSpec,EstStdErrors,logL,W] = vgxvarx(Spec,Y);
vgxdisp(EstSpec)