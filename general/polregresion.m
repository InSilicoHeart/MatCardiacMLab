%% CalculateAPD - Calculates one Action Potential Duration for different 
%                 percentages of repolarization
%                                
%
%     [apd,time]=calculateAPD(values,t,perc)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      values: Vector with membrane potential values                        
%      t:      Time vector for the action potential                         
%      perc:   Percentage of repolarization (between 0 and 1)               
%                                                                           
%    Output:                                                                
%      apd:    Action Potential Duration of the APs in the value vector     
%      time:   Instant of AP ending                                         
%
%  ---------------------------------------------------------------------------
% 
% Electrophysiology Model Simulator (v00.00)
%
% Jesus Carro Fernandez 
% jcarro@usj.es  
%                      
% School of Engineering
% San Jorge University 
% www.usj.es  
%       
% Last Modification 2014/07/08
%

function [coef,err,y_est,r]=polregresion(y,x,order)

data_ini=[ones(length(x(:,1)),1) x];

num_variables = length(data_ini(1,:));

elements = fullfactsort(ones(1,order)*num_variables);

num_combinations = length(elements(:,1));

data=ones(length(y),num_combinations);

for i=1:num_combinations
  data(:,i)=prod(data_ini(:,elements(i,:)),2);
end

coef = inv(data'*data)*(data'*y);

y_est = data*coef;

err=mean((y-y_est).^2).^0.5;

r = (mean(y.*y_est)-mean(y).*mean(y_est))./sqrt((mean(y.^2)-mean(y).^2).*(mean(y_est.^2)-mean(y_est).^2))
