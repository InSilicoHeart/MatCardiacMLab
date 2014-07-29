%% MCMLSimulator - Core of the toolbox. Executes the simulations
%
%     [SV, result] = MCMLSimulator(configuration[,database])                                    
%                                                                           
%    Input:                                                                 
%      configuration: Structure with a configuration created with the 
%                following methods:
%                    - createConfiguration
%                    - createConfigurationSteadyState
%                    - createConfigurationAPDRateAdaptation
%      database: Structure with model structures (optional).
%                                                                           
%    Output:                                                                
%      SV:     State variables at the end of the simulation    
%      result: Structure with the result of the simulation 
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

function [SV,result]=MCMLSimulator(configuration,database)

disp(' ')
tic

switch nargin
    case 0
        error('It''s necesary a configuration for the simulation')
    case 1
        if(ischar(configuration))
            configuration=load(configuration);
        end
        database = 'MatCardiacMLabDB.mat';
    otherwise
        if(ischar(configuration))
            configuration=load(configuration);
        end
end

model = configuration.Model;

if(isstruct(database))
    implementedModels = database;
else
    implementedModels = load(database);
end

if(ischar(model))
  if(~isfield(implementedModels,model))
      disp('Unknow model')
      return;
  end
  model = implementedModels.(model);
end

disp(['Model: ' model.Name])

%options = odeset('RelTol',1e-12);
%options = odeset('RelTol',1e-12,'MStateDependence','strong','BDF',...
%                 'on','MaxStep',1);
options = odeset('RelTol',1e-12,'MaxStep',1);

% Depending on the Stimulation parameter, the run method is different
if(ischar(configuration.Stimulation))
    [SV, result] = runSimulationChar(configuration,model,options);
else if(iscell(configuration.Stimulation))
    [SV, result] = runSimulationCell(configuration,model,options);
    else
        [SV, result] = runSimulationNoCell(configuration,model,options);
    end
end

toc
disp(' ')
disp(' ')
