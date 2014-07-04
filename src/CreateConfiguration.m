%=======================================================================
%
% CreateConfiguration: Function to create a configuration file for the 
%              EMS simulator.
%
%-----------------------------------------------------------------------
%
%    CreateConfiguration(Model,Constants,Values,DT,...
%                        Stimulation,Time,sv_save,Output,...
%                        Calibration,WriteDefault [,ConfigFile])
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
    Stimulation,Time,sv_save,cv_save,Output,Calibration,WriteDefault,varargin)

config.Model = Model;
config.Constants = Constants;
config.Values = Values;
config.DT = DT;
config.Stimulation = Stimulation;
config.Time = Time;
config.Output = Output;
config.sv_save = sv_save;
config.cv_save = cv_save;
config.Calibration = Calibration;
config.WriteDefault = WriteDefault;

if (length(varargin)>0)
  save(varargin{1},'-struct','config');
end
