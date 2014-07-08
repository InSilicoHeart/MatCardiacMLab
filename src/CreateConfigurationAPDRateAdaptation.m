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
%   config = CreateConfigurationAPDRateAdaptation(Model,Constants,Values,DT,...
%                                           CL1,nCLs1,CL2,nCLs2,sv_save,nCLs_save,...
%                                           var2biomarker,Output [,ConfigFile])
%
%  Input Variables:
%    - Model: Model's name in the data base that is going to be used.
%    - Constants:
%
%  Output Variables:
%    - config: configuration structure;

function config = CreateConfigurationAPDRateAdaptation(Model,Constants,Values,DT,...
								CL1,nCLs1,CL2,nCLs2,sv_save,cv_save,nCLs_save,...
								var2biomarker,Output,ConfigFile)

config.Model = Model;
config.Stimulation = 'APDRateAdaptation';
config.Constants = Constants;
config.Values = Values;
config.DT = DT;
config.CL1 = CL1;
config.nCLs1 = nCLs1;
config.CL2 = CL2;
config.nCLs2 = nCLs2;
config.sv_save = sv_save;
config.cv_save = cv_save;
config.nCLs_save = nCLs_save;
config.var2biomarker = var2biomarker;
config.Output = Output;

if (length(varargin)>0)
  save(varargin{1},'-struct','config');
end
