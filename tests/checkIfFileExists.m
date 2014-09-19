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
function exists = checkIfFileExists(folder,fileName)

exists = false;

files = dir(folder);
for i=1:length(files)
  if(strcmp(files(i).name,fileName))
    exists = true;
    break
  end
end

