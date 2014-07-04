function [sv_save,cv_save,var2biomarker] = getIndexToSave(configuration,model)

if(length(configuration.sv_save)<1)
    sv_save = [];
else
    sv_save = zeros(length(configuration.sv_save),1);
    for j=1:length(configuration.sv_save)
        sv_save(j)=find(strcmp(model.SVNames,configuration.sv_save{j}),1);
    end
end

if(length(configuration.sv_save)<1)
    cv_save = [];
else
    cv_save = zeros(length(configuration.cv_save),1);
    for j=1:length(configuration.cv_save)
        cv_save(j)=find(strcmp(model.CVNames,configuration.cv_save{j}),1);
    end
end


if(isfield(configuration,'var2biomarker'))
  if(length(configuration.var2biomarker)<1)
      var2biomarker = [];
  else
      var2biomarker = zeros(length(configuration.var2biomarker),1);
      for j=1:length(configuration.var2biomarker)
           var2biomarker(j)=find(strcmp(model.SVNames,configuration.var2biomarker{j}),1);
      end
  end
else
  var2biomarker = [];
end
