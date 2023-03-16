% ��Ϻ���Ϊ 1/y=b+k*(1/t)
%   ���� x=[k
%           b]


%��������
%tΪ���ݵĺ����� yΪ���ݵ�������

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


% �Ժ����ı������л�Ԫ

T=reshape(1./t,11,1);
Y=1./y;
S=[T,ones(11,1)];

% �ó�������
x=(S.'*S)^(-1)*S.'*Y

% ���к�����ֵ���������
M=[1./(reshape(linspace(0,60,1000),1000,1)),ones(1000,1)];
N=M*x;

% ��������ͼ��
plot(linspace(0,60,1000),1./N,'linewidth',1)
xlabel('ʱ�� t/s','FontSize',20)
ylabel('Ũ�� y/%','FontSize',20)
title('Hyperbolic function fitting','FontSize',30)


