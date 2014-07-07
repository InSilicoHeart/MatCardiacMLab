function [result,msg] = testCreateConfig003()

Model = 'Carro2011EPI';
Constants = {};
Values = [];
DT = 0.1;
Stimulation = [0:1000:9000];
Time = 10000;
sv_save = {'V'};
cv_save = {'I_K_tot'};
path_save = ['testResults'];
Output = ['testCreateConfig003_res.mat'];
ConfigFile = ['testCreateConfig003_conf.mat'];

if(checkIfFileExists(path_save,ConfigFile))
  delete([path_save '/' ConfigFile]);
end

try
  config = CreateConfiguration(Model,Constants,Values,DT,...
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

