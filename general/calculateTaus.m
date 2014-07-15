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

options = optimset('LargeScale','off','Display','off','MaxFunEvals',5000,...
                   'TolX',1e-12,'TolFun',1e-12,'TolCon',1e-12,'DiffMaxChange',0.5,...
                   'DiffMinChange',1e-12,'Algorithm','active-set');

nCLs = length(t);
tauS = zeros(1,length(values(1,:)));
tauF = zeros(1,length(values(1,:)));

for i=1:length(values(1,:))
  val2fit = values(:,i);

  % Initial values
  x0 = [(val2fit(1)-val2fit(end))/2;(val2fit(1)-val2fit(end))/2;val2fit(end);10;100];
  % Limits
  inf_limit = [-Inf; -Inf; -Inf; 1e-17; 1e-17];
  sup_limit = [Inf; Inf; Inf; Inf; Inf];

  data = [t' val2fit];

  x = fmincon(@fitterDoubleExp,x0,[],[],[],[],...
    inf_limit,sup_limit,[],options,data);

  tauF(i) = min(x(4:5));
  tauS(i) = max(x(4:5));
end
