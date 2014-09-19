%% runSimulationChar - Runs simulations for the predefined protocols
%                                
%
%     SV = runSimulationChar(configuration,model,options)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      configuration: Structure with a configuration created with the 
%                following methods:
%                    - createConfigurationSteadyState
%                    - createConfigurationAPDRateAdaptation
%      model:         Structure with the model information
%      options:       Integration options
%                                                                           
%    Output:                                                                
%      SV:            State variables at the end of the simulation     
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

function SV=runSimulationChar(configuration,model,options)

disp(['Protocol: ' configuration.Stimulation])
if(~isempty(configuration.Constants))
  disp('Modified parameters:')
  for i=1:length(configuration.Constants)
    disp(['   ' configuration.Constants{i} ': ' num2str(configuration.Values(i))])
  end
end
  
if(strcmp(configuration.Stimulation,'SteadyState'))
    SV=runSimulationSteadyState(configuration,model,options);
    return;
end

if(strcmp(configuration.Stimulation,'APDRateAdaptation'))
    SV=runSimulationAPDRateAdaptation(configuration,model,options);
    return;
end

disp(['Protocol ' configuration.Stimulation ' not implemented yet.'])
SV=[];
