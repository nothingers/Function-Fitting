% 拟合函数为 y=a0+a1*t+a2*t^2+a3*t^3
%  设 x=[a0
%       a1
%       a2
%       a3]


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
%矩阵运算 A*x=y
%主要运算 Vandermonde 矩阵 
A=fliplr(vander(t));
B=A(:,1:4);
x=(B.'*B)^(-1)*B.'*y
% 插值运算，拟合曲线
R=fliplr(vander(linspace(0,60,1000)));
M=R(:,1:4)*x;
plot(linspace(0,60,1000),M,'linewidth',2)
hold on

% 拟合函数为 1/y=b+k*(1/t)
%   其中 x=[k
%           b]

% 对函数的变量进行换元

T=reshape(1./t,11,1);
Y=1./y;
S=[T,ones(11,1)];

% 得出计算结果
x=(S.'*S)^(-1)*S.'*Y

% 进行函数插值，拟合曲线
M=[1./(reshape(linspace(0,60,1000),1000,1)),ones(1000,1)];
N=M*x;

% 画出函数图像
plot(linspace(0,60,1000),1./N,'linewidth',2)

hold on

% 拟合函数为 y=b+k*ln(x)
%   其中 x=[k
%           b]


% 对函数的变量进行换元

T=reshape(log(t),11,1);
S=[T,ones(11,1)];

% 得出计算结果
x=(S.'*S)^(-1)*S.'*y

% 进行函数插值，拟合曲线
M=[log(reshape(linspace(0,60,1000),1000,1)),ones(1000,1)];
N=M*x;

% 画出函数图像
plot(linspace(0,60,1000),N,'linewidth',2)
legend('三次多项式拟合','双曲函数拟合','对数函数拟合')
xlabel('时间 t/s','FontSize',20)
ylabel('浓度 y/%','FontSize',20)
title('三种拟合函数的比较','FontSize',30)
