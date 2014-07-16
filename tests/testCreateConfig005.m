%% testCreateConfig005 - Creates a new configuration to test a simple
%            cell configuration with sv and cv to save and constant
%            modification
%                                
%
%     [result,msg] = testCreateConfig005() 
%        
%                                                                           
%    Output:                                                                
%      result: True if the file has been created. False in other case
%      msg:    Explanation of the result
%
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

function [result,msg] = testCreateConfig004()

Model = 'Carro2011EPI';
Constants = {{},{'A_NaK'}};
Values = {[],[0.85]};
DT = 0.1;
Stimulation = {[0:1000:9000],[10000:600:15400]};
Time = 16000;
sv_save = {{'V'},{'V'}};
cv_save = {{},{'I_K_tot'}};
path_save = ['testResults'];
Output = ['testCreateConfig005_res.mat'];
ConfigFile = ['testCreateConfig005_conf.mat'];

if(checkIfFileExists(path_save,ConfigFile))
  delete([path_save '/' ConfigFile]);
end

try
  config = createConfiguration(Model,Constants,Values,DT,...
                        Stimulation,Time,sv_save,cv_save,...
                        [path_save '/' Output], ...
                        [path_save '/' ConfigFile]);

  result = checkIfFileExists(path_save,ConfigFile);
  if(~result)
    msg = 'File not created';
    return;
  end

cath ME
  disp(['Err:' ME ])
  result = false;
  msg = lasterr;
  return;
end
msg = ['Created file ' ConfigFile];

