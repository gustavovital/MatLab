function [Graph] = ResponseImpulse(Model)
    
    names = Model.SeriesNames;
    iterations = Model.NumSeries;
    
    [Response,Lower,Upper] = irf(Model, 'NumObs', 30);
    
    count = 1;
    figure;
    for i=1:iterations
        shock = names(i);
        for j=1:iterations
            response = names(j);
            subplot(iterations, iterations, count);
%             fill(0:29, [Lower(:,i,j), Upper(:,i,j)])
            hold on
            plot(0:29, Response(:, i, j));
            title(strcat(response, " response to ", shock));
            count = count + 1;
        end
    end
    
      

end