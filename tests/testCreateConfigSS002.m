function [result,msg] = testCreateConfigSS002()

Model = 'Carro2011EPI';
Constants = {'A_NaK'};
Values = [0.9];
DT = 0.1;
CL = 1000;
nCLs = 10;
nCLs_save = 1;
sv_save = {};
cv_save = {};
biomarkers = {};
var2biomarker = {};
path_save = ['testResults'];
Output = ['testCreateConfigSS002_res.mat'];
ConfigFile = ['testCreateConfigSS002_conf.mat'];

if(checkIfFileExists(path_save,ConfigFile))
  delete([path_save '/' ConfigFile]);
end

try
  config = createConfigurationSteadyState(Model,Constants,Values,DT,...
    CL,nCLs,sv_save,cv_save,nCLs_save,biomarkers,var2biomarker,...
    [path_save '/' Output],[path_save '/' ConfigFile]);

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

