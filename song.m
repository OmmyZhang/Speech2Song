lyric = ['你是我天边最美诶的云彩让我用心把你咦留下来 '...
    '悠欧悠地唱着最炫的民族风让爱卷走所有的尘埃 '...
    '你是我心中最美诶的云彩怎么就没让你咦留下来 '...
    '永翁远都唱着最炫的民族风是整片天空最美的姿态'];
tune = {la0f la0e so0e la0f do1f re1e mi1s re1s do1e re1e mi1d ...你是我天边最美的云彩
la0e la1e la1e so1e re1e mi1s re1s do1e re1e mi1d ... 让我用心把你留下来
blkf ...
do1e la0e la0e do1e re1f so0e so0e mi1e so1e mi1e re1e do1d ...悠悠地唱着最炫的民族风 
la0e do1e re1e mi1e re1e do1e so0e mi0e la0d ...让爱卷走所有的尘埃
blkf ...
la0f la0e so0e la0f do1f re1e mi1s re1s do1e re1e mi1d ...你是我心中最美的云彩
la0e la1e la1e so1e re1e mi1s re1s do1e re1e mi1d ...怎么就没让你留下来
blkf ...
do1e la0e la0e do1e re1f so0e so0e mi1e so1e mi1e re1e do138 ...永远都唱着最炫的民族风
do1e la0e do1e re1e mi1e so1e mi1e mi1e so1e...是整片天空最美的姿
la14 ... 态
};

FS = 44100;
result = []

for i = 1:length(lyric)
    word = lyric(i);
    target = cell2mat(tune(i));
    
    len = length(target);
    if(max(target) == 0)
        result = [result target];
        continue
    end
    
    tar_f = getBb(target);
    
    pace = -8;
    while(length(useful_w(tts(word,[],pace,FS)))  > len)
        pace = pace + 1;
    end
    w = useful_w(tts(word,[],pace,FS));
    
    w = w';
    
    %    [pace len, length(w)]
    
    new_w = cf(w, tar_f, FS);
    result = [result 0.02 * target + [new_w zeros(1,length(target) - length(new_w))]];
    %     result = [result target];
end

sound(result,FS)

function rw = useful_w(w)

u = find(abs(w) > 0.01);
rw = w(u(1):u(length(u)));
end

function newv = cf(w, tar,FS)
len = length(w);
f_old = getBb(w);
%   [f_old, exstraightsource(w,FS)]
ft = fft(w);

    new_ft = zeros(1,len);
    if tar > f_old
        d = tar - f_old;
        new_ft(d+1:ceil(len/2)) = ft(1:ceil(len/2)-d);
        new_ft(floor(len/2):len-d) = ft(floor(len/2)+d:len);
    else
        d = f_old - tar;
        new_ft(1:ceil(len/2)-d) = ft(d+1:ceil(len/2));
        new_ft(floor(len/2)+d:len) = ft(floor(len/2):len-d);
    end
    newv = real(ifft(new_ft));

%t = linspace(0,len/FS,len);
%newv = w .* sin(2*pi*(tar-f_old)*t);

% ft = fft(w);
% new_ft = ft;
% l = ceil( min(1, tar/f_old) * length(w) / 2);
% 
% for i = 1:l
%     new_ft(i) =ft(max(1,round(i * f_old/tar )));
% end
% new_ft(length(w):-1:length(w)-l+1) = new_ft(1:l);
% newv = real(ifft(new_ft));

[tar f_old getBb(newv)]

subplot(2,1,1)
ft = abs(fft(w));
plot(ft(1:1000))

subplot(2,1,2)
ft = abs(fft(newv));
plot(ft(1:1000))
end
