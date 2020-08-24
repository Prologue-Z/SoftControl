function [i] = Find_ClosestToPoint(t,Path_desired,Path_Actual_Now,i_Desired_Last)
%寻找Path_desired中与Path_actual(:,i+1)的距离最接近Distance_Desired的点

%设定的距离（设定轨迹为圆，周长均分/设定轨迹为直线，长度均分）
Distance_Desired = norm(Path_desired(:,length(t))-Path_desired(:,1),2)/(length(t)-1);

% Path_actual与Path_desired各点距离与Distance_Desired差值的绝对值
Distance = 100 * ones(1,length(t));
for i = (i_Desired_Last + 1):length(t)
   Distance(i) = abs(norm(Path_desired(:,i) - Path_Actual_Now,2) - Distance_Desired);
end

[~,index] = min(Distance);

i = index;

end

