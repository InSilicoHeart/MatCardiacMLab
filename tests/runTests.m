function tests = runTests()

tests = struct('functionHandle',[],'name',{},'expectedValue',{});

test = struct('functionHandle',@testRunSimulation001,...
              'name','Run basic configuration',...
              'expectedValue',true);
tests(end+1)=test;

test = struct('functionHandle',@testRunSimulation002,...
              'name','Run basic configuration with a modified parameter',...
              'expectedValue',true);
tests(end+1)=test;

test = struct('functionHandle',@testRunSimulation003,...
              'name','Run basic configuration with CV and SV to save',...
              'expectedValue',true);
tests(end+1)=test;


test = struct('functionHandle',@testRunSimulationSS001,...
              'name','Run Steady State Configuration',...
              'expectedValue',true);
tests(end+1)=test;
