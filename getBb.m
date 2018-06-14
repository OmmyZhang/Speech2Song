function Bb = getBb(w,pl)

ftw = abs(fft(w));

len = floor(length(ftw) / 2 / 6);

ft1 = reshape(ftw(1:len*1),1,len);
ft2 = reshape(ftw(1:len*2),2,len);
ft3 = reshape(ftw(1:len*3),3,len);
ft4 = reshape(ftw(1:len*4),4,len);
ft5 = reshape(ftw(1:len*5),5,len);
ft6 = reshape(ftw(1:len*6),6,len);

sum = ft1 + 0.99 * ( ft2(2,:) + ft3(3,:) + ft4(4,:) + ft5(5,:) + ft6(6,:) );

if nargin > 1
    show = min(pl,length(sum))
    subplot(2,1,1)
    plot(ftw(1:show))
    subplot(2,1,2)
    plot(sum(1:show))
end
[ma Bb] = max(sum) ;
end

