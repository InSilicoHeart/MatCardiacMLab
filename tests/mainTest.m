% mainTest - Main file for automatic unit tests
%
%==================================================
%
%                                    © Jesus Carro 
%                                       2014/07/04
%
%==================================================

addpath('../src/')
 
% test = struct('function',@function,'name',name,...
%               'expectedValue',value);
% tests[end+1]=test;

tests = [];

test = struct('function',@testCreateConfig001,...
	      'name','Create basic configuration',...
              'expectedValue',true);
tests[end+1]=test;





results = false(size(tests));

numTests = length(tests);

for i=1:numTests
  disp(['Test: ' test(i).name '...'])
  [result,msg]=tests(i).function();
  results(i) = test(i).expectedValue==result;
  if(result(i))
    resultStr = 'Ok';
  else
    resultStr = 'Bad';
  end
  disp(['   - Result: ' resultStr ' - Message: ' msg])
end

okTests = length(find(results));
badTests = numTests-okTests;

disp(['Tests: ' num2str(numTests) ', Ok: ' num2str(okTests) ', Bad: ' num2str(badTests)])
