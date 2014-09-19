%% CreateConfigurationAPDRateAdaptation - Creates configurations for the 
%            MatCardiacMLab Simulator using the APD Rate Adaptation 
%            protocol
%                                
%
%    config = createConfigurationAPDRateAdaptation(Model,...
%                     Constants,Values,DT,CL1,nCLs1,CL2,nCLs2,...
%                     sv_save,cv_save,nCLs_save,var2biomarker,Output[,...
%                     ConfigFile])
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
%      Output:      Name of the file where the results are stored.
%      ConfigFile:  Name of the file where the configuration has to be 
%                   saved (Optional).
%                                                                           
%    Output:  
%      config: Structure with the configuration of the simulation.
%
%    Throws:
%      InconsistentConstants: Length of the Constants cell array is 
%                   different from the length of Values
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
                      sv_save,cv_save,nCLs_save,var2biomarker,Output,...
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
config.Output = Output;

if (length(varargin)>0)
  save(varargin{1},'-struct','config');
end
