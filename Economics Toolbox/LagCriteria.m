function [display] = LagCriteria(VAR)

    
    % iterations of lags
    defaultIter = 10;
       
    
    numberOfVar = size(VAR, 2);
    
    for i=1:defaultIter
        
        baselineModel = varm(numberOfVar, i);
        summary = summarize(estimate(baselineModel, VAR));
        display = [summary.AIC summary.BIC summary.LogLikelihood];
       
    end    
    display;
end