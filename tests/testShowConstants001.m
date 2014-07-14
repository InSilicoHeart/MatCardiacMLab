%% testShowConstants001 - Show the Model Constants of the Carro2011EPI
%            model
%                                
%
%     [result,msg] = testShowConstants001()         
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
% Jesus Carro Fernandez 
% jcarro@usj.es  
%                      
% School of Engineering
% San Jorge University 
% www.usj.es  
%       
% Last Modification 2014/07/14
%

function [result,msg] = testCreateConfig001()

model = 'Carro2011EPI';
modelDB = 'MatCardiacMLabDB.mat';

result = false;

try 
  CNames = showConstants(modelDB,model);
  result = true;
cath ME
  disp(['Err:' ME ])
  result = false;
  msg = lasterr;
  return;
end
