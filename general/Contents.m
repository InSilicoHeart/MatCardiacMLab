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
%            MatCardiacMLab simualtor 
%
%  OTHERS
%
%  fitterExp - used to calculate the error of fit data to an 
%            exponential function whith the form: A*exp(-t/B)+C
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
% Last Modification 2014/07/10
%
