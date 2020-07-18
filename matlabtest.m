clear;
global A1M1_2
global XA1_B1
global A1D1
global C1F1
global F1M1_4
global XA1
global ZA1
global Hmax
global Hmin
global theta1
global theta2
global theta3
%单位mm
A1M1_2 = 35;
XA1_B1 = 16;
A1D1 = 70;
C1F1 = 101;
F1M1_4 = 66;
XA1 = 55;
ZA1 = 0;

Hmax = 65;
Hmin = 50;

theta1 = pi/4;
theta2 = pi/2;
theta3 = pi*0.75;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(1,3,1)
H1 = Hmin;
theta = linspace(0, pi, 100);
%曲线F1
x1_1 = theta; 
y1_1 = Radius(H1) * ones(size(x1_1)); 
z1_1 = 0 * ones(size(x1_1));
plot3(x1_1,y1_1,z1_1,'r');
hold on
%曲线F2
x1_2 = theta; 
y1_2 = Radius(H1) * cos(theta); 
z1_2 = Radius(H1) * sin(theta);
plot3(x1_2,y1_2,z1_2,'g');
hold on
%曲线F3
x1_3 = theta; 
y1_3 = -Radius(H1) * ones(size(x1_3)); 
z1_3 = 0 * ones(size(x1_3));
plot3(x1_3,y1_3,z1_3,'b');
hold on
%曲线F4
x1_4 = theta; 
y1_4 = -Radius(H1) * cos(theta); 
z1_4 = -Radius(H1) * sin(theta);
plot3(x1_4,y1_4,z1_4,'m');
hold on

%theta轴
x1_5 = theta; 
y1_5 = 0 * ones(size(x1_5)); 
z1_5 = 0 * ones(size(x1_5));
plot3(x1_5,y1_5,z1_5,'--k');
hold on



%显示pi/4工作空间
ws1_1_1 = [theta1,Radius(H1),0];
ws1_1_2 = [theta1,Radius(H1) * cos(theta1),Radius(H1) * sin(theta1)];
ws1_1_3 = [theta1,-Radius(H1),0];
ws1_1_4 = [theta1,-Radius(H1) * cos(theta1),-Radius(H1) * sin(theta1)];
x1_6 = [ws1_1_1(1);ws1_1_2(1);ws1_1_3(1);ws1_1_4(1);ws1_1_1(1)];
y1_6 = [ws1_1_1(2);ws1_1_2(2);ws1_1_3(2);ws1_1_4(2);ws1_1_1(2)];
z1_6 = [ws1_1_1(3);ws1_1_2(3);ws1_1_3(3);ws1_1_4(3);ws1_1_1(3)];
plot3(x1_6,y1_6,z1_6,'Color',[0.5,0.5,0.5])
hold on
f1_1 = fill3(x1_6,y1_6,z1_6,[0.5,0.5,0.5]);
alpha(f1_1,0.5)
hold on
%显示pi/2工作空间
ws1_2_1 = [theta2,Radius(H1),0];
ws1_2_2 = [theta2,Radius(H1) * cos(theta2),Radius(H1) * sin(theta2)];
ws1_2_3 = [theta2,-Radius(H1),0];
ws1_2_4 = [theta2,-Radius(H1) * cos(theta2),-Radius(H1) * sin(theta2)];
x1_7 = [ws1_2_1(1);ws1_2_2(1);ws1_2_3(1);ws1_2_4(1);ws1_2_1(1)];
y1_7 = [ws1_2_1(2);ws1_2_2(2);ws1_2_3(2);ws1_2_4(2);ws1_2_1(2)];
z1_7 = [ws1_2_1(3);ws1_2_2(3);ws1_2_3(3);ws1_2_4(3);ws1_2_1(3)];
plot3(x1_7,y1_7,z1_7,'Color',[0.5,0.5,0.5])
hold on
f1_2 = fill3(x1_7,y1_7,z1_7,[0.5,0.5,0.5]);
alpha(f1_2,0.5)
hold on
%显示3pi/4工作空间
ws1_3_1 = [theta3,Radius(H1),0];
ws1_3_2 = [theta3,Radius(H1) * cos(theta3),Radius(H1) * sin(theta3)];
ws1_3_3 = [theta3,-Radius(H1),0];
ws1_3_4 = [theta3,-Radius(H1) * cos(theta3),-Radius(H1) * sin(theta3)];
x1_8 = [ws1_3_1(1);ws1_3_2(1);ws1_3_3(1);ws1_3_4(1);ws1_3_1(1)];
y1_8 = [ws1_3_1(2);ws1_3_2(2);ws1_3_3(2);ws1_3_4(2);ws1_3_1(2)];
z1_8 = [ws1_3_1(3);ws1_3_2(3);ws1_3_3(3);ws1_3_4(3);ws1_3_1(3)];
plot3(x1_8,y1_8,z1_8,'Color',[0.5,0.5,0.5])
hold on
f1_3 = fill3(x1_8,y1_8,z1_8,[0.5,0.5,0.5]);
alpha(f1_3,0.5)
hold on

