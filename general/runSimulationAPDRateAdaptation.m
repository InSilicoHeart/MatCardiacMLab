%% runSimulationAPDRateAdaptation - Runs simulations for the predefined
%            protocol APDRateAdaptation
%                                
%
%     [SV, result] = runSimulationAPDRateAdaptation(configuration,model,options)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      configuration: Structure with a configuration created with the 
%                     method createConfigurationAPDRateAdaptation.
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

function [SV0,result] = runSimulationAPDRateAdaptation(...
                              configuration, model, options)

sv_save = getIndexToSave(configuration.sv_save,model,'SVNames');
cv_save = getIndexToSave(configuration.cv_save,model,'CVNames');
var2biomarker = getIndexToSave(configuration.var2biomarker,model,'SVNames');
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
CV{1}.result=zeros(length(time{1}),length(cv_save));


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
                                
    
% Running the second part

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

% Calculate APD Rate Adaptation Biomarkers
[tauF,tauS]=calculateTaus(apd90(nCLs1+1:nCLs1+nCLs2,:),...
              [0:nCLs2-1]'*CL2/1000); %CL2 is in ms but time has to be in s.


% Save results
SV{1}.resultNames = model.SVNames(sv_save);
SV{1}.resultUnits = model.SVUnits(sv_save);

CV{1}.resultNames = model.CVNames(cv_save);
CV{1}.resultUnits = model.CVUnits(cv_save);

APD90{1}.result = apd90;
APD90{1}.resultNames = model.SVNames(apd90_sv);
for i=1:length(apd90_sv)
  APD90{1}.resultUnits{i} = 'ms';
end

tauSlow{1}.result = tauS;
tauFast{1}.result = tauF;
for i=1:length(apd90_sv)
  tauSlow{1}.resultNames{i} = model.SVNames(apd90_sv);
  tauSlow{1}.resultUnits{i}= 's';
  tauFast{1}.resultNames{i} = model.SVNames(apd90_sv);
  tauFast{1}.resultUnits{i}= 's';
end

result.time = time;
result.SV = SV;
result.CV = CV;
result.APD90 = APD90;
result.tauSlow = tauSlow;
result.tauFast = tauFast;

if(isfield('ResultFile'))
  save(configuration.ResultFile,'-struct','result')
end
