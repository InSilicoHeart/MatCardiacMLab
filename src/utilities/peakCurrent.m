function [peak,ind] = peakCurrent(current,step)

%diff_curr = diff(current);
%i=1:length(diff_curr)-1;
%inds = find((diff_curr(i)>=0 & diff_curr(i+1)<=0)|(diff_curr(i)<=0 & diff_curr(i+1)>=0));

%length(current)

%if(length(inds)<1)
%  inds=1;
%end

%peak = current(inds(1))
%ind = inds(1)

if(nargin==1)
 step=-1;
end

[minimum,ind]=min(step*current);
peak=current(ind);

