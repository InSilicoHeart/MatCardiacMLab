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

% Electrophysiology Model Simulator
%
%
%                Jesus Carro Fernandez 2012/07/20
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
%options = odeset('RelTol',1e-12,'MStateDependence','strong','BDF','on','MaxStep',1);
options = odeset('RelTol',1e-12,'MaxStep',1);

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
