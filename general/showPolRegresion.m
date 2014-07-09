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

function str = showPolRegresion(y_char,x_char,coef,order)

num_variables = length(x_char);

elements = fullfactsort(ones(1,order)*num_variables+1)-1;

num_combinations = length(elements(:,1));

order = zeros(num_combinations,num_variables);

for i=1:num_variables 
  order(:,i) = sum(i==elements,2);
end

str = [y_char ' = '];
for i=1:num_combinations

  if(i==1)
    str = [str num2str(coef(i))];
  else
    if(coef(i)>=0)
      str = [str ' + ' num2str(coef(i))];
    else
      str = [str ' - ' num2str(-coef(i))];
    end
  end

  for j=1:num_variables
    if(order(i,j)>0)
      str = [str x_char{j}];
      if(order(i,j)>1)
        str = [str '^' num2str(order(i,j))];
      end
    end
  end

end

if(nargout<1)
  disp(str)
end
