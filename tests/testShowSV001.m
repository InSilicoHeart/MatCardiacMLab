%% testShowSV001 - Show the Model State Variables of the Carro2011EPI
%            model
%                                
%
%     [result,msg] = testShowSV001()
% 
% 
%    Output: 
%      result: True if the method executes without problems. False in 
%              other case
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
function [result,msg] = testShowSV001()

model = 'Carro2011EPI';
modelDB = 'MatCardiacMLabDB.mat';

result = false;

try 
  CNames = showStateVariables(modelDB,model);
  result = true;
  msg = ['State Variables shown'];
cath ME
  disp(['Err:' ME ])
  result = false;
  msg = lasterr;
  return;
end
