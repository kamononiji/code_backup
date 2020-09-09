clear all

num = 600;

dir = 'G:\20200819-183714\';

v = VideoWriter([dir, '\sample.avi'],'Uncompressed AVI');
open(v);

%‰æ‘œ“Ç‚İ‚İ
for loop=1:num
    str = [dir, num2str(loop,'%03u'),'.bmp'];
    img = imread(str);
    writeVideo(v,img)
    disp(loop);
end

close(v);