%% testCreateModel003 - Creates a new model from a file that hasn't 
%            been processed by MatCardiacMLab and rewrite it with 
%            different initial state variables
%                                
%
%     [result,msg] = testCreateModel003()         
% 
%                                                                           
%    Output:                                                                
%      result: True if the file has been created. False in other case
%      msg:    Explanation of the result
%
%
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
function [result,msg] = testCreateModel003()

pathInput = './testFiles';
pathOutput = './testResults';
modelFileInput = 'Carro_Rodriguez_Laguna_Pueyo_2011_EPI.m';
modelFileOutput = 'createModel003.m';
modelName = 'CRLP2011EPI';

if(checkIfFileExists(pathOutput,modelFileOutput))
  delete([pathOutput '/' modelFileOutput]);
end

%try
  result = false;
  model = createModel([pathInput '/' modelFileInput],[pathOutput '/' modelFileOutput],modelName)
  result = checkIfFileExists(pathOutput,modelFileOutput);
  
  if(~result)
    msg = 'File not created';
    return;
  end
  
  SV0 = model.SV0;
  rewriteModel([pathOutput '/' modelFileOutput], SV0*0.5);
  model = createModel([pathOutput '/' modelFileOutput],[pathOutput '/' modelFileOutput],modelName)

  differences = find(abs(SV0*0.5-model.SV0)>1e-6)
  if(~isempty(differences))
    msg = 'Values are not the ones indicated';
    result = false;
    return;
  end
%cath ME
%  disp(['Err:' ME ])
%  result = false;
%  msg = lasterr;
%  return
%end

msg = ['Created file: ' modelFileOutput];
