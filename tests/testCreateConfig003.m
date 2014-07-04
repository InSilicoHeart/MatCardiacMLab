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

delete([path_save '/' ConfigFile]);

try
  config = CreateConfiguration(Model,Constants,Values,DT,...
                        Stimulation,Time,sv_save,cv_save,...
                        [path_save '/' Output], ...
                        [path_save '/' ConfigFile]);

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

