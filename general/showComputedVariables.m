%% showComputedVariables - Shows Computed Variable names on the screens 
%            and returns a cell array with them.
%
%       YNames = showComputedVariables(modelDB,model)                                   
%                                                                                                                                                                                                  
%    Input:                                                                 
%      modelDB: Name of the data base where the model is saved or struct
%               with a database.                   
%      model:   String with the name of the model to show.                        
%                                                                           
%    Output:                                                                
%      YNames:  Cell array with the Computed Variable Names
%
%-----------------------------------------------------------------------
% 
% MatCardiacMLab
%
% Matlab toolbox to Simulate Electrophysiologycal Cardiac Models 
% described in CellML files
%
% Jesus Carro Fernandez 
% jcarro@usj.es  
%                      
% School of Engineering
% San Jorge University 
% www.usj.es  
%       
% Last Modification 2014/07/14
%

function CVNames = showComputedVariables(modelDB,model)

if(ischar(modelDB))
    models = load(modelDB);
else
    models = modelDB;
end

if(~isfield(models,model))
    disp(['Model ' model ' not implemented in this database'])
    CVNames = {};
else
    CVNames = models.(model).CVNames;
	CVUnits = models.(model).CVUnits;

    disp(['Computed Variables in ' models.(model).Name ':'])
    for i=1:length(CVNames)
        disp([num2str(i) '. ' CVNames{i} '(units: ' CVUnits{i} ')'])
    end
end
