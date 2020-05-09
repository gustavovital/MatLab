clc; clear all
slCharacterEncoding('UTF-8');

% n = 50;
% r = rand(n, 1);
% plot(r);
%
% m = mean(r);
% hold on
%
% plot([0, n], [m, m])
% hold off
% title('media de uma distribuição aleatória uniforme');

nsamples = 5;
npoints = 50;

% for k = 1:nsamples
%     currentData = rand(npoints, 1);
%     sampleMean(k) = mean(currentData);
% end
%
% overallMean = mean(sampleMean);

for k = 1:nsamples
    iterationString = ['Iteration #', int2str(k)];
    disp(iterationString);
    currentData = rand(npoints, 1);
    sampleMean(k) = mean(currentData)
end
overallMean = mean(sampleMean)

if overallMean < .49
    disp('A media é menor que a esperada')
elseif overallMean > .51
    disp('A media é maior que a esperada');
else
    disp('A media é a esperada');
end
