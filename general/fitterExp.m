%% fitterExp - used to calculate the error of fit data to an 
%            exponential function whith the form: A*exp(-t/B)+C
%                                
%
%     f = fitterExp(x,data)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      x:      Vector with the values of A, B and C.
%      data:   Matrix whith the value of time and the data to fit in the
%              first and the second column respectively.               
%                                                                           
%    Output:                                                                
%      f:      Mean square error.                                        
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


function f = fitterExp(x,data)
t=data(:,1);
expon=x(1)*exp(-t/x(2))+x(3);

f=mean((data(:,2)-expon).^2);
