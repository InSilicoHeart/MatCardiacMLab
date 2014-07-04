function [result,msg] = testRunSimulation001()

Model = 'TestModel';
path_save = 'testResults';
Output = ['testCreateConfig001_res.mat'];
ConfigFile = ['testCreateConfig001_conf.mat'];

recycle([path_save '/' Output]);

try

  file = dir(path_save);
  result = false;
  for i=1:length(file)
    if(strcmp(file(i).name,Output))
      result = true;
      break
    end
  end

  if(~result)
    msg = 'Computation output not found';
    return;
  end

cath ME
  disp(['Err:' ME ])
  result = false;
  msg = lasterr;
  return;
end

msg = ['Computed file ' ConfigFile];

