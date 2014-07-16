%% calculateTaus - Calculates the fast and the slow time constant for
%            the APD Rate Adaptation to abrupt changes in the CL 
%            protocol
%                                
%
%     [tauF,tauS]=calculateTaus(values,t)                                    
%    
%    Input:                                                                 
%      values: Matrix with APD in each column                        
%      t:      Time vector in a column for the APD                       
%                                                                           
%    Output:                                                                
%      tauF:   Fast time constant.
%      tauS:   Slow time constant.
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
% Last Modification 2014/07/15
%

function [tauF,tauS]=calculateTaus(values,t)

options = optimset('MaxFunEvals',5000,'MaxIter',5000,'Algorithm','active-set','Display','iter');

nCLs = length(t);
tauS = zeros(1,length(values(1,:)));
tauF = zeros(1,length(values(1,:)));

for i=1:length(values(1,:))
  val2fit = values(:,i);

  %% Initial values
  %x0 = [(val2fit(1)-val2fit(end))/2;(val2fit(1)-val2fit(end))/2;val2fit(end);10;100];
  %% Limits
  %inf_limit = [-Inf; -Inf; -Inf; 1e-17; 1e-17];
  %sup_limit = [Inf; Inf; Inf; Inf; Inf];
  %
  %data = [t val2fit];
  %
  %x = fmincon(@fitterDoubleExp,x0,[],[],[],[],...
  %  inf_limit,sup_limit,[],options,data)

  % Initial values
  x0 = [val2fit(1)-val2fit(end);val2fit(end);100];
  % Limits
  inf_limit = [-Inf; -Inf; 1e-17];
  sup_limit = [Inf; Inf; Inf];
  
  desp = 20;
  data = [t(desp:end,1) val2fit(desp:end,1)];
  
  x = fmincon(@fitterExp,x0,[],[],[],[],...
    inf_limit,sup_limit,[],options,data)

  tauF(i) = -(t(2)-t(1))/(log(values(2))-log(values(1)));
  tauS(i) = x(3);
end
