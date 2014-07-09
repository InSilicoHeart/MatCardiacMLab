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

function rewriteModel(file_name, Y0)


if(strcmp(file_name(end-1:end),'.m'))
    file_name = file_name(1:end-2);
end
model_extension = '.m';

file = fopen([file_name model_extension]);
A=char(fread(file)');
fclose(file);

ind=findstr(A,'% Y = ');

B1 = A(1:ind(1)-1);
B2 = ['% Y = [' num2str(Y0(1)) num2str(Y0(2:end),',%10.5e') ']'];
ind2 = findstr(A(ind(1)+1:end),']');
B3 = A(ind2(1)+ind(1)+1:end);

B= [B1 B2 B3];
file = fopen([file_name model_extension],'w+');
fwrite(file,B);
fclose(file);

