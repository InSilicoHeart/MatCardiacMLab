%% runSimulationCell - Runs simulations for the generic stimulation 
%            using more than one stimulation vector (cell of 
%            stimulations)
%                                
%
%     SV=runSimulationNoCell(configuration,model,options)         
%                                                                 
%    Input:                                                                 
%      configuration: Structure with a configuration created with the 
%                     methods createConfiguration(). This configuration
%                     stores more than one simulation in a cell
%      model:         Structure with the model information
%      options:       Integration options
%                                                                           
%    Output:                                                                
%      SV:            State variables at the end of the simulation     
%
%-----------------------------------------------------------------------
% 
% MatCardiacMLab
%
% Matlab toolbox to Simulate Electrophysiologycal Cardiac Models 
% described in CellML files
%
% https://github.com/ChusCarro/MatCardiacMLab/
%
%
% Jesus Carro Fernandez 
% jcarro@usj.es  
%                      
% School of Engineering
% San Jorge University 
% www.usj.es  
%

function SV0=runSimulationCell(configuration,model,options)


% Find sv index in the model
sv_save = cell(size(configuration.sv_save));
cv_save = cell(size(configuration.cv_save));
for i=1:length(sv_save)
  sv_save{i} = getIndexToSave(configuration.sv_save{i},model,'SVNames');
  cv_save{i} = getIndexToSave(configuration.cv_save{i},model,'CVNames');
end

simulations = struct('Constants',{configuration.Constants},...
                     'Values',{configuration.Values},...
                     'DT',configuration.DT,...
                     'Stimulation',{configuration.Stimulation},...
                     'TimeEnd',configuration.TimeEnd,...
                     'sv_save',{sv_save},...
                     'cv_save',{cv_save});

%Model Information
SV0 = model.SV0;
mf = model.mf;

%Cells to save results
SV = cell(size(simulations));
CV = cell(size(simulations));
time = cell(size(simulations));

dt=simulations.DT;

numstim = 1;

for i=1:length(simulations.Stimulation)
    disp(['--- Part ' num2str(i) ' ---'])
    previousSteps = 0;
    nextStim = 1;
    
    % Look for the init and the end of the simulation
    tini = simulations.Stimulation{i}(1);  
    if(length(simulations.Stimulation{i})>1)
        tfin = simulations.Stimulation{i}(2);
    else if(length(simulations.Stimulation)>i)
            tfin = simulations.Stimulation{i+1}(1);
        else
            tfin = simulations.TimeEnd;
        end
    end

	% Get the time vector of the stimulation group
    if(length(simulations.Stimulation)>i)
        time{i}=tini:dt:simulations.Stimulation{i+1};
    else
        time{i}=tini:dt:simulations.TimeEnd;
    end
        
    % Get first tfin (end of the first stimulation)
    if(i<length(simulations.Stimulation))
        if(tfin>simulations.Stimulation{i+1}(1))
            tfin = simulations.Stimulation{i+1}(1);
        end
    else
        if(tfin>simulations.TimeEnd)
            tfin = simulations.TimeEnd;
        end
    end
    
    % In simulations with different parts, the variables that has to be 
    % saved are deffined in different elements of a cell array
    sv_save = simulations.sv_save{i};
    cv_save = simulations.cv_save{i};
    
    SV{i}.result=zeros(length(time{i}),length(sv_save));
    CV{i}.result=zeros(length(time{i}),length(cv_save));

    while (tini<time{i}(end))       
        t=(tini:dt:tfin)-tini;
        steps = length(t);
        disp(['Stimulation ' num2str(numstim) ': ' num2str(tini) 'ms to ' num2str(tfin) 'ms'])

        [T,Y]=ode15s(mf,t,SV0,options,simulations.Constants{i},simulations.Values{i});

        numstim = numstim + 1;
        SV0=Y(end,:);
        
        % Save State Variable
        pos = find(tini==time{i});
		if(~isempty(pos))
			SV{i}.result(pos:pos+steps-1,:)=Y(:,sv_save);
		end
		
		% Evaluate Computed Variables
		ComVar = zeros(length(T),model.CVnum);
		if(length(cv_save)>0)
			if(~isempty(pos))
				for j=1:steps
					[dY,ComVar(j,:)] = mf(T(j),Y(j,:),simulations.Constants{i},simulations.Values{i});
				end
				CV{i}.result(pos:pos+steps-1,:)=ComVar(:,cv_save);
			end
		end
	
		%Update variables to the next iteration
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
                tfin= simulations.TimeEnd;
            end
        else
            tfin = simulations.Stimulation{i}(nextStim+1);
        end
        
    end
    
	% Save results
	SV{i}.resultNames = model.SVNames(sv_save);
	SV{i}.resultUnits = model.SVUnits(sv_save);

	CV{i}.resultNames = model.CVNames(cv_save);
	CV{i}.resultUnits = model.CVUnits(cv_save);

end


save(configuration.Output,'time','SV','CV')
