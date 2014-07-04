function [result,msg] = testCreateConfigSS001()

Model = 'Carro2011EPI';
Constants = {};
Values = [];
DT = 0.1;
CL = 1000;
nCLs = 10;
nCLs_save = 1;
sv_save = {};
cv_save = {};
biomarkers = {};
var2biomarker = {};
path_save = ['testResults'];
Output = ['testCreateConfigSS001_res.mat'];
ConfigFile = ['testCreateConfigSS001_conf.mat'];

delete([path_save '/' ConfigFile]);

try
  config = CreateConfigurationSteadyState(Model,Constants,Values,DT,...
    CL,nCLs,sv_save,cv_save,nCLs_save,biomarkers,var2biomarker,...
    [path_save '/' Output],[path_save '/' ConfigFile]);

  file = dir(path_save);
  result = false;
  for i=1:length(file)
    if(strcmp(file(i).name,ConfigFile))
      result = true;
      break
    end
  end

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

