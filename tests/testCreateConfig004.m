%% testCreateConfig004 - Creates a new configuration to test a simple
%            cell configuration
%                                
%
%     [result,msg] = testCreateConfig004() 
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
% Jesus Carro Fernandez 
% jcarro@usj.es  
%                      
% School of Engineering
% San Jorge University 
% www.usj.es  
%       
% Last Modification 2014/07/16
%

function [result,msg] = testCreateConfig004()

Model = 'Carro2011EPI';
Constants = {{},{}};
Values = {[],[]};
DT = 0.1;
Stimulation = {[0:1000:9000],[10000:600:15400]};
Time = 16000;
sv_save = {{},{}};
cv_save = {{},{}};
path_save = ['testResults'];
Output = ['testCreateConfig004_res.mat'];
ConfigFile = ['testCreateConfig004_conf.mat'];

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

