x=0:0.01*pi:pi;
y1=1+0*x;
y3=(sin(x))./x;
y2=(sqrt(2-2*cos(x)))./x;
y4=((3*sin(x))./(cos(x)+2))./x;
plot(x,y1,'k-','LineWidth',2);hold on;
plot(x,y2,'r-','LineWidth',2);hold on;
plot(x,y3,'b-','LineWidth',2);hold on;
plot(x,y4,'g-','LineWidth',2);hold on;
axis([0 pi 0 1]);
set(gca,'XTick',0:pi/4:pi);
set(gca,'xtickLabel',{'0','\pi/4','\pi/2','3\pi/4','\pi'})
set(gca,'ytickLabel',{'0','0.25','0.50','0.75','0.90','1.00'},'fontsize',8)
set(gca,'YTick',[0 0.25 0.50 0.75 0.90 1.00]);
xlabel('k\Delta')
ylabel('A_k^{''}/k','Rotation',0,'fontsize',8)
legend({'spetral accuracy','A_k''FWD','A_k''CTD','A_k''CTFD'},'Location','SouthWest')
