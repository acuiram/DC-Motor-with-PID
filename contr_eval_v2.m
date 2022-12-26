function [os, sse, st, rt] = contr_eval_v2(data, time, r)

% Overshoot
os = (max(data) - data(end,:))/data(end,:) * 100 ;

% Settling time
ind1 = find(data < 0.98*data(end,:),1, 'last');
st1 = time(ind1);
ind2 = find(data > 1.02*data(end,:),1, 'last');
st2 = time(ind2);
st = max(st1,st2)


%Rise time
ind = find(data >= 0.7*data(end,:), 1);
rt = time(ind)

% Steady State error
sse = (data(end,:)- r)/100

end
