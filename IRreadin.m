%data range xlrange='B10:XQ489'
fclose all; clear all; clc

xlrange='B10:XQ489';
flist = dir(fullfile('.\data','*.xlsx'));%data文件夹内xlsx数据文件名由照片位置上到下1~n命名
flist = {flist.name}';
for n = 1:size(flist)
    temp = xlsread(['.\data\' flist{n}],xlrange);
    data{n,1} = flipud(temp');
end
data = cell2mat(data);
data = flipud(data);

dy = 1200/(size(data,1)-1);%坐标重置：1200mm除以总;格点以划分网格
dx = dy;
xs = [0:dx:dx*(size(data,2)-1)];
ys = [0:dy:1200];
[x,y] = meshgrid(xs,ys);


h = pcolor(x,y,data);
shading interp
set (gca,'DataAspectRatio',[1 1 1])
set (gcf,'Position',[0,0,400,800],'color','w')
hc = colorbar('EastOutside');
set (get(hc,'Title'),'string','\bf\circC')

xticknum = [0:100:dx*(size(data,2)-1)];
set (gca,'XTick',xticknum)
yticknum = [0:300:1200];
set (gca,'YTick',yticknum)

xlabel('\bf\it{x} \rm{(mm)}','Fontsize',12,'Fontname','Times New Roman')
ylabel('\bf\it{y} \rm{(mm)}','Fontsize',12,'Fontname','Times New Roman')

name='test';%%%图片文件名，自己改
saveas(h,name,'emf')
saveas(h,name,'tiffn')%两个格式你看哪个清晰吧

