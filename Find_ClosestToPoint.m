function [i] = Find_ClosestToPoint(t,Path_desired,Path_Actual_Now,i_Desired_Last)
%Ѱ��Path_desired����Path_actual(:,i+1)�ľ�����ӽ�Distance_Desired�ĵ�

%�趨�ľ��루�趨�켣ΪԲ���ܳ�����/�趨�켣Ϊֱ�ߣ����Ⱦ��֣�
Distance_Desired = norm(Path_desired(:,length(t))-Path_desired(:,1),2)/(length(t)-1);

% Path_actual��Path_desired���������Distance_Desired��ֵ�ľ���ֵ
Distance = 100 * ones(1,length(t));
for i = (i_Desired_Last + 1):length(t)
   Distance(i) = abs(norm(Path_desired(:,i) - Path_Actual_Now,2) - Distance_Desired);
end

[~,index] = min(Distance);

i = index;

end

