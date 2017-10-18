x=0:0.01*pi:pi;
y1=(sin(x))./x;
y2=cos(x);
y3=((4-cos(x)).*sin(x))./(3.*x);
y4=(4*cos(x)-(cos(x)).^2+(sin(x)).^2)./3;
y5=3.*sin(x)./(x.*(cos(x)+2));
y6=(3.*(2.*cos(x)+1))./(2+cos(x)).^2;
plot(x,y1,'r-','LineWidth',2);hold on;
plot(x,y2,'b-','LineWidth',2);hold on;
plot(x,y3,'g-','LineWidth',2);hold on;
plot(x,y4,'c-','LineWidth',2);hold on;
plot(x,y5,'k-','LineWidth',2);hold on;
plot(x,y6,'y-','LineWidth',2);hold on;

axis([0 pi -1.0 1.0]);
set(gca,'XTick',0:pi/4:pi);
set(gca,'XtickLabel',{'0','\pi/4','\pi/2','3\pi/4','\pi'});
set(gca,'YTick',[-1.0 -0.8 -0.4 0.0 0.4 0.8 1.0]);
set(gca,'YtickLabel',{'-1.0','-0.8','-0.4','0.0','0.4','0.8','1.0'},'fontsize',8)
xlabel('k\Delta')
ylabel('c''/c','Rotation',0)
legend({'phase velocity from 2-order CTD','group velocity from 2-order CTD','phase velocity from 4-order CTD','group velocity from 4-order CTD','phase velocity from 4-order CTFD','group velocity from 4-order CTFD'},'Location','best')

