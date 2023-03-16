% 拟合函数为 y=b+k*ln(x)
%   其中 x=[k
%           b]


%输入数据
%t为数据的横坐标 y为数据的纵坐标

t=5:5:55;
y=[1.27
    2.16
    3.86
    3.44
    3.87
    4.15
    4.37
    4.51
    4.58
    4.62
    4.64];


% 对函数的变量进行换元

T=reshape(log(t),11,1);
S=[T,ones(11,1)];

% 得出计算结果
x=(S.'*S)^(-1)*S.'*y

% 进行函数插值，拟合曲线
M=[log(reshape(linspace(0,60,1000),1000,1)),ones(1000,1)];
N=M*x;

% 画出函数图像
plot(linspace(0,60,1000),N,'linewidth',1)
xlabel('时间 t/s','FontSize',20)
ylabel('浓度 y/%','FontSize',20)
title('Logarithmic function fitting','FontSize',30)