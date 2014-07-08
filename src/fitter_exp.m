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

%FITTER EXPONENTIAL, used to calculate the error of fit data to an 
%                    exponential function
%
%   Function to calculate the error of fit data to an exponential function 
%   whith the form: A*exp(-t/B)+C
%
%   Jesús Carro Fernández - University of Zaragoza
%   Last Version: May 6, 2010
%
%   f = fitter_exp(x,data)
%
%   Parameters:
%       x:      Vector with the values of A, B and C.
%       data:   Matrix whith the value of time and the data to fit in the
%               first and the second column respectively.
%
%   Results:
%       f:      Mean square error.
%
%

function f = fitter_exp(x,data)
t=data(:,1);
expon=x(1)*exp(-t/x(2))+x(3);

f=sum((data(:,2)-expon).^2);
