function [sae1OptTheta] = AvgSGD(funObj,theta,data,labels,options,varargin)
       avgTheta=zeros(size(theta,1),1);
       for i=1:options.maxIter
             disp(['iteration::',num2str(i)]);
             data = data(:,randperm(size(data,2)));
             r = randi([1 size(data,2)],1,1);
             [cost,grad] = funObj(theta,data(:,r),labels(:,r));
             theta = theta - 2 .* grad;
             avgTheta = avgTheta + theta;
       end
       sae1OptTheta = (1/options.maxIter).* avgTheta;
end