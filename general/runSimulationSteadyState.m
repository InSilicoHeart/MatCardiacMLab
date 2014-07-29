%% runSimulationSteadyState - Runs simulations for the predefined
%            protocol SteadyState
%                                
%
%     [SV, result] = runSimulationSteadyState(configuration,model,options)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      configuration: Structure with a configuration created with the 
%                     method createConfigurationSteadyState.
%      model:         Structure with the model information
%      options:       Integration options
%                                                                           
%    Output:                                                                
%      SV:            State variables at the end of the simulation     
%      result:        Structure with the result of the simulation 
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

function [SV0, result]=runSimulationSteadyState(configuration,model,options)

sv_save = getIndexToSave(configuration.sv_save,model,'SVNames');
cv_save = getIndexToSave(configuration.cv_save,model,'CVNames');
var2biomarker = getIndexToSave(configuration.var2biomarker,model,'SVNames');

apd90_sv = var2biomarker(find(strcmp(configuration.biomarkers,'APD90')));
trian_sv = var2biomarker(find(strcmp(configuration.biomarkers,'Triangulation')));
dia_sv   = var2biomarker(find(strcmp(configuration.biomarkers,'Diastolic')));
sys_sv   = var2biomarker(find(strcmp(configuration.biomarkers,'Systolic')));

% Time parameters
dt=configuration.DT;
CL = configuration.CL;
nCLs = configuration.nCLs;
nCLs_save = configuration.nCLs_save;

% Vectors to save biomarkers
apd90 = zeros(nCLs,length(apd90_sv));
trian = zeros(nCLs,length(trian_sv));
dia   = zeros(nCLs,length(dia_sv));
sys   = zeros(nCLs,length(sys_sv));

% Model information
SV0 = model.SV0;
mf = model.mf;

% Cells to save results
SV = cell(1);
CV = cell(1);
time = cell(1);

tini = 0;
tfin = nCLs*CL;

time{1}=(nCLs-nCLs_save)*CL:dt:tfin;
SV{1}.result=zeros(length(time{1}),length(sv_save));
CV{1}.result=zeros(length(time{1}),length(cv_save));

tfin = CL;

for i=1:nCLs
    t=(tini:dt:tfin)-tini;
    steps = length(t);
    disp(['Stimulation ' num2str(i) ': ' num2str(tini) 'ms to ' num2str(t(end)+tini) 'ms'])
    [T,Y]=ode15s(mf,t,SV0,options,configuration.Constants,configuration.Values);
    
    SV0=Y(end,:);
    pos = find(tini==time{1});
    if(~isempty(pos))
        SV{1}.result(pos:pos+steps-1,:)=Y(:,sv_save);
    end

    % Calculation of biomarkers

    apd90_val=Y(:,apd90_sv);
    trian_val=Y(:,trian_sv);
    dia_val=Y(:,dia_sv);
    sys_val=Y(:,sys_sv);
    
    apd90(i,:) = calculateAPD90(apd90_val,t');
    trian(i,:) = calculateTriangulation(trian_val,t');
    dia(i,:)   = calculateDiastolic(dia_val,t');
    sys(i,:)   = calculateSystolic(sys_val,t');

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
    tfin = (i+1)*CL;
end

%Save results

SV{1}.resultNames = model.SVNames(sv_save);
SV{1}.resultUnits = model.SVUnits(sv_save);

CV{1}.resultNames = model.CVNames(cv_save);
CV{1}.resultUnits = model.CVUnits(cv_save);

APD90{1}.result = apd90;
APD90{1}.resultNames = model.SVNames(apd90_sv);
Triangulation{1}.result = trian;
Triangulation{1}.resultNames = model.SVNames(trian_sv);
Diastolic{1}.result = dia;
Diastolic{1}.resultNames = model.SVNames(dia_sv);
Systolic{1}.result = sys;
Systolic{1}.resultNames = model.SVNames(sys_sv);
                                   
result.time = time;
result.SV = SV;
result.CV = CV;
result.APD90 = APD90;
result.Triangulation = Triangulation;
result.Diastolic = Diastolic;
result.Systolic = Systolic;

if(isfield(configuration,'ResultFile'))
  save(configuration.ResultFile,'-struct','result')
  disp(['Result saved to ' configuration.ResultFile])
end


