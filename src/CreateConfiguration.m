%% CreateConfiguration - Creates a basic configuration for the 
%            MatCardiacMLab Simulator
%                                
%
%    config = createConfiguration(Model,Constants,Values,DT,Stimulation,
%                              Time,sv_save,cv_save,Output[,ConfigFile]) 
%                                                                                                                                               
%    Input:                                                                 
%      Model:       MatCardiacMLab Model Structure or string with the 
%                   name of the model in the database that will be used
%      Constants:   Cell array with the name of the model constants that
%                   will be modified in the simulation
%      Values:      Vector with the new values for the constants.
%      DT:          Step size for the output in milliseconds
%      Stimulation: Vector with the instants of stimulations. The first
%                   element indicates the time init (value 0 is 
%                   recommended).
%      TimeEnd:        
%      sv_save:
%      cv_save:
%      Output:      
%      ConfigFile: Name of the file where the configuration has to be 
%                  saved (Optional).
%                                                                           
%    Output:  
%      config: Structure with the information for a simulation.
%
%    Throws:
%      MatCardiacMLab:createConfiguration:InconsistentConstants: Length 
%                   of the Constants cell array is different from the 
%                   length of Values
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
% Last Modification 2014/07/09
%

function config = createConfiguration(Model,Constants,Values,DT,...
    Stimulation,TimeEnd,sv_save,cv_save,Output,varargin)

if(length(Constants)~=length(Values))
error('MatCardiacMLab:createConfiguration:InconsistentConstants',...
     'Length of the Constants cell array is different from the length of Values')
end

config.Model = Model;
config.Constants = Constants;
config.Values = Values;
config.DT = DT;
config.Stimulation = Stimulation;
config.TimeEnd = TimeEnd;
config.Output = Output;
config.sv_save = sv_save;
config.cv_save = cv_save;

if (length(varargin)>0)
  save(varargin{1},'-struct','config');
end
