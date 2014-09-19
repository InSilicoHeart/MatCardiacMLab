%% reasign - Modifies constant value in runtime
%
%       reasign(Constants, Values)                                   
%                                                                                                                                                                                                  
%    Input:                                                                 
%      Constants: Cell array with the name of the constants
%      Values:    Vector with the new values of the constants.                    
%
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

function reasign(Constants, Values)

for i=1:length(Constants)
    assignin('caller',Constants{i},Values(i))
end
