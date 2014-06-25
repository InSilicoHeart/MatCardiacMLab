function savegraphics(f,name)


child=get(f,'children');

islegend = false;
l = 0;

for i=1:length(child)
    res=strcmp(get(child(i),'tag'),'legend');
    if(res)
        islegend = true;
        l = child(i);
        break;
    end
end

if(islegend)
    set(l,'Location','SouthEastOutside');
    set(l,'box','off');
    figure_margin = 0.1;
    figure_print = ([0 0 5.5 2.4]+figure_margin)*round(sqrt(sqrt(length(child)-1)));
    paper_size = figure_print(3:4)+figure_margin;
else
    figure_margin = 0.1;
    figure_print = ([0 0 7 3.8]+figure_margin)*round(sqrt(sqrt(length(child))));
    paper_size = figure_print(3:4)+figure_margin;
end

set(f,'PaperPosition',figure_print)
set(f,'PaperSize',paper_size)

saveas(f,[name '.fig'])
saveas(f,[name '.pdf'])
