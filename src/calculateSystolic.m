%% CalculateSystolic - Calculates systolic value for time series of 
%            several variables
%
%     [sys,time]=calculateSystolic(values,t)
%                                                                                                                                                                                                  
%    Input:                                                                 
%      values: Matrix with variable series in each column                        
%      t:      Time vector for the series                         
%                                                                           
%    Output:                                                                
%      sys:    Systolic Value     
%      time:   Instant of diastolic value                                         
%
%-----------------------------------------------------------------------
% 
% MatCardiacMLab (v00.00)
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

function [sys,time]=calculateSystolic(values,t)

[sys,ind]=max(values);
time=t(ind);
