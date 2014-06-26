function SV0=RunSimulationNoCell(configuration,model,options)

if(length(configuration.sv_save)<1)
    sv_save = [];
else
    sv_save = zeros(length(configuration.sv_save),1);
    for j=1:length(configuration.sv_save)
        sv_save(j)=find(strcmp(model.SVNames,configuration.sv_save{j}),1);
    end
end


SV0 = model.SV0;
mf = model.mf;
results = cell(size(configuration));
result_names = cell(size(configuration));
result_units = cell(size(configuration));
time = cell(size(configuration));

dt=configuration.DT;

numstim = 1;

previousSteps = 0;
tini = configuration.Stimulation(1);    
if(length(configuration.Stimulation)>1)
    tfin = configuration.Stimulation(2);
else
    tfin = configuration.Time;
end
nextStim = 1;


if(tfin>configuration.Time)
    tfin = configuration.Time;
end

time{1}=tini:dt:configuration.Time;

results{1}=zeros(length(time{1}),length(sv_save));

while (tini<configuration.Time)       
    t=(tini:dt:tfin)-tini;
    steps = length(t);
    disp(['Stimulation ' num2str(numstim) ': ' num2str(tini) 'ms to ' num2str(tfin) 'ms'])
    [T,Y]=ode15s(mf,t,SV0,options,configuration.Constants,configuration.Values);

    numstim = numstim + 1;

    SV0=Y(end,:);
    results{1}(previousSteps+1:previousSteps+steps,:)=Y(:,sv_save);

    previousSteps = previousSteps+steps-1;

    nextStim =nextStim +1;
    if(nextStim > length(configuration.Stimulation))
        break;
    end

    tini = t(end)+tini;
    if(nextStim>=length(configuration.Stimulation))
        tfin= time{1}(end);
    else
        tfin = configuration.Stimulation(nextStim+1);
    end

    if(tfin>configuration.Time)
        tfin=configuration.Time;
    end
end

result_names{1} = model.SVNames(sv_save);
result_units{1} = model.SVUnits(sv_save);


save(configuration.Output,'time','results','result_names','result_units')
