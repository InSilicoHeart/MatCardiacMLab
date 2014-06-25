function [dia,time]=calculateDiastolic(values,t)

[dia,ind]=min(values);
time=t(ind);