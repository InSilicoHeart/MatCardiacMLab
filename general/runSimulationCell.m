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

function SV0=runSimulationCell(configuration,model,options)

if(length(configuration.sv_save)<1)
    sv_save = [];
else
    sv_save = cell(length(configuration.sv_save));
    for i=1:length(sv_save)
        sv_save{i} = zeros(length(configuration.sv_save{i}),1);
        for j=1:length(configuration.sv_save{i})
            sv_save{i}(j)=find(strcmp(model.SVNames,configuration.sv_save{i}{j}),1);
        end
    end
end

simulations = struct('Constants',{configuration.Constants},...
                     'Values',{configuration.Values},...
                     'DT',configuration.DT,...
                     'Stimulation',{configuration.Stimulation},...
                     'TimeEnd',configuration.TimeEnd,...
                     'sv_save',{sv_save});


SV0 = model.SV0;
mf = model.mf;
results = cell(size(simulations));
result_names = cell(size(simulations));
result_units = cell(size(simulations));
time = cell(size(simulations));

dt=simulations.DT;

numstim = 1;

for i=1:length(simulations.Stimulation)
    disp(['--- Part ' num2str(i) ' ---'])
    previousSteps = 0;
    nextStim = 1;
    
    tini = simulations.Stimulation{i}(1);  
    if(length(simulations.Stimulation{i})>1)
        tfin = simulations.Stimulation{i}(2);
    else if(length(simulations.Stimulation)>i)
            tfin = simulations.Stimulation{i+1}(1);
        else
            tfin = simulations.Time;
        end
    end


    if(length(simulations.Stimulation)>i)
        time{i}=tini:dt:simulations.Stimulation{i+1};
    else
        time{i}=tini:dt:simulations.Time;
    end
        
    if(i<length(simulations.Stimulation))
        if(tfin>simulations.Stimulation{i+1}(1))
            tfin = simulations.Stimulation{i+1}(1);
        end
    else
        if(tfin>simulations.Time)
            tfin = simulations.Time;
        end
    end
    
    % In simulations with different parts, the variables that can be saved can be different
    if(iscell(simulations.sv_save))
        sv_save = simulations.sv_save{i};
    else
        sv_save = simulations.sv_save;
    end

    results{i}=zeros(length(time{i}),length(sv_save));

    while (tini<time{i}(end))       
        t=(tini:dt:tfin)-tini;
        steps = length(t);
        disp(['Stimulation ' num2str(numstim) ': ' num2str(tini) 'ms to ' num2str(tfin) 'ms'])

        [T,Y]=ode15s(mf,t,SV0,options,simulations.Constants{i},simulations.Values{i});

        numstim = numstim + 1;
        SV0=Y(end,:);
        results{i}(previousSteps+1:previousSteps+steps,:)=Y(:,sv_save);

        previousSteps = previousSteps+steps-1;

        nextStim =nextStim +1;
        if(nextStim > length(simulations.Stimulation{i}))
            break;
        end

        tini = t(end)+tini;
        if(nextStim>=length(simulations.Stimulation{i}))            
            if(i<length(simulations.Stimulation))
                tfin= simulations.Stimulation{i+1}(1);
            else
                tfin= simulations.Time;
            end
        else
            tfin = simulations.Stimulation{i}(nextStim+1);
        end
        
    end
    

    result_names{i} = model.SVNames(sv_save);
    result_units{i} = model.SVUnits(sv_save);
end


save(configuration.Output,'time','results','result_names','result_units')
