%% showStateVariables - Shows State Variable names on the screens and 
%            returns a cell array with them.
%
%       YNames = showStateVariables(modelDB,model)                                   
%                                                                                                                                                                                                  
%    Input:                                                                 
%      modelDB: Name of the data base where the model is saved or struct
%               with a database.                   
%      model:   String with the name of the model to show.                        
%                                                                           
%    Output:                                                                
%      SVNames:  Cell array with the State Variable Names
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

function SVNames = showStateVariables(modelDB,model)

if(ischar(modelDB))
    models = load(modelDB);
else
    models = modelDB;
end

if(~isfield(models,model))
    disp(['Model ' model ' not implemented in this database'])
    SVNames = {};
else
    SVNames = models.(model).SVNames;
    SV0 = models.(model).SV0;
    SVUnits = models.(model).SVUnits;

    disp(['State Variables in ' models.(model).Name ':'])
    for i=1:length(SVNames)
        disp([num2str(i) '. ' SVNames{i} ' (init: ' num2str(SV0(i)) ...
			'; units: ' SVUnits{i} ')'])
    end
end
