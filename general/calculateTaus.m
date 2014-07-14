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
% Last Modification 2014/07/14
%

function [tauF,tauS]=calculateTaus(values,t)

warning('MatCardiacMLab:calculateTaus:TauF','TauF calculations not implemented yet')

options = optimset('LargeScale','off','Display','off','MaxFunEvals',5000,...
                   'TolX',1e-12,'TolFun',1e-12,'TolCon',1e-12,'DiffMaxChange',0.5,...
                   'DiffMinChange',1e-12);

nCLs = length(t);
tauS = zeros(1,length(values(1,:)));
tauF = zeros(1,length(values(1,:)));

for i=1:length(values(1,:))
  %Find the initial point after a minimum in the first 100 APDs
  j=2:min(100,nCLs);
  begin=find(diff(values(j-1,i))>0 & diff(values,i(j))<=0);
  if(isempty(begin))
    begin=0;
  end
  val2fit = values(begin+1:end,i);

  % Initial values
  x0 = [val2fit(1)-val2fit(end);105;val2fit(end)];
  % Limits
  inf_limit = [-Inf; 1e-17; -Inf];
  sup_limit = [Inf; Inf; Inf];
  data = [t' val2fit];

  x = fmincon(@fitterExp,x0,[],[],[],[],...
    inf_limit,sup_limit,[],options,data);

  tauS(i) = x(2);
end
