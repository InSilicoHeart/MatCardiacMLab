function SV0=RunSimulationAPDRateAdaptation(configuration,model,options)

if(length(configuration.sv_save)<1)
    sv_save = [];
else
    sv_save = zeros(length(configuration.sv_save),1);
    for j=1:length(configuration.sv_save)
        sv_save(j)=find(strcmp(model.SVNames,configuration.sv_save{j}),1);
    end
end

if(length(configuration.var2biomarker)<1)
    var2biomarker = [];
else
    var2biomarker = zeros(length(configuration.var2biomarker),1);
    for j=1:length(configuration.var2biomarker)
         var2biomarker(j)=find(strcmp(model.SVNames,configuration.var2biomarker{j}),1);
    end
end

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
results = cell(size(configuration));
result_names = cell(size(configuration));
result_units = cell(size(configuration));
time = cell(size(configuration));

tini = 0;
tfin = nCLs1*CL1+nCLs2*CL2;

if(nCLs_save<=nCLs2)
    time{1}=(nCLs2-nCLs_save)*CL2+nCLs1*CL1:dt:tfin;
else
    time{1}=(nCLs1+nCLs2-nCLs_save)*CL1:dt:tfin;
end

results{1}=zeros(length(time{1}),length(sv_save));


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
        results{1}(pos:pos+length(t)-1,:)=Y(:,sv_save);
    end

    % Calculation of the biomarkers

    apd90_val=Y(:,apd90_sv);
    
    apd90(i,:) = CalculateAPD90(apd90_val,t');

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
        results{1}(pos:pos+length(t)-1,:)=Y(:,sv_save);
    end
    
    % Calculation of the biomarkers
    
    apd90_val=Y(:,apd90_sv);
    
    apd90(i+nCLs1,:) = CalculateAPD90(apd90_val,t');
                                
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

result_names{1} = model.SVNames(sv_save);
result_units{1} = model.SVUnits(sv_save);

APD90{1}.results = apd90;
APD90{1}.results_names = model.SVNames(apd90_sv);

tauSlow{1}.results = tau_slow;
tauSlow{1}.results_names = model.SVNames(apd90_sv);

save(configuration.Output,'time','results','result_names','result_units','APD90','tauSlow')
