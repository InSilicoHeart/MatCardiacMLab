function [sys,time]=calculateSystolic(values,t)

[sys,ind]=max(values);
time=t(ind);
