%% getIndexToSave - Finds the numerical index of same variables from 
%            their name inside a model
%                                
%
%     indSave = getIndexToSave(names,model,cathegory)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      names:     Cell array with the name of the variable
%      model:     Model structure where the variables are look for                         
%      cathegory: Name of the field wher names are stored               
%                                                                           
%    Output:                                                                
%      indSave:   Vector with the numerical index of names in model   
%  
%    Throws:
%      MultipleValues: There are more than one element with the label 
%                 names in cathegory
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
% Last Modification 2014/07/09
%

function indSave = getIndexToSave(names,model,cathegory)

indSave = [];
for j=1:length(names)
  ind = find(strcmp(model.(cathegory),names{j}),1);
  if(isempty(ind))
    warning('MatCardiacMLab:getIndexToSave:NoValue',...
      ['There isn''t any element with the label ' names{j} ' in ' ...
      cathegory])
  else if(length(ind)>1)
    error('MatCardiacMLab:getIndexToSave:MultipleValues',...
      ['There are more than one element with the label ' names{j} ...
      ' in ' cathegory]);
    else
      indSave = [indSave ind];
    end
  end  
end

