%% CalculateTriangulation - Calculates Triangulation for several 
%          membrane potential series.
%                                
%
%     triangulation = calculateTriangulation(values,t)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      values: Matrix with membrane potential series in each column                        
%      t:      Time vector in a column for the action potential                         
%                                                                           
%    Output:                                                                
%      triangulation:  Difference between APD90 and APD50
%
%    If there isn't an stimulated AP returns Nan.
%    If the AP doesn't reach the 90% of the repolarization returns Inf.
%
%    See also CalculateAPD
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
% Last Modification 2014/07/09
%

function triangulation = calculateTriangulation(values,t)

apd90=calculateAPD(values,t,0.9);
apd50=calculateAPD(values,t,0.5);
triangulation = apd90-apd50;
