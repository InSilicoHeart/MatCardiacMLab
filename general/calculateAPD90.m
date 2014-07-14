%% CalculateAPD90 - Calculates Action Potential Duration at 90% of 
%            repolarization. Calculates one APD for several membrane
%            potential series.
%                                
%
%     [apd90,time] = calculateAPD90(values,t)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      values: Matrix with membrane potential series in each column                        
%      t:      Time vector in a column for the action potential                         
%                                                                           
%    Output:                                                                
%      apd90:  Action Potential Duration of the APs in the value vector.     
%      time:   Instants of AP ending.
%
%    If there isn't an stimulated AP, apd and time returns Nan.
%    If the AP doesn't reach the 90% of the repolarization, apd and time 
%    returns Inf.
%
%    See also CalculateAPD
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

function [apd90,time]=calculateAPD90(values,t)

[apd90,time]=calculateAPD(values,t,0.9);
