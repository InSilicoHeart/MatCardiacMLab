function [result,msg] = testRunSimulation004()

path_save = 'testResults';
Output = ['testCreateConfig004_res.mat'];
ConfigFile = ['testCreateConfig004_conf.mat'];

delete([path_save '/' Output]);

%try
  MCMLSimulator([path_save '/' ConfigFile]);
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

%catch ME
%  result = false;
%  msg = ME.message;
%  return;
%end

msg = ['Computed file ' ConfigFile];

