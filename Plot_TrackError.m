function [] = Plot_TrackError(t,CoordinateError_Position)
% 轨迹跟踪坐标误差
plot(t,CoordinateError_Position(1,:),'LineWidth',2);
hold on 
plot(t,CoordinateError_Position(2,:),'LineWidth',2);
hold on 
plot(t,CoordinateError_Position(3,:),'LineWidth',2);
hold on 

grid on; 
h=legend('x方向误差','y方向误差','z方向误差');
xlabel('t/s');ylabel('Y/m');
% axis([0 5 -0.006 0.005]);
title('轨迹跟踪误差')
set(h,'Fontsize',16);
set(gca,'Fontsize',16)
end

