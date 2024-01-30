clc
clear
sigma = sqrt(2);
x = -4:0.1:4;
y = x;
[X,Y] = meshgrid(x,y);
Z = (-1/(pi*sigma^4))*(1-(X^2+Y^2)/(2*sigma^2)).*exp(-(X.^2+Y.^2)/(2*sigma^2))

h = fspecial('log',[9,9],sigma);
h =round(h / abs(min(h(:)))* 40);
x = -4 : 1 :4;
y = x;
[X1,Y1]=meshgrid(x,y);

subplot(121),mesh(X,Y,Z);
set(gca,'fontsize',10);
xlim([-4 4]); ylim([-4 4]);
xlabel('X'); ylabel('Y');

subplot(122),mesh(X1,Y1,h);
set(gca,'fontsize',10);
xlim([-4 4]); ylim([-4 4]);
xlabel('X'); ylabel('Y');
