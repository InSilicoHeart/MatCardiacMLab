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
function [result,msg] = testCreateConfigAPDRA001()

Model = 'Carro2011EPI';
Constants = {};
Values = [];
DT = 0.1;
CL1 = 1000;
nCLs1 = 480;
CL2 = 600;
nCLs2 = 480;
nCLs_save = 0;
sv_save = {};
cv_save = {};
var2biomarker = {'V'};
path_save = ['testResults'];
Output = ['testCreateConfigAPDRA001_res.mat'];
ConfigFile = ['testCreateConfigAPDRA001_conf.mat'];

if(checkIfFileExists(path_save,ConfigFile))
  delete([path_save '/' ConfigFile]);
end

try
  Config = createConfigurationAPDRateAdaptation(Model,...
                      Constants,Values,DT,CL1,nCLs1,CL2,nCLs2,...
                      sv_save,cv_save,nCLs_save,var2biomarker,...
					  'ResultFile',[path_save '/' Output],...
					  'ConfigFile',[path_save '/' ConfigFile]);

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

