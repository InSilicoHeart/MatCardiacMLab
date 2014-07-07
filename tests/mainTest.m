% mainTest - Main file for automatic unit tests
%
%==================================================
%
%                                    © Jesus Carro 
%                                       2014/07/07
%
%==================================================

clc;
clear all;
close all;

addpath('../src/')
addpath('../src/models')

disp('=================================================')
disp('              EMS Simulator Test')
disp('=================================================')
disp(' ')
disp(' ')
 
%tests = struct('functionHandle',[],'name',{},'expectedValue',{});

tests = [configurationTests()];% runTests()];

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
