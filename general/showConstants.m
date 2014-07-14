%% showConstants - Shows Constants names on the screens and returns a 
%            cell array with them.
%
%       CNames = showConstants(modelDB,model)                                   
%                                                                                                                                                                                                  
%    Input:                                                                 
%      modelDB: Name of the data base where the model is saved or struct
%               with a database.                   
%      model:   String with the name of the model to show.                        
%                                                                           
%    Output:                                                                
%      YNames:  Cell array with the Constants Names
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

function CNames = showConstants(modelDB,model)

if(ischar(modelDB))
    models = load(modelDB);
else
    models = modelDB;
end

if(~isfield(models,model))
    disp(['Model ' model ' not implemented in this database'])
    CNames = {};
else
    CNames = models.(model).CNames;
    C0 = models.(model).C0;
    CUnits = models.(model).CUnits;

    disp(['State Variables in ' models.(model).Name ':'])
    for i=1:length(CNames)
        disp([num2str(i) '. ' CNames{i} ' (init: ' num2str(C0(i)) ...
			'; units: ' CUnits{i} ')'])
    end
end