%显示其他工作空间
for t1 = 0:pi/12:pi
    ws1_4_1 = [t1,Radius(H1),0];
    ws1_4_2 = [t1,Radius(H1) * cos(t1),Radius(H1) * sin(t1)];
    ws1_4_3 = [t1,-Radius(H1),0];
    ws1_4_4 = [t1,-Radius(H1) * cos(t1),-Radius(H1) * sin(t1)];
    x1_9 = [ws1_4_1(1);ws1_4_2(1);ws1_4_3(1);ws1_4_4(1);ws1_4_1(1)];
    y1_9 = [ws1_4_1(2);ws1_4_2(2);ws1_4_3(2);ws1_4_4(2);ws1_4_1(2)];
    z1_9 = [ws1_4_1(3);ws1_4_2(3);ws1_4_3(3);ws1_4_4(3);ws1_4_1(3)];
    plot3(x1_9,y1_9,z1_9,'Color',[0.5,0.5,0.5])
    hold on
end


 %设置标题，标签，刻度
title("H=Hmin")
xlabel('theta') 
ylabel('x') 
zlabel('y') 
set(gca,'XTick',[0:pi/4:pi])
set(gca,'XTicklabel',{'0','pi/4','pi/2','3pi/4','pi'})
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(1,3,2)
H2 = (Hmin + Hmax)/2;
test = Radius(H2);
theta = linspace(0, pi, 100);
%曲线F1
x2_1 = theta; 
y2_1 = Radius(H2) * ones(size(x2_1)); 
z2_1 = 0 * ones(size(x2_1));
plot3(x2_1,y2_1,z2_1,'r');
hold on
%曲线F2
x2_2 = theta; 
y2_2 = Radius(H2) * cos(theta); 
z2_2 = Radius(H2) * sin(theta);
plot3(x2_2,y2_2,z2_2,'g');
hold on
%曲线F3
x2_3 = theta; 
y2_3 = -Radius(H2) * ones(size(x2_3)); 
z2_3 = 0 * ones(size(x2_3));
plot3(x2_3,y2_3,z2_3,'b');
hold on
%曲线F4
x2_4 = theta; 
y2_4 = -Radius(H2) * cos(theta); 
z2_4 = -Radius(H2) * sin(theta);
plot3(x2_4,y2_4,z2_4,'m');
hold on

%theta轴
x2_5 = theta; 
y2_5 = 0 * ones(size(x2_5)); 
z2_5 = 0 * ones(size(x2_5));
plot3(x2_5,y2_5,z2_5,'--k');
hold on

