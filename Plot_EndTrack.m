function [] = Plot_EndTrack(Path_Actual,Path_Desired)

% ����Ԥ��ĩ����ʵ��ĩ�˹켣plotͼ��

% ֱ��ĩ�˹켣
% plot3(Path_Actual(1,25000:43890),Path_Actual(2,25000:43890),Path_Actual(3,25000:43890),'LineWidth',2); 
plot3(Path_Actual(1,:),Path_Actual(2,:),Path_Actual(3,:),'LineWidth',2); 
hold on;
% ����ĩ�˹켣
plot3(Path_Desired(1,:),Path_Desired(2,:),Path_Desired(3,:),'LineWidth',2);
hold on;
% ���
plot3(Path_Actual(1,1),Path_Actual(2,1),Path_Actual(3,1),'.','Color','g','MarkerSize',30);
hold on;
% �������귶Χ
% axis([0.3 0.5 -0.4 -0.25 0.86 0.90]);
grid on;%������
h=legend('ʵ�ʹ켣','�����켣','���');
xlabel('X/m');ylabel('Y/m');zlabel('Z/m'); 
title('�˶��켣���ٽ��');
set(h,'Fontsize',16);
set(gca,'Fontsize',13)
view(60,20);
end

