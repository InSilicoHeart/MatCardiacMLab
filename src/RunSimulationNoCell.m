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

function SV0=RunSimulationNoCell(configuration,model,options)

[sv_save,cv_save,var2biomarker] = getIndexToSave(configuration,model);

% Model information
SV0 = model.SV0;
mf = model.mf;

% Cells to save results
SV = cell(1);
CV = cell(1);
time = cell(1);

dt=configuration.DT;

numstim = 1;

previousSteps = 0;
tini = configuration.Stimulation(1);    
if(length(configuration.Stimulation)>1)
    tfin = configuration.Stimulation(2);
else
    tfin = configuration.TimeEnd;
end
nextStim = 1;


if(tfin>configuration.TimeEnd)
    tfin = configuration.TimeEnd;
end

time{1}=tini:dt:configuration.TimeEnd;

SV{1}.result=zeros(length(time{1}),length(sv_save));
CV{1}.result=zeros(length(time{1}),length(cv_save));


while (tini<configuration.TimeEnd)       
    t=(tini:dt:tfin)-tini;
    steps = length(t);
    disp(['Stimulation ' num2str(numstim) ': ' num2str(tini) 'ms to ' num2str(tfin) 'ms'])
    [T,Y]=ode15s(mf,t,SV0,options,configuration.Constants,configuration.Values);

    numstim = numstim + 1;

    SV0=Y(end,:);

    pos = find(tini==time{1});
    if(~isempty(pos))
        SV{1}.result(pos:pos+steps-1,:)=Y(:,sv_save);
    end


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

    if(tfin>configuration.TimeEnd)
        tfin=configuration.TimeEnd;
    end
end

SV{1}.resultNames = model.SVNames(sv_save);
SV{1}.resultUnits = model.SVUnits(sv_save);

CV{1}.resultNames = model.CVNames(cv_save);
CV{1}.resultUnits = model.CVUnits(cv_save);


save(configuration.Output,'time','SV','CV')
