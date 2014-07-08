%% CalculateAPD - Calculates one Action Potential Duration for different 
%                 percentages of repolarization
%                                
%
%     [apd,time]=calculateAPD(values,t,perc)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      values: Vector with membrane potential values                        
%      t:      Time vector for the action potential                         
%      perc:   Percentage of repolarization (between 0 and 1)               
%                                                                           
%    Output:                                                                
%      apd:    Action Potential Duration of the APs in the value vector     
%      time:   Instant of AP ending                                         
%
%  ---------------------------------------------------------------------------
% 
% Electrophysiology Model Simulator (v00.00)
%
% Jesus Carro Fernandez 
% jcarro@usj.es  
%                      
% School of Engineering
% San Jorge University 
% www.usj.es  
%       
% Last Modification 2014/07/08
%

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
