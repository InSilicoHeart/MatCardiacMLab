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

%--- Create Configuration ---
%
%  Function to create a configuration file for the EMS simulator.
%
%   config = CreateConfigurationSteadyState(Model,Constants,Values,DT,...
%                                           CL,nCLs,sv_save,nCLs_save,...
%                                           biomarkers,var2biomarker,...
%                                           Output [,ConfigFile])
%
%  Input Variables:
%    - Model: Model's name in the data base that is going to be used.
%    - Constants:
%
%  Output Variables:
%    - config: configuration structure;

function config = CreateConfigurationSteadyState(Model,Constants,Values,DT,...
    CL,nCLs,sv_save,cv_save,nCLs_save,biomarkers,var2biomarker,Output,varargin)

config.Model = Model;
config.Stimulation = 'SteadyState';
config.Constants = Constants;
config.Values = Values;
config.DT = DT;
config.CL = CL;
config.nCLs = nCLs;
config.sv_save = sv_save;
config.cv_save = cv_save;
config.nCLs_save = nCLs_save;
config.biomarkers = biomarkers;
config.var2biomarker = var2biomarker;
config.Output = Output;

if (length(varargin)>0)
  save(varargin{1},'-struct','config');
%  disp(['Configuration saved at: ' varargin{1}])
end

