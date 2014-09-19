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

function tests = biomarkerTests()

tests = struct('functionHandle',[],'name',{},'expectedValue',{});

test = struct('functionHandle',@testBiomarkerAPDRA001,...
              'name','Calculate tauF and tauS from a predefined APD secuence',...
              'expectedValue',true);
tests(end+1)=test;

test = struct('functionHandle',@testBiomarkerAPDRA002,...
              'name','Calculate tauF and tauS from a predefined APD secuence with noise',...
              'expectedValue',true);
tests(end+1)=test;

