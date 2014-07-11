%% testCreateModel001 - Creates a new model from a file that hasn't 
%            been processed by MatCardiacMLab
%                                
%
%     [result,msg] = testCreateModel001()         
% 
%                                                                           
%    Output:                                                                
%      result: True if the file has been created. False in other case
%      msg:    Explanation of the result
%
%
%-----------------------------------------------------------------------
% 
% MatCardiacMLab (v00.00)
%
% Matlab toolbox to Simulate Electrophysiologycal Cardiac Models 
% described in CellML files
%
% Jesus Carro Fernandez 
% jcarro@usj.es  
%                      
% School of Engineering
% San Jorge University 
% www.usj.es  
%       
% Last Modification 2014/07/11
%
function [result,msg] = testCreateModel001()

pathInput = './testFiles';
pathOutput = './testResults';
modelFileInput = 'Carro_Rodriguez_Laguna_Pueyo_2011_EPI.m';
modelFileOutput = modelFileInput;
modelName = 'CRLP2011EPI';

if(checkIfFileExists(pathOutput,modelFileOutput))
  delete([pathOutput '/' modelFileOutput]);
end

try
  model = createModel([pathInput '/' modelFileInput],[pathOutput '/' modelFileOutput],modelName);
  result = checkIfFileExists(pathOutput,modelFileOutput);
  
  if(~result)
    msg = 'File not created';
    return;
  end
cath ME
  disp(['Err:' ME ])
  result = false;
  msg = lasterr;
  return
end

msg = ['Created file: ' modelFileOutput];
