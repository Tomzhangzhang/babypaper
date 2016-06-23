load('hello6_0412_snr15.mat');
x=x;
load('s_hello6_0412_snr15.mat');
s=s;
load('hello6_denoise_soft_0324_snr25_test2.mat');
soft=new_sig;
load('hello6_denoise_hard_0324_snr25_test5.mat');
hard=new_sig;
load('hello6_new_0412_snr15_test3.mat');
new=new_sig;
figure(1);
subplot(3,2,1);
plot(x);
title('初始信号');
subplot(3,2,2);
plot(s);
title('加噪信号');
subplot(3,2,3);
plot(soft);
title('软阈值去噪信号');
subplot(3,2,4);
plot(hard);
title('硬阈值去噪信号');
subplot(3,2,5);
plot(new);
title('新阈值去噪信号');
[y_soft_u,y_soft_d]=a_snr(x,soft')%软
[y_hard_u,y_hard_d]=a_snr(x,hard')%硬
[y_new_u,y_new_d]=a_snr(x,new')%新