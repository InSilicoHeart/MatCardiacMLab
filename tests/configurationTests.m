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
function tests = configurationTests()

tests = struct('functionHandle',[],'name',{},'expectedValue',{});

test = struct('functionHandle',@testCreateConfig001,...
              'name','Create basic configuration',...
              'expectedValue',true);
tests(end+1)=test;


test = struct('functionHandle',@testCreateConfig002,...
              'name','Create basic configuration with a modified parameter',...
              'expectedValue',true);
tests(end+1)=test;

test = struct('functionHandle',@testCreateConfig003,...
              'name','Create basic configuration with CV and SV to save',...
              'expectedValue',true);
tests(end+1)=test;

test = struct('functionHandle',@testCreateConfig004,...
              'name','Create basic configuration with cell stimulation',...
              'expectedValue',true);
tests(end+1)=test;


test = struct('functionHandle',@testCreateConfigSS001,...
              'name','Create Steady State configuration',...
              'expectedValue',true);
tests(end+1)=test;


test = struct('functionHandle',@testCreateConfigSS002,...
              'name','Create Steady State configurationi with a modified parameter',...
              'expectedValue',true);
tests(end+1)=test;

test = struct('functionHandle',@testCreateConfigAPDRA001,...
              'name','Create APD Rate Adaptation configuration',...
              'expectedValue',true);
tests(end+1)=test;
