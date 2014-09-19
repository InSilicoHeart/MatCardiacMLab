%% CalculateDiastolic - Calculates diastolic value for time series of 
%            several variables
%
%     [dia,time]=calculateDiastolic(values,t)
%                                                                                                                                                                                                  
%    Input:                                                                 
%      values: Matrix with variable series in each column                        
%      t:      Time vector for the series                         
%                                                                           
%    Output:                                                                
%      dia:    Diastolic Value     
%      time:   Instant of diastolic value                                         
%
%-----------------------------------------------------------------------
% 
% MatCardiacMLab
%
% Matlab toolbox to Simulate Electrophysiologycal Cardiac Models 
% described in CellML files
%
% https://github.com/ChusCarro/MatCardiacMLab/
%
%
% Jesus Carro Fernandez 
% jcarro@usj.es  
%                      
% School of Engineering
% San Jorge University 
% www.usj.es  
%

function [dia,time]=calculateDiastolic(values,t)

[dia,ind]=min(values);
time=t(ind);
