function [] = Plot_EndTrack(Path_actual,Path_desired)

% ����Ԥ��ĩ����ʵ��ĩ�˹켣plotͼ��

% ֱ��ĩ�˹켣
% plot3(Path_actual(1,25000:43890),Path_actual(2,25000:43890),Path_actual(3,25000:43890),'LineWidth',2); 
plot3(Path_actual(1,:),Path_actual(2,:),Path_actual(3,:),'LineWidth',2); 
hold on;
% ����ĩ�˹켣
plot3(Path_desired(1,:),Path_desired(2,:),Path_desired(3,:),'LineWidth',2);
hold on;
% ���
plot3(Path_actual(1,1),Path_actual(2,1),Path_actual(3,1),'.','Color','g','MarkerSize',30);
hold on;
% �������귶Χ
axis([0.3 0.5 -0.4 -0.25 0.86 0.90]);
grid on;%������
h=legend('ʵ�ʹ켣','�����켣','���');
xlabel('X/m');ylabel('Y/m');zlabel('Z/m'); 
title('�˶��켣���ٽ��');
set(h,'Fontsize',16);
set(gca,'Fontsize',13)
view(60,20);
end

