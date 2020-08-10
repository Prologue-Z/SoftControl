function [] = Video_SimulationAnimation(A1_0,A2_0,A3_0,B1_0,B2_0,B3_0,C1_0,C2_0,C3_0,D1_0,D2_0,D3_0,E1_0,E2_0,E3_0,F1_0,F2_0,F3_0,G1_0,G2_0,G3_0,A0_0,B0_0,C0_0,D0_0,E0_0,F0_0,G0_0,H0_0,Path_desired,Path_actual)
% 绘制并联平台仿真动画

% 创建视频
V_Sim = VideoWriter('Video_Sim_SevenlayersFollowDirectly.avi');
V_Sim.FrameRate = fix(length(t)/5);%每秒帧数
open(V_Sim);

for k = 1:length(t)

   % 各平面和驱动杆为黑色
   % A层平面
   plot3([A1_0(1,k),A2_0(1,k)],[A1_0(2,k),A2_0(2,k)],[A1_0(3,k),A2_0(3,k)],'k','LineWidth',2); %A1-A2
   hold on 
   plot3([A1_0(1,k),A3_0(1,k)],[A1_0(2,k),A3_0(2,k)],[A1_0(3,k),A3_0(3,k)],'k','LineWidth',2); %A1-A3
   hold on 
   plot3([A2_0(1,k),A3_0(1,k)],[A2_0(2,k),A3_0(2,k)],[A2_0(3,k),A3_0(3,k)],'k','LineWidth',2); %A2-A3
   hold on 
   % B层平面
   plot3([B1_0(1,k),B2_0(1,k)],[B1_0(2,k),B2_0(2,k)],[B1_0(3,k),B2_0(3,k)],'k','LineWidth',2); %B1-B2
   hold on 
   plot3([B1_0(1,k),B3_0(1,k)],[B1_0(2,k),B3_0(2,k)],[B1_0(3,k),B3_0(3,k)],'k','LineWidth',2); %B1-B3
   hold on 
   plot3([B2_0(1,k),B3_0(1,k)],[B2_0(2,k),B3_0(2,k)],[B2_0(3,k),B3_0(3,k)],'k','LineWidth',2); %B2-B3
   hold on 
   % C层平面
   plot3([C1_0(1,k),C2_0(1,k)],[C1_0(2,k),C2_0(2,k)],[C1_0(3,k),C2_0(3,k)],'k','LineWidth',2); %C1-C2
   hold on 
   plot3([C1_0(1,k),C3_0(1,k)],[C1_0(2,k),C3_0(2,k)],[C1_0(3,k),C3_0(3,k)],'k','LineWidth',2); %C1-C3
   hold on 
   plot3([C2_0(1,k),C3_0(1,k)],[C2_0(2,k),C3_0(2,k)],[C2_0(3,k),C3_0(3,k)],'k','LineWidth',2); %C2-C3
   hold on 
   % D层平面
   plot3([D1_0(1,k),D2_0(1,k)],[D1_0(2,k),D2_0(2,k)],[D1_0(3,k),D2_0(3,k)],'k','LineWidth',2); %D1-D2
   hold on 
   plot3([D1_0(1,k),D3_0(1,k)],[D1_0(2,k),D3_0(2,k)],[D1_0(3,k),D3_0(3,k)],'k','LineWidth',2); %D1-D3
   hold on 
   plot3([D2_0(1,k),D3_0(1,k)],[D2_0(2,k),D3_0(2,k)],[D2_0(3,k),D3_0(3,k)],'k','LineWidth',2); %D2-D3
   hold on 
   % E层平面
   plot3([E1_0(1,k),E2_0(1,k)],[E1_0(2,k),E2_0(2,k)],[E1_0(3,k),E2_0(3,k)],'k','LineWidth',2); %E1-E2
   hold on 
   plot3([E1_0(1,k),E3_0(1,k)],[E1_0(2,k),E3_0(2,k)],[E1_0(3,k),E3_0(3,k)],'k','LineWidth',2); %E1-E3
   hold on 
   plot3([E2_0(1,k),E3_0(1,k)],[E2_0(2,k),E3_0(2,k)],[E2_0(3,k),E3_0(3,k)],'k','LineWidth',2); %E2-E3
   hold on 
   % F层平面
   plot3([F1_0(1,k),F2_0(1,k)],[F1_0(2,k),F2_0(2,k)],[F1_0(3,k),F2_0(3,k)],'k','LineWidth',2); %F1-F2
   hold on 
   plot3([F1_0(1,k),F3_0(1,k)],[F1_0(2,k),F3_0(2,k)],[F1_0(3,k),F3_0(3,k)],'k','LineWidth',2); %F1-F3
   hold on 
   plot3([F2_0(1,k),F3_0(1,k)],[F2_0(2,k),F3_0(2,k)],[F2_0(3,k),F3_0(3,k)],'k','LineWidth',2); %F2-F3
   hold on 
   % G层平面
   plot3([G1_0(1,k),G2_0(1,k)],[G1_0(2,k),G2_0(2,k)],[G1_0(3,k),G2_0(3,k)],'k','LineWidth',2); %G1-G2
   hold on 
   plot3([G1_0(1,k),G3_0(1,k)],[G1_0(2,k),G3_0(2,k)],[G1_0(3,k),G3_0(3,k)],'k','LineWidth',2); %G1-G3
   hold on 
   plot3([G2_0(1,k),G3_0(1,k)],[G2_0(2,k),G3_0(2,k)],[G2_0(3,k),G3_0(3,k)],'k','LineWidth',2); %G2-G3
   hold on 
   
   % AB层间驱动杆
   plot3([A1_0(1,k),B1_0(1,k)],[A1_0(2,k),B1_0(2,k)],[A1_0(3,k),B1_0(3,k)],'k','LineWidth',2); %A1-B1  
   hold on  
   plot3([A2_0(1,k),B2_0(1,k)],[A2_0(2,k),B2_0(2,k)],[A2_0(3,k),B2_0(3,k)],'k','LineWidth',2); %A2-B2
   hold on 
   plot3([A3_0(1,k),B3_0(1,k)],[A3_0(2,k),B3_0(2,k)],[A3_0(3,k),B3_0(3,k)],'k','LineWidth',2); %A3-B3
   hold on 
   % BC层间驱动杆
   plot3([B1_0(1,k),C1_0(1,k)],[B1_0(2,k),C1_0(2,k)],[B1_0(3,k),C1_0(3,k)],'k','LineWidth',2); %B1-C1 
   hold on  
   plot3([B2_0(1,k),C2_0(1,k)],[B2_0(2,k),C2_0(2,k)],[B2_0(3,k),C2_0(3,k)],'k','LineWidth',2); %B2-C2  
   hold on 
   plot3([B3_0(1,k),C3_0(1,k)],[B3_0(2,k),C3_0(2,k)],[B3_0(3,k),C3_0(3,k)],'k','LineWidth',2); %B3-C3 
   hold on
   % CD层间驱动杆
   plot3([C1_0(1,k),D1_0(1,k)],[C1_0(2,k),D1_0(2,k)],[C1_0(3,k),D1_0(3,k)],'k','LineWidth',2); %C1-D1 
   hold on  
   plot3([C2_0(1,k),D2_0(1,k)],[C2_0(2,k),D2_0(2,k)],[C2_0(3,k),D2_0(3,k)],'k','LineWidth',2); %C2-D2  
   hold on 
   plot3([C3_0(1,k),D3_0(1,k)],[C3_0(2,k),D3_0(2,k)],[C3_0(3,k),D3_0(3,k)],'k','LineWidth',2); %C3-D3 
   hold on
   % DE层间驱动杆
   plot3([D1_0(1,k),E1_0(1,k)],[D1_0(2,k),E1_0(2,k)],[D1_0(3,k),E1_0(3,k)],'k','LineWidth',2); %D1-E1 
   hold on  
   plot3([D2_0(1,k),E2_0(1,k)],[D2_0(2,k),E2_0(2,k)],[D2_0(3,k),E2_0(3,k)],'k','LineWidth',2); %D2-E2  
   hold on 
   plot3([D3_0(1,k),E3_0(1,k)],[D3_0(2,k),E3_0(2,k)],[D3_0(3,k),E3_0(3,k)],'k','LineWidth',2); %D3-E3 
   hold on
   % EF层间驱动杆
   plot3([E1_0(1,k),F1_0(1,k)],[E1_0(2,k),F1_0(2,k)],[E1_0(3,k),F1_0(3,k)],'k','LineWidth',2); %E1-F1 
   hold on  
   plot3([E2_0(1,k),F2_0(1,k)],[E2_0(2,k),F2_0(2,k)],[E2_0(3,k),F2_0(3,k)],'k','LineWidth',2); %E2-F2  
   hold on 
   plot3([E3_0(1,k),F3_0(1,k)],[E3_0(2,k),F3_0(2,k)],[E3_0(3,k),F3_0(3,k)],'k','LineWidth',2); %E3-F3 
   hold on 
   % FG层间驱动杆
   plot3([F1_0(1,k),G1_0(1,k)],[F1_0(2,k),G1_0(2,k)],[F1_0(3,k),G1_0(3,k)],'k','LineWidth',2); %F1-G1 
   hold on  
   plot3([F2_0(1,k),G2_0(1,k)],[F2_0(2,k),G2_0(2,k)],[F2_0(3,k),G2_0(3,k)],'k','LineWidth',2); %F2-G2  
   hold on 
   plot3([F3_0(1,k),G3_0(1,k)],[F3_0(2,k),G3_0(2,k)],[F3_0(3,k),G3_0(3,k)],'k','LineWidth',2); %F3-G3 
   hold on 
   
   %中心杆 红色
   plot3([A0_0(1,k),B0_0(1,k)],[A0_0(2,k),B0_0(2,k)],[A0_0(3,k),B0_0(3,k)],'r','LineWidth',2); %A0-B0
   hold on
   plot3([B0_0(1,k),C0_0(1,k)],[B0_0(2,k),C0_0(2,k)],[B0_0(3,k),C0_0(3,k)],'r','LineWidth',2); %B0-c0
   hold on
   plot3([C0_0(1,k),D0_0(1,k)],[C0_0(2,k),D0_0(2,k)],[C0_0(3,k),D0_0(3,k)],'r','LineWidth',2); %C0-D0
   hold on
   plot3([D0_0(1,k),E0_0(1,k)],[D0_0(2,k),E0_0(2,k)],[D0_0(3,k),E0_0(3,k)],'r','LineWidth',2); %D0-E0
   hold on
   plot3([E0_0(1,k),F0_0(1,k)],[E0_0(2,k),F0_0(2,k)],[E0_0(3,k),F0_0(3,k)],'r','LineWidth',2); %E0-F0
   hold on
   plot3([F0_0(1,k),G0_0(1,k)],[F0_0(2,k),G0_0(2,k)],[F0_0(3,k),G0_0(3,k)],'r','LineWidth',2); %F0-G0
   hold on
   plot3([G0_0(1,k),H0_0(1,k)],[G0_0(2,k),H0_0(2,k)],[G0_0(3,k),H0_0(3,k)],'r','LineWidth',2); %G0-H0
   hold on

   %三角锥手爪 黄色
   plot3([G1_0(1,k),H0_0(1,k)],[G1_0(2,k),H0_0(2,k)],[G1_0(3,k),H0_0(3,k)],'y','LineWidth',2); %G1-H0
   hold on
   plot3([G2_0(1,k),H0_0(1,k)],[G2_0(2,k),H0_0(2,k)],[G2_0(3,k),H0_0(3,k)],'y','LineWidth',2); %G2-H0
   hold on
   plot3([G3_0(1,k),H0_0(1,k)],[G3_0(2,k),H0_0(2,k)],[G3_0(3,k),H0_0(3,k)],'y','LineWidth',2); %G3-H0
   hold on
   
   % 直线末端轨迹 绿色
   plot3(Path_actual(1,1:k),Path_actual(2,1:k),Path_actual(3,1:k),'g','LineWidth',2); 
   hold on
   % 期望末端轨迹 蓝色
   plot3(Path_desired(1,1:k),Path_desired(2,1:k),Path_desired(3,1:k),'b','LineWidth',2);
   hold on
   
   %当前末端点
   scatter3(Path_actual(1,k),Path_actual(2,k),Path_actual(3,k),20,'y','filled');
   hold on

   grid on
   
   axis([-1,1,-1,1,0,1]);
   % 定义坐标范围

   % 调用getframe函数生成每个帧
   frame = getframe(gcf);
   frame.cdata = imresize(frame.cdata, [1080 1920]); % 设置视频宽高：[高，宽]
   writeVideo(V_Sim,frame);       
   hold off
end

close(V_Sim);
end

