function [result,msg] = testRunSimulation003()

path_save = 'testResults';
Output = ['testCreateConfig003_res.mat'];
ConfigFile = ['testCreateConfig003_conf.mat'];

delete([path_save '/' Output]);

try
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

  simResult = load([path_save '/' Output]);

  if(~strcmp('I_K_tot',simResult.CV{1}.resultNames{1}))
    msg = 'Computed variable I_K_tot not found';
    result = false; 
    return;
  end


  if(~strcmp('V',simResult.SV{1}.resultNames{1}))
    msg = 'State variable V not found';
    result = false; 
    return;
  end

catch ME
  result = false;
  msg = ME.message;
  return;
end

msg = ['Computed file ' ConfigFile];