%显示pi/4工作空间
ws2_1_1 = [theta1,Radius(H2),0];
ws2_1_2 = [theta1,Radius(H2) * cos(theta1),Radius(H2) * sin(theta1)];
ws2_1_3 = [theta1,-Radius(H2),0];
ws2_1_4 = [theta1,-Radius(H2) * cos(theta1),-Radius(H2) * sin(theta1)];
x2_6 = [ws2_1_1(1);ws2_1_2(1);ws2_1_3(1);ws2_1_4(1);ws2_1_1(1)];
y2_6 = [ws2_1_1(2);ws2_1_2(2);ws2_1_3(2);ws2_1_4(2);ws2_1_1(2)];
z2_6 = [ws2_1_1(3);ws2_1_2(3);ws2_1_3(3);ws2_1_4(3);ws2_1_1(3)];
plot3(x2_6,y2_6,z2_6,'Color',[0.5,0.5,0.5])
hold on
f2_1 = fill3(x2_6,y2_6,z2_6,[0.5,0.5,0.5]);
alpha(f2_1,0.5)
hold on
%显示pi/2工作空间
ws2_2_1 = [theta2,Radius(H2),0];
ws2_2_2 = [theta2,Radius(H2) * cos(theta2),Radius(H2) * sin(theta2)];
ws2_2_3 = [theta2,-Radius(H2),0];
ws2_2_4 = [theta2,-Radius(H2) * cos(theta2),-Radius(H2) * sin(theta2)];
x2_7 = [ws2_2_1(1);ws2_2_2(1);ws2_2_3(1);ws2_2_4(1);ws2_2_1(1)];
y2_7 = [ws2_2_1(2);ws2_2_2(2);ws2_2_3(2);ws2_2_4(2);ws2_2_1(2)];
z2_7 = [ws2_2_1(3);ws2_2_2(3);ws2_2_3(3);ws2_2_4(3);ws2_2_1(3)];
plot3(x2_7,y2_7,z2_7,'Color',[0.5,0.5,0.5])
hold on
f2_2 = fill3(x2_7,y2_7,z2_7,[0.5,0.5,0.5]);
alpha(f2_2,0.5)
hold on
%显示3pi/4工作空间
ws2_3_1 = [theta3,Radius(H2),0];
ws2_3_2 = [theta3,Radius(H2) * cos(theta3),Radius(H2) * sin(theta3)];
ws2_3_3 = [theta3,-Radius(H2),0];
ws2_3_4 = [theta3,-Radius(H2) * cos(theta3),-Radius(H2) * sin(theta3)];
x2_8 = [ws2_3_1(1);ws2_3_2(1);ws2_3_3(1);ws2_3_4(1);ws2_3_1(1)];
y2_8 = [ws2_3_1(2);ws2_3_2(2);ws2_3_3(2);ws2_3_4(2);ws2_3_1(2)];
z2_8 = [ws2_3_1(3);ws2_3_2(3);ws2_3_3(3);ws2_3_4(3);ws2_3_1(3)];
plot3(x2_8,y2_8,z2_8,'Color',[0.5,0.5,0.5])
hold on
f2_3 = fill3(x2_8,y2_8,z2_8,[0.5,0.5,0.5]);
alpha(f2_3,0.5)
hold on
%显示其他工作空间
for t2 = 0:pi/12:pi
    ws2_4_1 = [t2,Radius(H2),0];
    ws2_4_2 = [t2,Radius(H2) * cos(t2),Radius(H2) * sin(t2)];
    ws2_4_3 = [t2,-Radius(H2),0];
    ws2_4_4 = [t2,-Radius(H2) * cos(t2),-Radius(H2) * sin(t2)];
    x2_9 = [ws2_4_1(1);ws2_4_2(1);ws2_4_3(1);ws2_4_4(1);ws2_4_1(1)];
    y2_9 = [ws2_4_1(2);ws2_4_2(2);ws2_4_3(2);ws2_4_4(2);ws2_4_1(2)];
    z2_9 = [ws2_4_1(3);ws2_4_2(3);ws2_4_3(3);ws2_4_4(3);ws2_4_1(3)];
    plot3(x2_9,y2_9,z2_9,'Color',[0.5,0.5,0.5])
    hold on
end


 %设置标题，标签,刻度
title("H=(Hmin+Hmax)/2")
xlabel('theta') 
ylabel('x') 
zlabel('y') 
set(gca,'XTick',[0:pi/4:pi])
set(gca,'XTicklabel',{'0','pi/4','pi/2','3pi/4','pi'})

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

subplot(1,3,3)
H3 = Hmax;
test = Radius(H3);
theta = linspace(0, pi, 100);
%曲线F1
x3_1 = theta; 
y3_1 = Radius(H3) * ones(size(x3_1)); 
z3_1 = 0 * ones(size(x3_1));
plot3(x3_1,y3_1,z3_1,'r');
hold on
%曲线F2
x3_2 = theta; 
y3_2 = Radius(H3) * cos(theta); 
z3_2 = Radius(H3) * sin(theta);
plot3(x3_2,y3_2,z3_2,'g');
hold on
%曲线F3
x3_3 = theta; 
y3_3 = -Radius(H3) * ones(size(x3_3)); 
z3_3 = 0 * ones(size(x3_3));
plot3(x3_3,y3_3,z3_3,'b');
hold on
%曲线F4
x3_4 = theta; 
y3_4 = -Radius(H3) * cos(theta); 
z3_4 = -Radius(H3) * sin(theta);
plot3(x3_4,y3_4,z3_4,'m');
hold on

%theta轴
x3_5 = theta; 
y3_5 = 0 * ones(size(x3_5)); 
z3_5 = 0 * ones(size(x3_5));
plot3(x3_5,y3_5,z3_5,'--k');
hold on

