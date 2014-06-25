function Reasign(Constants, Values)

for i=1:length(Constants)
    assignin('caller',Constants{i},Values(i))
end
