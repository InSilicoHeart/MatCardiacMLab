%% CreateConfigurationSteadyState - Creates configurations for the 
%            MatCardiacMLab Simulator using the Steady State protocol
%                                
%
%    config = createConfigurationSteadyState(Model,Constants,Values,...
%                     DT,CL,nCLs,sv_save,cv_save,nCLs_save,...
%                     biomarkers,var2biomarker,Output[,ConfigFile])
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
%      InconsistentBiomarkers: Length of the biomarkers cell array is 
%                   different from the length of var2biomarkers
%
%-----------------------------------------------------------------------
% 
% MatCardiacMLab
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

function config = createConfigurationSteadyState(Model,Constants,Values,DT,...
    CL,nCLs,sv_save,cv_save,nCLs_save,biomarkers,var2biomarker,Output,varargin)

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
config.Output = Output;

if (length(varargin)>0)
  save(varargin{1},'-struct','config');
%  disp(['Configuration saved at: ' varargin{1}])
end

