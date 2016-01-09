function [sae1OptTheta] = GD(funObj,theta,options,varargin)
   
        
       for i=1:options.maxIter
             disp(['iteration::',num2str(i)])
             [cost,grad] = funObj(theta);
             theta = theta - 1.2 .* grad;
       end
       sae1OptTheta = theta;
end