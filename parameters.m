clc
close all
clear

K = .01;
J = .01;
B = .1;
R = 1;
L = .5;

KU = 120;
TU = 1.45;

KP = 0.6*KU
KI = 2*KP/TU
KD = TU*KP/8

r = 1;
out = load('out.mat');
[os, sse, st, rt] = contr_eval(out.out.y.data, out.out.y.time, r)

plot(out.out.y.time,out.out.y.data)
yline(0.98, '--r', '-2%','LabelVerticalAlignment','bottom')
yline(1.02, '--r', '+2%')
xline(rt, ':k', 'rt')
xline(st, ':k', 'st')
yline(r, '-k', 'r', 'LabelHorizontalAlignment', 'left')