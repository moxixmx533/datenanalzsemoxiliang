
%%
% we use not this code: data=xlsread('alle Daten 21.10.19.xls')  
%% Einlesen aus der Spalte 21.10.2019
x=data(:,1); % Index  
x1=data(:,2); %Tiefe 
x2=data(:,4); %Rope Force Main Wincht
x3=data(:,5); %Rope Force Aux.Wincht
x4=data(:,6); %Speed of Rotary Drive
x5=data(:,7); %Crowd Depth
x6=data(:,8); %Pressure Pump 1 
x7=data(:,9); %Pressure Pump 2
x8=data(:,10); %Pressure Pump 3
x9=data(:,11); %Pressure Pump 4
x10=data(:,12); %Torque Steps
x11=data(:,16); %Inclination X
x12=data(:,17); %Inclination Y
x13=data(:,18); %Crowd-Force 
x14=data(:,19); %Torque 
x15=data(:,20); %Main Winch Rope Speed
x16=data(:,21); %Gear Mode Main Winch

%% using smooth methode: moving mean 
y1=smoothdata(x1,'movmean',5) %windows size = 5  
y2=smoothdata(x2,'movmean',5)
y3=smoothdata(x3,'movmean',5)
y4=smoothdata(x4,'movmean',5)
y5=smoothdata(x5,'movmean',5)
y6=smoothdata(x6,'movmean',5)
y7=smoothdata(x7,'movmean',5)
y8=smoothdata(x8,'movmean',5)
y9=smoothdata(x9,'movmean',5)
y10=smoothdata(x10,'movmean',5)
y11=smoothdata(x11,'movmean',5)
y12=smoothdata(x12,'movmean',5)
y13=smoothdata(x13,'movmean',5)
y14=smoothdata(x14,'movmean',5)
y15=smoothdata(x15,'movmean',5)
y16=smoothdata(x16,'movmean',5)

%Gleitender Mittelwert zur Glättung von Zeit- bzw. Datenreihen 
%% test machen
xx1 = data(:,21) 
%% export data
data(:,2) = y1
data(:,4) = y2
data(:,5) = y3
data(:,6) = y4 
data(:,7) = y5
data(:,8) = y6
data(:,9) = y7
data(:,10) = y8
data(:,11) = y9
data(:,12) = y10
data(:,16) = y11
data(:,17) = y12
data(:,18) = y13
data(:,19) = y14
data(:,20) = y15
data(:,21) = y16

%% 21.10.2019
filename = 'patientdata.xlsx';
writetable(data,filename,'Sheet',1)


%% nächste mal ausprobieren
x2=smoothdata(y,'sgolay') %andere Methode 
%%  plot Vergleich zwischen smooth und original
figure;
subplot(211)
plot(x3,'r')
legend('Original Signal')
hold on;
subplot(212)
plot(y3)
legend('Denoised Signal')
axis tight;
hold off;
%% 
figure;
plot(x3,'r')
hold on;

plot(y3)
legend('Original Signal','Denoised Signal')
axis tight;
hold off;
%%
%denoise
%%
