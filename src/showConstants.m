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

function [Names,Values,Units] = ShowConstants(models_input,model)

if(ischar(models_input))
    models = load(models_input);
else
    models = models_input;
end

if(~isfield(models,model))
    disp('Model not implemented')
else
    Names = models.(model).CNames;
    Units = models.(model).CUnits;
    Values = models.(model).C0;
    for i=1:length(Names)
        fprintf('%3d. %-20s\t=\t%5.4e\t[%s]\n',i,Names{i},Values(i),Units{i})
    end
end
