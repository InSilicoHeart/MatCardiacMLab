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

%=======================================================================
%
% CreateConfiguration: Function to create a configuration file for the 
%              EMS simulator.
%
%-----------------------------------------------------------------------
%
%    CreateConfiguration(Model,Constants,Values,DT,...
%                        Stimulation,Time,sv_save,cv_save,...
%                        Output[,ConfigFile])
%
%    Input:
%      Model: Model's name in the data base that is going to be used.
%      Constants:
%
%    Output:
%      config: configuration structure;
%
%-----------------------------------------------------------------------
%
%
%
%=======================================================================
%                  
%                                               Jesus Carro Fernandez
%                                               Universidad San Jorge
%                                                       jcarro@usj.es
%                                                          2013/07/26
%
%=======================================================================

function config = CreateConfiguration(Model,Constants,Values,DT,...
    Stimulation,Time,sv_save,cv_save,Output,varargin)

config.Model = Model;
config.Constants = Constants;
config.Values = Values;
config.DT = DT;
config.Stimulation = Stimulation;
config.Time = Time;
config.Output = Output;
config.sv_save = sv_save;
config.cv_save = cv_save;

if (length(varargin)>0)
  save(varargin{1},'-struct','config');
end
