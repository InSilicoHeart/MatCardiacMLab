function [result,msg] = testCreateConfig001()

Model = 'TestModel';
Constants = {};
Values = [];
DT = 0.1;
Stimulation = [0:1000:10000];
Time = 11000;
sv_save = {};
cv_save = {};
path_save = ['testResults'];
Output = ['testCreateConfig001_res.mat'];
ConfigFile = ['testCreateConfig001_conf.mat'];

recycle([path_save '/' ConfigFile]);

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

