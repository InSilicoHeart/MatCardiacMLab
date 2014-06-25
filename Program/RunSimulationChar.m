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

disp(['Protocol ' configuration.Stimulation ' not implemented yet.:wq'])
SV0=[];
