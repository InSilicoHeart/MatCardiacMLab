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
%      YNames:  Cell array with the State Variable Names
%
%-----------------------------------------------------------------------
% 
% MatCardiacMLab (v00.00)
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
% Last Modification 2014/07/10
%

function YNames = showStateVariables(modelDB,model)

if(ischar(modelDB))
    models = load(modelDB);
else
    models = modelDB;
end

if(~isfield(models,model))
    disp(['Model ' model ' not implemented in this database'])
    YNames = {};
else
    SVNames = models.(model).SVNames;
    for i=1:length(SVNames)
        disp([num2str(i) '. ' SVNames{i}])
    end
end
