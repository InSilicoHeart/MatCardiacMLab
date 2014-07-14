%% CalculateAPD - Calculates Action Potential Duration for different 
%            percentages of repolarization. Calculates one APD for 
%            several membrane potential series.
%                                
%
%     [apd,time]=calculateAPD(values,t,perc)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      values: Matrix with membrane potential series in each column                        
%      t:      Time vector in a column for the action potential                         
%      perc:   Percentage of repolarization (between 0 and 1)               
%                                                                           
%    Output:                                                                
%      apd:    Action Potential Duration of the APs in the value vector.     
%      time:   Instants of AP ending.
%
%    If there isn't an stimulated AP apd and time returns Nan.
%    If the AP doesn't reach the repolarization percentage apd and time 
%    returns Inf.
%
%    Throws:
%      BadPercent: Percentage bigger than 1
%      NegativePercent: Negative Percentage
%
%-----------------------------------------------------------------------
% 
% MatCardiacMLab
%
% Matlab toolbox to Simulate Electrophysiologycal Cardiac Models 
% described in CellML files
%
% Jesus Carro Fernandez 
% jcarro@usj.es  
%                      
% School of Engineering
% San Jorge University 
% www.usj.es  
%       
% Last Modification 2014/07/09
%


function [apd,time]=calculateAPD(values,t,perc)

if(perc>1)
  error('MatCardiacMLab:calculateAPD:BadPercentage','Percentage value is bigger than 1')
end

if(perc<0)
  error('MatCardiacMLab:calculateAPD:NegativePercentage','Percentage value is negative')
end

% In the case the values are empty, it's necessary to return an empty matrix
if(isempty(values))
  apd = zeros(1,0);
  time = zeros(1,0);
  return;
end

% We create a time matrix for each value serie
t_matrix = t*ones(1,length(values(1,:)));

% First diff for the values
values_diff = diff(values)./diff(t_matrix);

% We calculate the max value to calculate the percentage of restitution and 
% the max diff to locate the point where we begin the APD.
[max_diff, ind_diff] = max(values_diff);
[max_val, ind_val] = max(values);

% Matrix with index values for each serie
index = (1:length(values(:,1)))'*ones(1,length(values(1,:)));

% Matrix with the beginning APD index
ind_diff_mtrx = ones(length(values(:,1)),1)*ind_diff;

% Valid positions for the end
index_limit = index>ind_diff_mtrx;

mtrx_for_start = values;

% The points after the maximun diff are not valid to be the start Vm value
mtrx_for_start(index_limit)=Inf;
% We calculate the stable value for Vm
start_value=min(mtrx_for_start);

gap = max_val-start_value;
nan_results = find(gap<20); %To avoid non estimulated apd

final_value = max_val-gap*perc;
mtrx_for_end=values;
%The point befor the maximun diff are not valid
mtrx_for_end(~index_limit)=Inf;
ind_diff_mtrx = ones(length(values(:,1)),1)*final_value;
% We look for the first index that is lower than the final value
[val,ind_end] = max(mtrx_for_end<ind_diff_mtrx);

apd = t(ind_end)-t(ind_diff);

time = t(ind_end);
% If no one is lower, the APD has no end
inf_results = find(val==0);
apd(inf_results) = Inf;
time(inf_results)= Inf;

apd(nan_results) =NaN;
time(nan_results)=NaN;
