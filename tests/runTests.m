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

test = struct('functionHandle',@testRunSimulation004,...
              'name','Run basic configuration with cell configuration',...
              'expectedValue',true);
tests(end+1)=test;

test = struct('functionHandle',@testRunSimulation005,...
              'name',['Runs the configuration to test a simple ' ...
              'cell configuration with sv and cv to save and constant ' ...
              'modification'],'expectedValue',true);
tests(end+1)=test;

test = struct('functionHandle',@testRunSimulation006,...
              'name',['Runs the configuration to test a simple ' ...
              'cell configuration with sv and cv to save and constant ' ...
              'modification. This configuration doesn't generate an ' ...
              'output file'],'expectedValue',true);
tests(end+1)=test;

test = struct('functionHandle',@testRunSimulationSS001,...
              'name','Run Steady State Configuration',...
              'expectedValue',true);
tests(end+1)=test;

test = struct('functionHandle',@testRunSimulationAPDRA001,...
              'name','Run APD Rate Adaptation Configuration',...
              'expectedValue',true);
tests(end+1)=test;

