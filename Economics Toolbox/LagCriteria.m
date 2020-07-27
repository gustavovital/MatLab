function [Table] = LagCriteria(VAR, iterations)

    if nargin == 2
        defaultIter = iterations;
    else 
        defaultIter = 10;
    end
    
    numberOfVar = size(VAR, 2);
    AIC = string();
    BIC = string();
    Lags = string();
    
    for i=1:defaultIter
        baselineModel = varm(numberOfVar, i);
        summary = summarize(estimate(baselineModel, VAR));
        AIC     = [AIC; string(round(summary.AIC, 2))];
        BIC     = [BIC; string(round(summary.BIC, 2))];
        Lags    = [Lags; i]; 
        
    end  
    
    aicmin = min(str2double(AIC));
    bicmin = min(str2double(BIC));
    
    for value=1:defaultIter
        if AIC(value) == string(round(aicmin, 2))
            AIC(value) = strcat(AIC(value), "***");
        end
        if BIC(value) == string(round(bicmin, 2))
            BIC(value) = strcat(BIC(value), "***");
        end
    end
    
    AIC  = AIC(2:length(AIC));
	BIC  = BIC(2:length(BIC));
    Lags = Lags(2:length(Lags));
    
    Table = table(Lags, AIC, BIC);
    
      
end