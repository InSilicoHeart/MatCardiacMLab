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

function SV0=RunSimulationChar(configuration,model,options)

disp(['Protocol: ' configuration.Stimulation])
if(~isempty(configuration.Constants))
  disp('Modified parameters:')
  for i=1:length(configuration.Constants)
    disp(['   ' configuration.Constants{i} ': ' num2str(configuration.Values(i))])
  end
end
  
if(strcmp(configuration.Stimulation,'SteadyState'))
    SV0=RunSimulationSteadyState(configuration,model,options);
    return;
end

if(strcmp(configuration.Stimulation,'APDRateAdaptation'))
    SV0=RunSimulationAPDRateAdaptation(configuration,model,options);
    return;
end

disp(['Protocol ' configuration.Stimulation ' not implemented yet.'])
SV0=[];
