function [Table] = LagCriteria(VAR)

    
    % iterations of lags
    defaultIter = 10;
       
    
    numberOfVar = size(VAR, 2);
    AIC = [];
    BIC = [];
    LogLikelihood = [];
    for i=1:defaultIter
        baselineModel = varm(numberOfVar, i);
        summary = summarize(estimate(baselineModel, VAR));
        AIC = [AIC; summary.AIC];
        BIC = [BIC; summary.BIC];
        LogLikelihood  = [LogLikelihood; summary.LogLikelihood];
        
    end  
    
    aicmin = min(AIC);
    bicmin = min(BIC);
    llmax  = max(LogLikelihood);
    
%     for value=1:defaultIter
%         if AIC(value) == aicmin
%             AIC(value) = strcat(num2str(AIC(value)), "*");
%         end
%         if BIC(value) == bicmin
%             BIC(value) = strcat(num2str(BIC(value)), "*");
%         end
%         if LogLikelihood(value) == llmax
%             LogLikelihood(value) = strcat(num2str(LogLikelihood(value)), "*");
%         end
%     end

    display = table(AIC, BIC, LogLikelihood);
    disp(display);
      
end