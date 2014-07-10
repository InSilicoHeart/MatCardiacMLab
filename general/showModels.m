%% showModels - Display the name of the models in a database and returns
%            an struct with the models and the tags them.
%                                
%
%       [models,tags] = showModels(modelDB)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      modelDB: Name of the file where the database is saved or struct
%               with the database.                        
%                                                                           
%    Output:                                                                
%      models:  Struct with all the models of the database     
%      tags:    Names of the models in the database                                         
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


function [models,tags] = showModels(modelDB)

if(ischar(modelDB))
    models = load(modelDB);
else
    models = modelDB;
end

tags = fieldnames(models);

for i = 1:length(tags)
    disp([num2str(i) '. ' models.(tags{i}).Name ' (' tags{i} ')'])
end
