%% mainTest - Main fail to do all the test to MatCardiacMLab
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
% Last Modification 2014/07/11
%

clc;
clear all;
close all;

addpath('../general/')
addpath('../models')

disp('=================================================')
disp('              EMS Simulator Test')
disp('=================================================')
disp(' ')
disp(' ')
 
%tests = struct('functionHandle',[],'name',{},'expectedValue',{});

mkdir('testResults')
tests = [modelTests() configurationTests() runTests()];

results = false(size(tests));

numTests = length(tests);

for i=1:numTests
  disp([num2str(i) '/' num2str(numTests) ' Test: ' tests(i).name '...'])
  functionHandle = tests(i).functionHandle;
  [result,msg] = functionHandle();
  results(i) = tests(i).expectedValue==result;
  if(results(i))
    resultStr = 'Ok';
  else
    resultStr = 'Bad';
  end
  disp(['   - Result: ' resultStr ' - Message: ' msg])
end

okTests = length(find(results));
badTests = numTests-okTests;

disp(' ')
disp(['Tests: ' num2str(numTests) ', Ok: ' num2str(okTests) ', Bad: ' num2str(badTests) '.'])
