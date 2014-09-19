%% CreateConfigurationSteadyState - Creates configurations for the 
%            MatCardiacMLab Simulator using the Steady State protocol
%                                
%
%    config = createConfigurationSteadyState(Model,Constants,Values,...
%                     DT,CL,nCLs,sv_save,cv_save,nCLs_save,...
%                     biomarkers,var2biomarker,optional)
%
%    Input:                                                                 
%      Model:       MatCardiacMLab Model Structure or string with the 
%                   name of the model in the database that will be used
%      Constants:   Cell array with the name of the model constants that
%                   will be modified in the simulation
%      Values:      Vector with the new values for the constants.
%      DT:          Step size for the output in milliseconds.
%      CL:          Cycle length in milliseconds.
%      nCLs:        Number of cycles.
%      sv_save:     Cell array with the names of the State Variables to 
%                   save.
%      cv_save:     Cell array with the names of the Computed Variables
%                   to save.
%      nCL_save:    Number of CLs to save.
%      biomarkers:  Cell array with the names of the biomarkers to 
%                   calculate:
%                     - APD90
%                     - Triangulation
%                     - Systolic
%                     - Diastolic
%      var2biomarker: Variables used to calculate each one of the 
%                   biomarkers.
%      optional:    Pairs of parameteres to indiate other options
%          ResultFile:  Name of the file where the results are stored.
%          ConfigFile:  Name of the file where the configuration has to
%                       be saved (Optional).
%                                                                           
%    Output:  
%      config: Structure with the configuration of the simulation.
%
%    Throws:
%      InconsistentConstants: Length of the Constants cell array is 
%                   different from the length of Values
%      InconsistentBiomarkers: Length of the biomarkers cell array is 
%                   different from the length of var2biomarkers
%      InconsistentOptional: The optional configuration is composed by
%                   and odd number of parameters.
%      NoDefinedOption: The option is not defined
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

function config = createConfigurationSteadyState(Model,Constants,Values,DT,...
    CL,nCLs,sv_save,cv_save,nCLs_save,biomarkers,var2biomarker,varargin)

if(length(Constants)~=length(Values))
  error('MatCardiacMLab:createConfigurationSteadyState:InconsistentConstants',...
     'Length of the Constants cell array is different from the length of Values')
end

if(length(Constants)~=length(Values))
  error('MatCardiacMLab:createConfigurationSteadyState:InconsistentBiomarkers',...
     'Length of the biomarkers cell array is different from the length of var2biomarkers')
end

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

ConfigFile = [];

if (mod(length(varargin),2)>0)
  error('MatCardiacMLab:createConfigurationSteadyState:InconsistentOptional',...
     ['Optional parameters must be in pairs'])
end

for i=1:(length(varargin)/2)
  if(strcmp(varargin{2*i-1},'ResultFile'))
    config.ResultFile = varargin{2*i};
  else if(strcmp(varargin{2*i-1},'ConfigFile'))
      ConfigFile = varargin{2*i};
    else
      error('MatCardiacMLab:createConfigurationSteadyState:NoDefinedOption',...
         ['Option ' varargin{2*i-1} ' is not defined'])
    end
  end
end

if(~isempty(ConfigFile))
  save(ConfigFile,'-struct','config');
end
 
