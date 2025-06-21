clear all
close all
clc

load xoxo_prova.mat
rangeK=6000:10:7000;
rangeB=1:10:1000;
qh=cell_q_maker(out,rangeK,rangeB,1);
qk=cell_q_maker(out,rangeK,rangeB,0);
t=linspace(0,10,1000);

[Kt1,Bt1]=variable_impedanceCROSS(qh,qk,rangeK,rangeB,t,10);
[Kt2,Bt2]=variable_impedanceMAE(qh,qk,rangeK,rangeB,t,10);
[Kt3,Bt3]=variable_impedanceRMS(qh,qk,rangeK,rangeB,t,10);
[Kt4,Bt4]=variable_impedanceTOL(qh,qk,rangeK,rangeB,t,10);

Kt_m=[Kt1,Kt2,Kt3,Kt4];
Bt_m=[Bt1,Bt2,Bt3,Bt4];

Kt=mean(Kt_m,2);
Bt=mean(Bt_m,2);

MAE=signalMAE_analyzer(qh,qk,rangeK,rangeB,[0,10],10);
RMS=signalRMS_analyzer(qk,qh,rangeK,rangeB,[0,10],10);
CROSS=signalCROSS_analyzer(qk,qh,rangeK,rangeB,[0,10],10);
TOL=signalTOL_analyzer(qh,qk,rangeK,rangeB,[-2 2],[0,10],10);

K=round(mean([MAE.K,RMS.K,TOL.K,CROSS.K]));
B=round(mean([MAE.B,RMS.B,CROSS.B,TOL.B]));

save Kt Kt
save Bt Bt
K_B=struct('K',K,'B',B);
save K_B K_B



