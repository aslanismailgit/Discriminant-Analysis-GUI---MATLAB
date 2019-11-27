function [Data]=ModelandPlot(Data);

%%
switch Data.DiscrimType
    case 'linear'
        Mdl = fitcdiscr([Data.x1Train Data.x2Train],Data.YTrain,'DiscrimType',Data.DiscrimType,'Cost',Data.CostM);
        K = Mdl.Coeffs(1,2).Const;  
        L = Mdl.Coeffs(1,2).Linear;
        fn = @(x1,x2) K + L(1)*x1 + L(2)*x2;
    case 'quadratic'
        Mdl = fitcdiscr([Data.x1Train Data.x2Train],Data.YTrain,'DiscrimType',Data.DiscrimType,'Cost',Data.CostM);
        K = Mdl.Coeffs(1,2).Const;
        L = Mdl.Coeffs(1,2).Linear; 
        Q = Mdl.Coeffs(1,2).Quadratic;
        fn = @(x1,x2) K + L(1)*x1 + L(2)*x2 + Q(1,1)*x1.^2 + ...
            (Q(1,2)+Q(2,1))*x1.*x2 + Q(2,2)*x2.^2;
end

%%
Data.Mdl=Mdl;
XTest=[Data.x1Test Data.x2Test];
[Data.label,Data.score,Data.cost] = predict(Data.Mdl,XTest);
% cost (as predict output) is the cost of classifying 
% row i of X as class j
Data.L = loss(Data.Mdl,XTest,Data.YTest);
ConfM = confusionmat(Data.label,Data.YTest);
Data.TP=ConfM(1,1)/(ConfM(1,1)+ConfM(1,2));
Data.TN=ConfM(2,2)/(ConfM(2,1)+ConfM(2,2));
Data.FP=ConfM(2,1)/(ConfM(2,1)+ConfM(2,2));
Data.FN=ConfM(1,2)/(ConfM(1,1)+ConfM(1,2));
Data.APER=(ConfM(1,2)+ConfM(2,1))/sum(sum(ConfM));
Data.ConfM=ConfM;

%% Scatter plot
f1=findobj('Tag','figure1');
cla (Data.ax1) %,'reset')
set(f1,'CurrentAxes',Data.ax1)
hold on %(Data.ax1,'on')
h1 = gscatter(Data.x1,Data.x2,Data.Y,'kr','.x',[],'off');
set(h1(1),'LineWidth',1)
set(h1(2),'LineWidth',1)
h2 = ezplot(fn,[min(Data.x1) max(Data.x1) min(Data.x2) max(Data.x2)]);
set(h2, 'Color','r');
set(h2,'LineWidth',2)
axis tight
hold off %(Data.ax1,'off')

end