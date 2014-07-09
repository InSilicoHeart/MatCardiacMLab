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

function [peak,ind] = peakCurrent(current,step)

%diff_curr = diff(current);
%i=1:length(diff_curr)-1;
%inds = find((diff_curr(i)>=0 & diff_curr(i+1)<=0)|(diff_curr(i)<=0 & diff_curr(i+1)>=0));

%length(current)

%if(length(inds)<1)
%  inds=1;
%end

%peak = current(inds(1))
%ind = inds(1)

if(nargin==1)
 step=-1;
end

[minimum,ind]=min(step*current);
peak=current(ind);

