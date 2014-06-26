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
