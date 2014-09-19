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
function tests = modelTests()

tests = struct('functionHandle',[],'name',{},'expectedValue',{});

test = struct('functionHandle',@testCreateModel001,...
              'name','Create model using COR-exported file',...
              'expectedValue',true);
tests(end+1)=test;

test = struct('functionHandle',@testCreateModel002,...
              'name','Create model using a file previously processed by MatCardiacMLab',...
              'expectedValue',true);
tests(end+1)=test;

test = struct('functionHandle',@testCreateModel003,...
              'name','Creates a new model from a file and rewrite it', ...
              'expectedValue',true);
tests(end+1)=test;

