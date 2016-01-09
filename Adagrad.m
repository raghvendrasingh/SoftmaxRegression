function [sae1OptTheta] = Adagrad(funObj,theta,data,labels,options,varargin)
     G = zeros(size(theta,1),1);
     alpha=0.5;
     for i=1:options.maxIter
          disp(['iteration::',num2str(i)]);
          data = data(:,randperm(size(data,2)));
          r = randi([1 size(data,2)],1,1);
          [cost,grad] = funObj(theta,data(:,r),labels(:,r));
          G = G + (grad.*grad); 
          theta =theta - (alpha .*  G.^(-1/2)).* grad;    
     end
     sae1OptTheta = theta;
end