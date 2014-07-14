%% MatCardiacMLab/general: Matlab toolbox to Simulate 
%       Electrophysiologycal Cardiac Models described in CellML files                               
%
%  MCMLSimulator - Core of the toolbox. Executes simulations.
%
%  BIOMARKERS
%
%  calculateAPD - Calculates one Action Potential Duration for different 
%            percentages of repolarization.
%  calculateAPD90 - Calculates Action Potential Duration at 90% of 
%            repolarization.
%  calculateDiastolic - Calculates diastolic value for time series of 
%            several variables.
%  calculateSystolic - Calculates systolic value for time series of 
%            several variables.
%  calculateTriangulation - Calculates Triangulation for several 
%            membrane potential series.
%
%  CONFIGURATION
%
%  createConfiguration - Creates a basic configuration for the 
%            MatCardiacMLab Simulator.
%  createConfigurationAPDRateAdaptation - Creates configurations for the 
%            MatCardiacMLab Simulator using the APD Rate Adaptation 
%            protocol.
%  createConfigurationSteadyState - Creates configurations for the 
%            MatCardiacMLab Simulator using the Steady State protocol.
%
%  MODELS
%
%  createModel - Creates a model for the simulator based on the file
%            exported by COR to MatLab
%  createModelStructure - Creates a model structure for the 
%            MatCardiacMLab simulator 
%  rewriteModel - Saves model files with new state variables initial 
%            values.
%  showComputedVariables - Shows Computed Variable names on the screens 
%            and returns a cell array with them.
%  showModels - Display the name of the models in a database and returns
%            an structure with the models and the tags them.
%  showStateVariables - Shows State Variable names on the screens and 
%            returns a cell array with them.
%
%  RUN
%
%  runSimulationAPDRateAdaptation - Runs simulations for the predefined
%            protocol APDRateAdaptation
%  runSimulationCell - Runs simulations for the generic stimulation 
%            using more than one stimulation vector (cell of 
%            stimulations)
%  runSimulationChar - Runs simulations for the predefined protocols
%  runSimulationNoCell - Runs simulations for the generic stimulation 
%            using only one stimulation vector (no cell of stimulations)
%  runSimulationSteadyState - Runs simulations for the predefined
%            protocol SteadyState
%
%  OTHERS
%
%  fitterExp - used to calculate the error of fit data to an 
%            exponential function with the form: A*exp(-t/B)+C
%
%  getIndexToSave - Finds the numerical index of same variables from 
%            their name inside a model
%
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
% Last Modification 2014/07/11
%
