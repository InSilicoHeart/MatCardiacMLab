% Add help !!!
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
function [result,msg] = testCreateConfig002()

Model = 'Carro2011EPI';
Constants = {'A_NaK'};
Values = [0.9];
DT = 0.1;
Stimulation = [0:1000:9000];
Time = 10000;
sv_save = {};
cv_save = {};
path_save = ['testResults'];
Output = ['testCreateConfig002_res.mat'];
ConfigFile = ['testCreateConfig002_conf.mat'];

if(checkIfFileExists(path_save,ConfigFile))
  delete([path_save '/' ConfigFile]);
end

try
  config = createConfiguration(Model,Constants,Values,DT,...
                        Stimulation,Time,sv_save,cv_save,...
                        'ResultFile',[path_save '/' Output],...
						'ConfigFile',[path_save '/' ConfigFile]);

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

