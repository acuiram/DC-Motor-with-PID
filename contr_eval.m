function [os, sse, st, rt] = contr_eval(data, time, r)

os = (max(data)-r)/r*100;
sse = (data(length(data))-r)/r*100;
st = time(find(or(data > r+0.02, data < r-0.02), 1, 'last'));
rt = time(find(data >= 0.7, 1, 'first'));

end