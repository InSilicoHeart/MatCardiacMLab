function tests = modelTests()

tests = struct('functionHandle',[],'name',{},'expectedValue',{});

test = struct('functionHandle',@testCreateModel001,...
              'name','Create model using COR-exported file',...
              'expectedValue',true);
tests(end+1)=test;
