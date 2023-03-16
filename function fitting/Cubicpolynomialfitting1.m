% 拟合函数为 y=a0+a1*t+a2*t^2+a3*t^3
%  polyfit 返回值是从高次项到低次项的


%输入数据
%t为数据的横坐标 y为数据的纵坐标
t=5:5:55; 
y=[1.27 2.16 3.86 3.44 3.87 4.15 4.37 4.51 4.58 4.62 4.64];

% polyfit得到返回值
x=reshape(polyfit(t,y,3),4,1) ;
% 插值运算，拟合曲线
R=vander(linspace(0,60,1000));
N=R(:,997:1000);
M=N*x;
plot(linspace(0,60,1000),M,'linewidth',1)
xlabel('时间 t/s','FontSize',20)
ylabel('浓度 y/%','FontSize',20)
title('Cubic polynomial fitting','FontSize',30)
