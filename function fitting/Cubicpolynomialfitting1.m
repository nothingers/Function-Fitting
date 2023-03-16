% ��Ϻ���Ϊ y=a0+a1*t+a2*t^2+a3*t^3
%  polyfit ����ֵ�ǴӸߴ���ʹ����


%��������
%tΪ���ݵĺ����� yΪ���ݵ�������
t=5:5:55; 
y=[1.27 2.16 3.86 3.44 3.87 4.15 4.37 4.51 4.58 4.62 4.64];

% polyfit�õ�����ֵ
x=reshape(polyfit(t,y,3),4,1) ;
% ��ֵ���㣬�������
R=vander(linspace(0,60,1000));
N=R(:,997:1000);
M=N*x;
plot(linspace(0,60,1000),M,'linewidth',1)
xlabel('ʱ�� t/s','FontSize',20)
ylabel('Ũ�� y/%','FontSize',20)
title('Cubic polynomial fitting','FontSize',30)
