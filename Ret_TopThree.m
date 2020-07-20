function A = Ret_TopThree(B)
% 返回列向量前三项
% 用于齐次变换矩阵变换坐标时去掉最后计算结果的最后第四行元素1
A = B(1:3,1);
end

