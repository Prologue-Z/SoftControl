function [] = Plot_TrackError(t,CoordinateError_Position)
% �켣�����������
plot(t(1:40000),CoordinateError_Position(1,1:40000),'LineWidth',2);
hold on 
plot(t(1:40000),CoordinateError_Position(2,1:40000),'LineWidth',2);
hold on 
plot(t(1:40000),CoordinateError_Position(3,1:40000),'LineWidth',2);
hold on 

grid on; 
h=legend('x�������','y�������','z�������');
xlabel('t/s');ylabel('Y/m');
% axis([0 5 -0.006 0.005]);
title('�켣�������')
set(h,'Fontsize',16);
set(gca,'Fontsize',16)
end

