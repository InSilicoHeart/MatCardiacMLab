%% MCMLSimulator - Core of the toolbox. Executes the simulations
%
%     Y = MCMLSimulator(configuration[,database])                                    
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
%      Y:    State variables at the end of the simulation     
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
% Last Modification 2014/07/10
%

function Y0=MCMLSimulator(configuration,database)

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
    Y0 = runSimulationChar(configuration,model,options);
else if(iscell(configuration.Stimulation))
    Y0 = runSimulationCell(configuration,model,options);
    else
        Y0 = runSimulationNoCell(configuration,model,options);
    end
end

toc
disp(' ')
disp(' ')
