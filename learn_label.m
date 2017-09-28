x=0:0.01*pi:pi;
y1=sin(x);
a=0:pi/8:pi;
y2=sqrt(2-2*cos(x));
y3=x/2;
y4=0*x;
y5=(3*sin(x))./(cos(x)+2);
y6=x;
y7=0*a;
plot(x,y1,'b-','LineWidth',2);hold on;
plot(x,y2,'r-','LineWidth',2);hold on;
plot(x,y3,'r--','LineWidth',2);hold on;
plot(x,y4,'b--','LineWidth',2);hold on;
plot(x,y5,'g-','LineWidth',2);hold on;
plot(x,y6,'k-','LineWidth',2);hold on;
plot(a,y7,'gx','LineWidth',2);hold on;
axis([0 pi 0 pi]);
set(gca,'XTick',0:pi/4:pi);
set(gca,'xtickLabel',{'0','\pi/4','\pi/2','3\pi/4','\pi'})
set(gca,'ytickLabel',{'0','\pi/4','\pi/2','3\pi/4','\pi'})
set(gca,'YTick',0:pi/4:pi);
xlabel('k\Delta')
ylabel({'A_k^{''}\Delta','\omega'},'Rotation',0)
legend({'A_k''CTD','A_k''FWD','\omega_k''FWD','\omega_k''CTD','A_k''CTFD','spetral accuracy','\omega_k''CTFD'},'Location','NorthWest')