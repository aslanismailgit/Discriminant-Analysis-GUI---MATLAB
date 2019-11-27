function Data=PlotConfM(Data)

% ConfM =[23    21;
%     27    29]

%     P+   P-
% A+  TP   FN  TRUELY labeled as POZITIF --  FALSEly labeled as NEGATIVE
% A-  FP   TN  FALSEly labeled as POZITIF -- TRUEly labeled as NEGATIVE

%% https://developers.google.com/machine-learning/glossary#confusion_matrix

%                   Tumor (predicted)	Non-Tumor (predicted)
%Tumor (actual)      18 TP               1 FN
%Non-Tumor (actual)	 6  FP                 452 TN


% True positive rate (or sensitivity): TPR=TP/(TP+FN)
% True negative rate (or specificity): TNR=TN/(FP+TN)
% False positive rate                : FPR=FP/(FP+TN)

% TP=ConfM(1,1)/(ConfM(1,1)+ConfM(1,2))
% TN=ConfM(2,2)/(ConfM(2,1)+ConfM(2,2))
% FP=ConfM(2,1)/(ConfM(2,1)+ConfM(2,2))
% FN=ConfM(1,2)/(ConfM(1,1)+ConfM(1,2));

f1=findobj('Tag','figure1');
cla (Data.ax2) %,'reset')
set(f1,'CurrentAxes',Data.ax2)
hold on %(Data.ax1,'on')

a1=(Data.ConfM(1,1))/100;
r1 = rectangle('Position',[0 1 1 1]','Curvature',0);
set (r1,'FaceColor',[0 1 0]);
set (r1,'EdgeColor','w')
set (r1,'LineWidth',2);
t1=text(0.5,1.5,num2str(Data.ConfM(1,1)),'FontSize',12);

r2 = rectangle('Position',[0 0 1 1]','Curvature',0);
set (r2,'FaceColor',[0 1 0]);
set (r2,'EdgeColor','w')
set (r2,'LineWidth',2);
t2=text(0.5,0.5,num2str(Data.ConfM(2,1)),'FontSize',12);

r3 = rectangle('Position',[1 1 1 1]','Curvature',0);
set (r3,'FaceColor',[0 1 0]);
set (r3,'EdgeColor','w')
set (r3,'LineWidth',2);
t3=text(1.5,1.5,num2str(Data.ConfM(1,2)),'FontSize',12);

r4 = rectangle('Position',[1 0 1 1]','Curvature',0);
set (r4,'FaceColor',[0 1 0]);
set (r4,'EdgeColor','w')
set (r4,'LineWidth',2);
t4=text(1.5,0.5,num2str(Data.ConfM(2,2)),'FontSize',12);
axis off
hold off


