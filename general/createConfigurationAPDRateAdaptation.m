%% CreateConfigurationAPDRateAdaptation - Creates configurations for the 
%            MatCardiacMLab Simulator using the APD Rate Adaptation 
%            protocol
%                                
%
%    config = createConfigurationAPDRateAdaptation(Model,...
%                     Constants,Values,DT,CL1,nCLs1,CL2,nCLs2,...
%                     sv_save,cv_save,nCLs_save,var2biomarker,optional)
%
%    Input:                                                                 
%      Model:       MatCardiacMLab Model Structure or string with the 
%                   name of the model in the database that will be used
%      Constants:   Cell array with the name of the model constants that
%                   will be modified in the simulation
%      Values:      Vector with the new values for the constants.
%      DT:          Step size for the output in milliseconds.
%      CL1:         Cycle length in milliseconds for the first part of 
%                   the protocol.
%      nCLs1:       Number of cycles in the first part of the protocol.
%      CL2:         Cycle length in milliseconds for the second part of 
%                   the protocol.
%      nCLs2:       Number of cycles in the second part of the protocol.
%      sv_save:     Cell array with the names of the State Variables to 
%                   save.
%      cv_save:     Cell array with the names of the Computed Variables
%                   to save.
%      nCL_save:    Number of CL to save.
%      var2biomarker: Variables used to calculate the fast and the slow 
%                   time constants.
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

function config = createConfigurationAPDRateAdaptation(Model,...
                      Constants,Values,DT,CL1,nCLs1,CL2,nCLs2,...
                      sv_save,cv_save,nCLs_save,var2biomarker,...
                      varargin)

if(length(Constants)~=length(Values))
  error('MatCardiacMLab:createConfigurationAPDRateAdaptation:InconsistentConstants',...
     'Length of the Constants cell array is different from the length of Values')
end

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

ConfigFile = [];

if (module(length(varargin),2)>0)
  error('MatCardiacMLab:createConfigurationAPDRateAdaptation:InconsistentOptional',...
     ['Optional parameters must be in pairs'])
end

for i=1:(length(varargin)/2)

  if(strcmp(varargin{2*i-1},'ResultFile'))
    config.ResultFile = varargin{2*i};
  else if(strcmp(varargin{2*i-1},'ConfigFile'))
      ConfigFile = varargin{2*i};
    else
      error('MatCardiacMLab:createConfigurationAPDRateAdaptation:NoDefinedOption',...
         ['Option ' varargin{2*i-1} ' is not defined'])
    end
  end

end

if(~isempty(ConfigFile))
  save(ConfigFile,'-struct','config');
end
 
