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

function SV0=runSimulationAPDRateAdaptation(configuration,model,options)

[sv_save,cv_save,var2biomarker] = getIndexToSave(configuration,model);

apd90_sv = var2biomarker;

dt=configuration.DT;
CL1 = configuration.CL1;
nCLs1 = configuration.nCLs1;
CL2 = configuration.CL2;
nCLs2 = configuration.nCLs2;
nCLs_save = configuration.nCLs_save;

apd90 = zeros(nCLs1+nCLs2,length(apd90_sv));

SV0 = model.SV0;
mf = model.mf;

% Cells to save results
SV = cell(1);
CV = cell(1);
time = cell(1);

tini = 0;
tfin = nCLs1*CL1+nCLs2*CL2;

if(nCLs_save<=nCLs2)
    time{1}=(nCLs2-nCLs_save)*CL2+nCLs1*CL1:dt:tfin;
else
    time{1}=(nCLs1+nCLs2-nCLs_save)*CL1:dt:tfin;
end

SV{1}.result=zeros(length(time{1}),length(sv_save));


% Runing the first part

tfin = CL1;

for i=1:nCLs1
    t=(tini:dt:tfin)-tini;
    steps = length(t);
    disp(['Stimulation ' num2str(i) ': ' num2str(tini) 'ms to ' num2str(t(end)+tini) 'ms'])
    [T,Y]=ode15s(mf,t,SV0,options,configuration.Constants,configuration.Values);

    SV0=Y(end,:);
    pos = find(tini==time{1});
    if(~isempty(pos))
        SV{1}.result(pos:pos+steps-1,:)=Y(:,sv_save);
    end

    % Calculation of the biomarkers

    apd90_val=Y(:,apd90_sv);
    
    apd90(i,:) = calculateAPD90(apd90_val,t');

    % Evaluate Computed Variables
    ComVar = zeros(length(T),model.CVnum);
    if(length(cv_save)>0)
        pos = find(tini==time{1});
        if(~isempty(pos))
            for j=1:steps
                [dY,ComVar(j,:)] = mf(T(j),Y(j,:),configuration.Constants,configuration.Values);
            end
            CV{1}.result(pos:pos+steps-1,:)=ComVar(:,cv_save);
        end
    end

    tini = t(end)+tini;
    tfin = (i+1)*CL1;
end
                                
    
tfin = nCLs1*CL1 + CL2;

for i=1:nCLs2
    t=(tini:dt:tfin)-tini;
    steps = length(t);
    disp(['Stimulation ' num2str(i) ': ' num2str(tini) 'ms to ' num2str(t(end)+tini) 'ms'])
    [T,Y]=ode15s(mf,t,SV0,options,configuration.Constants,configuration.Values);
    
    SV0=Y(end,:);
    pos = find(tini==time{1});
    if(~isempty(pos))
        SV{1}.result(pos:pos+steps-1,:)=Y(:,sv_save);
    end
    
    % Calculation of the biomarkers
    
    apd90_val=Y(:,apd90_sv);
    
    apd90(i+nCLs1,:) = calculateAPD90(apd90_val,t');
   
    % Evaluate Computed Variables
    ComVar = zeros(length(T),model.CVnum);
    if(length(cv_save)>0)
        pos = find(tini==time{1});
        if(~isempty(pos))
            for j=1:steps
                [dY,ComVar(j,:)] = mf(T(j),Y(j,:),configuration.Constants,configuration.Values);
            end
            CV{1}.result(pos:pos+steps-1,:)=ComVar(:,cv_save);
        end
    end
                             
    tini = t(end)+tini;
    tfin = (i+1)*CL2+nCLs1*CL1;
end


options = optimset('LargeScale','off','Display','off','MaxFunEvals',5000,...
                   'TolX',1e-12,'TolFun',1e-12,'TolCon',1e-12,'DiffMaxChange',0.5,...
                   'DiffMinChange',1e-12);

j=2:min(100,nCLs2);
apd90_tau=apd90(nCLs1+1:end);
begin=find(diff(apd90_tau(j-1))>0 & diff(apd90_tau(j))<=0);
if(isempty(begin))
  begin=0;
end
apd2fit = apd90_tau(begin+1:end);

x0 = [apd2fit(1)-apd2fit(end);105;apd2fit(end)];
inf_limit = [-Inf; 1e-17; -Inf];
sup_limit = [Inf; Inf; Inf];
time = (begin+1)*0.6:0.6:length(apd90_tau)*0.6;
data = [time' apd2fit];

x = fmincon(@fitter_exp,x0,[],[],[],[],...
    inf_limit,sup_limit,[],options,data);

tau_slow = x(2);

SV{1}.resultNames = model.SVNames(sv_save);
SV{1}.resultUnits = model.SVUnits(sv_save);

CV{1}.resultNames = model.CVNames(cv_save);
CV{1}.resultUnits = model.CVUnits(cv_save);

APD90{1}.result = apd90;
APD90{1}.resultNames = model.SVNames(apd90_sv);
for i=1:length(apd90_sv)
  APD90{1}.resultUnits(i) = 'ms';
end

tauSlow{1}.result = tau_slow;
tauSlow{1}.resultNames = model.SVNames(apd90_sv);
for i=1:length(apd90_sv)
  tauSlow{1}.resultUnits(i) = 's';
end

save(configuration.Output,'time','SV','CV','APD90','tauSlow')
