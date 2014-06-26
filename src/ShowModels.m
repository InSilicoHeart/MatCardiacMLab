function [models,tags] = ShowModels(model_input)

if(ischar(model_input))
    models = load(model_input);
else
    models = model_input;
end

tags = fieldnames(models);

for i = 1:length(tags)
    disp([num2str(i) '. ' models.(tags{i}).Name ' (' tags{i} ')'])
end