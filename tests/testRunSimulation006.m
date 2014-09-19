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
function [result,msg] = testRunSimulation006()

path_save = 'testResults';
Output = ['testCreateConfig006_res.mat'];
ConfigFile = ['testCreateConfig006_conf.mat'];

delete([path_save '/' Output]);

try
  [SV0, result] = MCMLSimulator([path_save '/' ConfigFile]);
  file = dir(path_save);
  result = true;
  for i=1:length(file)
    if(strcmp(file(i).name,Output))
      result = false;
      break
    end
  end

  if(~result)
    msg = 'Computation output found';
    return;
  end

catch ME
  result = false;
  msg = ME.message;
  return;
end

msg = ['Computed file ' ConfigFile];

