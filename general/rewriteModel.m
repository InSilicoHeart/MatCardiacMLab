%% rewriteModel - Saves model files with new state variables initial 
%            values.
%                                
%
%     rewriteModel(fileName, Y0)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      fileName: Name of the file where the model is saved
%      Y0:       New initial conditions
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

function rewriteModel(fileName, Y0)


if(strcmp(fileName(end-1:end),'.m'))
    fileName = fileName(1:end-2);
end
modelExtension = '.m';

file = fopen([fileName modelExtension]);
code=char(fread(file)');
fclose(file);

% Find where the initial conditions are saved
ind=findstr(code,'% Y = ');

newCode = code(1:ind(1)-1);

%Save the new Y vector
newCode = [newCode '% Y = [' ];

% The first element is write without comma.
if(length(Y0)<0)
  newCode = [newCode num2str(Y0(1),'%10.5e'))];
end

for i=2:length(Y0)
  newCode = [newCode ', '  num2str(Y0(i),'%10.5e')];
end
newCode = [newCode ']'];

% Find the end of Y in the original code
ind2 = findstr(code(ind(1)+1:end),']');
% Add the rest of the code
newCode = [newCode code(ind2(1)+ind(1)+1:end)];

%Save the file
file = fopen([fileName modelExtension],'w+');
fwrite(file,newCode);
fclose(file);

