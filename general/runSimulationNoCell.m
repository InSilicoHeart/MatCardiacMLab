%% runSimulationNoCell - Runs simulations for the generic stimulation 
%            using only one stimulation vector (no cell of stimulations)
%                                
%
%     SV=runSimulationNoCell(configuration,model,options)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      configuration: Structure with a configuration created with the 
%                     methods createConfiguration(). This configuration
%                     only stores one simulation (no cell) 
%      model:         Structure with the model information
%      options:       Integration options
%                                                                           
%    Output:                                                                
%      SV:            State variables at the end of the simulation     
%
%-----------------------------------------------------------------------
% 
% MatCardiacMLab (v00.00)
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
% Last Modification 2014/07/11
%

function SV0=runSimulationNoCell(configuration,model,options)

sv_save = getIndexToSave(configuration.sv_save,model,'SVNames');
cv_save = getIndexToSave(configuration.cv_save,model,'CVNames');

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

%Look for the init and the end of the simulation
tini = configuration.Stimulation(1);    
if(length(configuration.Stimulation)>1)
    tfin = configuration.Stimulation(2);
else
    tfin = configuration.TimeEnd;
end
nextStim = 1;

% Check if tfin is out of the bounds of the simulation
if(tfin>configuration.TimeEnd)
    tfin = configuration.TimeEnd;
end

time{1}=tini:dt:configuration.TimeEnd;

SV{1}.result=zeros(length(time{1}),length(sv_save));
CV{1}.result=zeros(length(time{1}),length(cv_save));


while (tini<configuration.TimeEnd)       
    t=(tini:dt:tfin)-tini; % Each iteration puts time to 0
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


	%Update variables to the next iteration
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

% Save results
SV{1}.resultNames = model.SVNames(sv_save);
SV{1}.resultUnits = model.SVUnits(sv_save);

CV{1}.resultNames = model.CVNames(cv_save);
CV{1}.resultUnits = model.CVUnits(cv_save);


save(configuration.Output,'time','SV','CV')
