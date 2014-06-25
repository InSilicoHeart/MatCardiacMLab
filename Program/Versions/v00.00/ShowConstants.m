function [Names,Values,Units] = ShowConstants(models_input,model)

if(ischar(models_input))
    models = load(models_input);
else
    models = models_input;
end

if(~isfield(models,model))
    disp('Model not implemented')
else
    Names = models.(model).CNames;
    Units = models.(model).CUnits;
    Values = models.(model).C0;
    for i=1:length(Names)
        fprintf('%3d. %-20s\t=\t%5.4e\t[%s]\n',i,Names{i},Values(i),Units{i})
    end
end