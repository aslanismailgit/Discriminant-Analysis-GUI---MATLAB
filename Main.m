
global Data
a=get(findobj('Tag','slider1'),'Value');
set(findobj('Tag','text1'),'String',a);
a=get(findobj('Tag','slider2'),'Value');
set(findobj('Tag','text2'),'String',a);
a=get(findobj('Tag','slider5'),'Value');
set(findobj('Tag','text3'),'String',a);
a=get(findobj('Tag','slider6'),'Value');
set(findobj('Tag','text4'),'String',a);

set(findobj('Tag','axes2'),'Visible','on');
set(findobj('String','Confusion Matrix'),'Visible','on');
set(findobj('String','Actual C1'),'Visible','on');
set(findobj('String','Actual C2'),'Visible','on');
set(findobj('String','Pred C1'),'Visible','on');
set(findobj('String','Pred C2'),'Visible','on');

a1=get(findobj('Tag','radiobutton1'),'Value');
a2=get(findobj('Tag','radiobutton2'),'Value');
if a1==1
    Data.DiscrimType='linear';
else
    Data.DiscrimType='quadratic';
end
clear a1 a2

Mean_1=get(findobj('Tag','slider1'),'Value');
Std_1=get(findobj('Tag','slider2'),'Value');

Mean_2=get(findobj('Tag','slider5'),'Value');
Std_2=get(findobj('Tag','slider6'),'Value');

% Mean_1=0;
% Mean_2=0;
% MeanDif=0;

% Std_1=1;
% Std_2=1;

ObsNum=200;
rng(Data.Seed)
Y=[zeros(ObsNum/2,1); ones(ObsNum/2,1)];

x11=randn(ObsNum/2,1);
x12=Std_1.*randn(ObsNum/2,1) + Mean_1; 
x1=[x11; x12];

x21=randn(ObsNum/2,1);
x22=Std_2.*randn(ObsNum/2,1) + Mean_2 ;

x2=[x21; x22];
% gscatter(x1, x2,Y)

m1g1=mean(x1(Y==0));
m1g2=mean(x1(Y==1));
s1g1=std(x1(Y==0));
s1g2=std(x1(Y==1));

m2g1=mean(x2(Y==0));
m2g2=mean(x2(Y==1));
s2g1=std(x2(Y==0));
s2g2=std(x2(Y==1));

m=[m1g1 m2g1; m1g2 m2g2];
s=[s1g1 s2g1; s1g2 s2g2];

Data.x1=x1;
Data.x2=x2;
Data.Y=Y;

Data.ax1=findobj('Tag','axes1');
Data.ax2=findobj('Tag','axes2');


%% Cost Matrix
% Increase FN cost
c=get(findobj('Tag','MiscCost'),'Value');
Data.CostM=[0 1;c 0];
clear c


% Data.X=[Data.x1 Data.x2];
N = size(Data.x1,1);
a=get(findobj('Tag','edit1'),'String');
% a=25;
rng(1); % For reproducibility
cvp = cvpartition(N,'Holdout',str2num(a)/100);
idxTrn = training(cvp); % Training set indices
idxTest = test(cvp);    % Test set indices
Data.x1Train = (Data.x1(idxTrn,:));
Data.x2Train = (Data.x2(idxTrn,:));
Data.YTrain = (Data.Y(idxTrn,:));

Data.x1Test = (Data.x1(idxTest,:));
Data.x2Test = (Data.x2(idxTest,:));
Data.YTest = (Data.Y(idxTest,:));

[Data]=ModelandPlot(Data);

set(findobj('Tag','TP'),'String',round(100*Data.TP));
set(findobj('Tag','TN'),'String',round(100*Data.TN));
set(findobj('Tag','FP'),'String',round(100*Data.FP));
set(findobj('Tag','FN'),'String',round(100*Data.FN));
set(findobj('Tag','APER'),'String',round(100*Data.APER));

Data=PlotConfM(Data);
% save ('DataDA', 'Data')





