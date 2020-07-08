%% Get database
load Data_USEconModel

%% Figures
figure;
plot(DataTable.Time,DataTable.CPIAUCSL);
title('Consumer Price Index');
ylabel('Index');
xlabel('Date');

figure;
plot(DataTable.Time,DataTable.UNRATE);
title('Unemployment Rate');
ylabel('Percent');
xlabel('Date');
%% Select database
rcpi = price2ret(DataTable.CPIAUCSL);
unrate = DataTable.UNRATE(2:end);

%% Create Model
Model = varm(2, 4);

%% Estimate model
EstMdl = estimate(Model,[rcpi unrate]);

%% Sumarize..
summarize(EstMdl)

%% Forecasting model
Y = [rcpi unrate];
EstMdl2 = estimate(Model, Y(1:(end-10),:));

%% Forecasting
YF = forecast(EstMdl2, 10, Y(1:(length(Y)-10),:));

%% Figures
figure;
plot(DataTable.Time(end - 50:end),rcpi(end - 50:end));
hold on
plot(DataTable.Time((end - 9):end),YF(:,1))
h = gca;
fill(DataTable.Time([end - 9 end end end - 9]),h.YLim([1,1,2,2]),'k',...
    'FaceAlpha',0.1,'EdgeColor','none');
legend('True CPI growth rate','Forecasted CPI growth rate',...
    'Location','NW')
title('Quarterly CPI Growth Rate: 1947 - 2009');
ylabel('CPI growth rate');
xlabel('Year');
hold off

figure;
plot(DataTable.Time(end - 50:end),unrate(end - 50:end));
hold on
plot(DataTable.Time((end - 9):end),YF(:,2))
h = gca;
fill(DataTable.Time([end - 9 end end end - 9]),h.YLim([1,1,2,2]),'k',...
    'FaceAlpha',0.1,'EdgeColor','none');
legend('True unemployment rate','Forecasted unemployment rate',...
    'Location','NW')
title('Quarterly Unemployment Rate: 1947 - 2009');
ylabel('Unemployment rate');
xlabel('Year');
hold off