%显示pi/4工作空间
ws3_1_1 = [theta1,Radius(H3),0];
ws3_1_2 = [theta1,Radius(H3) * cos(theta1),Radius(H3) * sin(theta1)];
ws3_1_3 = [theta1,-Radius(H3),0];
ws3_1_4 = [theta1,-Radius(H3) * cos(theta1),-Radius(H3) * sin(theta1)];
x3_6 = [ws3_1_1(1);ws3_1_2(1);ws3_1_3(1);ws3_1_4(1);ws3_1_1(1)];
y3_6 = [ws3_1_1(2);ws3_1_2(2);ws3_1_3(2);ws3_1_4(2);ws3_1_1(2)];
z3_6 = [ws3_1_1(3);ws3_1_2(3);ws3_1_3(3);ws3_1_4(3);ws3_1_1(3)];
plot3(x3_6,y3_6,z3_6,'Color',[0.5,0.5,0.5])
hold on
f3_1 = fill3(x3_6,y3_6,z3_6,[0.5,0.5,0.5]);
alpha(f3_1,0.5)
hold on
%显示pi/2工作空间
ws3_2_1 = [theta2,Radius(H3),0];
ws3_2_2 = [theta2,Radius(H3) * cos(theta2),Radius(H3) * sin(theta2)];
ws3_2_3 = [theta2,-Radius(H3),0];
ws3_2_4 = [theta2,-Radius(H3) * cos(theta2),-Radius(H3) * sin(theta2)];
x3_7 = [ws3_2_1(1);ws3_2_2(1);ws3_2_3(1);ws3_2_4(1);ws3_2_1(1)];
y3_7 = [ws3_2_1(2);ws3_2_2(2);ws3_2_3(2);ws3_2_4(2);ws3_2_1(2)];
z3_7 = [ws3_2_1(3);ws3_2_2(3);ws3_2_3(3);ws3_2_4(3);ws3_2_1(3)];
plot3(x3_7,y3_7,z3_7,'Color',[0.5,0.5,0.5])
hold on
f3_2 = fill3(x3_7,y3_7,z3_7,[0.5,0.5,0.5]);
alpha(f3_2,0.5)
hold on
%显示3pi/4工作空间
ws3_3_1 = [theta3,Radius(H3),0];
ws3_3_2 = [theta3,Radius(H3) * cos(theta3),Radius(H3) * sin(theta3)];
ws3_3_3 = [theta3,-Radius(H3),0];
ws3_3_4 = [theta3,-Radius(H3) * cos(theta3),-Radius(H3) * sin(theta3)];
x3_8 = [ws3_3_1(1);ws3_3_2(1);ws3_3_3(1);ws3_3_4(1);ws3_3_1(1)];
y3_8 = [ws3_3_1(2);ws3_3_2(2);ws3_3_3(2);ws3_3_4(2);ws3_3_1(2)];
z3_8 = [ws3_3_1(3);ws3_3_2(3);ws3_3_3(3);ws3_3_4(3);ws3_3_1(3)];
plot3(x3_8,y3_8,z3_8,'Color',[0.5,0.5,0.5])
hold on
f3_3 = fill3(x3_8,y3_8,z3_8,[0.5,0.5,0.5]);
alpha(f3_3,0.5)
hold on
%显示其他工作空间
for t3 = 0:pi/12:pi
    ws3_4_1 = [t3,Radius(H3),0];
    ws3_4_2 = [t3,Radius(H3) * cos(t3),Radius(H3) * sin(t3)];
    ws3_4_3 = [t3,-Radius(H3),0];
    ws3_4_4 = [t3,-Radius(H3) * cos(t3),-Radius(H3) * sin(t3)];
    x3_9 = [ws3_4_1(1);ws3_4_2(1);ws3_4_3(1);ws3_4_4(1);ws3_4_1(1)];
    y3_9 = [ws3_4_1(2);ws3_4_2(2);ws3_4_3(2);ws3_4_4(2);ws3_4_1(2)];
    z3_9 = [ws3_4_1(3);ws3_4_2(3);ws3_4_3(3);ws3_4_4(3);ws3_4_1(3)];
    plot3(x3_9,y3_9,z3_9,'Color',[0.5,0.5,0.5])
    hold on
end


 %设置标题，标签，刻度
title("H=Hmax")
xlabel('theta') 
ylabel('x') 
zlabel('y') 
set(gca,'XTick',[0:pi/4:pi])
set(gca,'XTicklabel',{'0','pi/4','pi/2','3pi/4','pi'})

box off





function R = Radius(H)
%任一变构型基座手指承托中心F_i点至z轴距离R关于H的函数
global A1M1_2
global XA1_B1
global A1D1
global C1F1
global F1M1_4
global XA1
R = (A1M1_2^2 - (H^2 + XA1_B1^2)/4)^0.5 * (A1D1 + C1F1)/A1M1_2 * H/(H^2 + XA1_B1^2)^0.5 - (A1M1_2 + F1M1_4)/A1M1_2 * XA1_B1/2 + XA1;
end

function Z = Zdis(H)
%任一变构型基座手指承托中心F_i点至x-y平面距离Z关于H的函数
global A1M1_2
global XA1_B1
global A1D1
global C1F1
global F1M1_4
global ZA1
Z = (A1M1_2^2 - (H^2 + XA1_B1^2)/4)^0.5 * (A1D1 + C1F1)/A1M1_2 * XA1_B1/(H^2 + XA1_B1^2)^0.5 - (A1M1_2 + F1M1_4)/A1M1_2 * H/2 + ZA1;
end

