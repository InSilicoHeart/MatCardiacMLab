%% CalculateAPD - Calculates one Action Potential Duration for different 
%                 percentages of repolarization
%                                
%
%     [apd,time]=calculateAPD(values,t,perc)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      values: Vector with membrane potential values                        
%      t:      Time vector for the action potential                         
%      perc:   Percentage of repolarization (between 0 and 1)               
%                                                                           
%    Output:                                                                
%      apd:    Action Potential Duration of the APs in the value vector     
%      time:   Instant of AP ending                                         
%
%  ---------------------------------------------------------------------------
% 
% Electrophysiology Model Simulator (v00.00)
%
% Jesus Carro Fernandez 
% jcarro@usj.es  
%                      
% School of Engineering
% San Jorge University 
% www.usj.es  
%       
% Last Modification 2014/07/08
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

