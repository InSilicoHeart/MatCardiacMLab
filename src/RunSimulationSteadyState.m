function SV0=RunSimulationSteadyState(configuration,model,options)

[sv_save,cv_save,var2biomarker] = getIndexToSave(configuration,model);

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
    
    apd90(i,:) = CalculateAPD90(apd90_val,t');
    trian(i,:) = CalculateTriangulation(trian_val,t');
    dia(i,:)   = CalculateDiastolic(dia_val,t');
    sys(i,:)   = CalculateSystolic(sys_val,t');

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
                                   
save(configuration.Output,'time','SV','CV','APD90','Triangulation','Diastolic','Systolic')
