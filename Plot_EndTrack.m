function [] = Plot_EndTrack(Path_Actual,Path_Desired)

% 绘制预期末端与实际末端轨迹plot图像

% 直线末端轨迹
% plot3(Path_Actual(1,25000:43890),Path_Actual(2,25000:43890),Path_Actual(3,25000:43890),'LineWidth',2); 
plot3(Path_Actual(1,:),Path_Actual(2,:),Path_Actual(3,:),'LineWidth',2); 
hold on;
% 期望末端轨迹
plot3(Path_Desired(1,:),Path_Desired(2,:),Path_Desired(3,:),'LineWidth',2);
hold on;
% 起点
plot3(Path_Actual(1,1),Path_Actual(2,1),Path_Actual(3,1),'.','Color','g','MarkerSize',30);
hold on;
% 给定坐标范围
% axis([0.3 0.5 -0.4 -0.25 0.86 0.90]);
grid on;%打开网格
h=legend('实际轨迹','期望轨迹','起点');
xlabel('X/m');ylabel('Y/m');zlabel('Z/m'); 
title('运动轨迹跟踪结果');
set(h,'Fontsize',16);
set(gca,'Fontsize',13)
view(60,20);
end

