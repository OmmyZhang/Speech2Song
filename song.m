lyric = ['������������������Ʋ��������İ����������� '...
    '��ŷ�Ƶس������ŵ�������ð��������еĳ��� '...
    '�������������������Ʋ���ô��û������������ '...
    '����Զ���������ŵ����������Ƭ�����������̬'];
tune = {la0f la0e so0e la0f do1f re1e mi1s re1s do1e re1e mi1d ...����������������Ʋ�
la0e la1e la1e so1e re1e mi1s re1s do1e re1e mi1d ... �������İ���������
blkf ...
do1e la0e la0e do1e re1f so0e so0e mi1e so1e mi1e re1e do1d ...���Ƶس������ŵ������ 
la0e do1e re1e mi1e re1e do1e so0e mi0e la0d ...�ð��������еĳ���
blkf ...
la0f la0e so0e la0f do1f re1e mi1s re1s do1e re1e mi1d ...�����������������Ʋ�
la0e la1e la1e so1e re1e mi1s re1s do1e re1e mi1d ...��ô��û����������
blkf ...
do1e la0e la0e do1e re1f so0e so0e mi1e so1e mi1e re1e do138 ...��Զ���������ŵ������
do1e la0e do1e re1e mi1e so1e mi1e mi1e so1e...����Ƭ�����������
la14 ... ̬
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
