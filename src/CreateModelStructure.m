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

function Model = CreateModelStructure(Name,SV0,mf,SVNames,SVUnits,CNames,C0,CUnits,CVNames,CVUnits)
 
Model.Name = Name;
Model.mf = mf;
Model.SVnum = length(SV0);
Model.SV0 = SV0;
Model.SVNames = SVNames;
Model.SVUnits = SVUnits;
Model.Cnum = length(CNames);
Model.C0 = C0;
Model.CNames = CNames;
Model.CUnits = CUnits;
Model.CVnum = length(CVNames);
Model.CVNames = CVNames;
Model.CVUnits = CVUnits;
