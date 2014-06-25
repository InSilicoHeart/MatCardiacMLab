function YNames = ShowStateVariables(model_input,model)

if(ischar(model_input))
    models = load(model_input);
else
    models = model_input;
end

if(~isfield(models,model))
    disp('Model not implemented')
else
    YNames = models.(model).YNames;
    for i=1:length(YNames)
        disp([num2str(i) '. ' YNames{i}])
    end
end