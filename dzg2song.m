[dzg FS] = audioread('dzg.wav',[1,10]);
[dzg FS] = audioread('dzg.wav',[5*FS+1, 20*FS]);
dzg = dzg(:,1);
dzg = dzg';

N = 1:length(dzg);

%dzg = sin( 2*pi*N/FS * 200 );

%subplot(2,2,1)
%plot(dzg)

%subplot(2,2,2)
%plot(abs(fft(dzg)))

% new_dzg = dzg .* cos(2*pi* FS/8 * N / FS);
% new_dzg = dzg .* sin(2*pi* -100 * linspace(0,15,15*FS));
new_dzg = dzg;
myE = {la0f la0e so0e la0f do1f re1e mi1s re1s do1e re1e mi1d...
    la0e la1e la1e so1e re1e mi1s re1s do1e re1e mi1d};

l_all = 0;
for i=1:21
    
    tar = cell2mat(myE(i));
    l = length(tar);
    if mod(l,2) == 1
        l = l-1;
    end
    Nl = linspace(0,l,l);
    
    part = dzg(l_all+1:l_all+l);
    
%    part = 4 * part .* sin(2*pi * Nl /l);
    
    subplot(1,3,1)
    plot(abs(fft(tar)))
    subplot(1,3,2)
    plot(abs(fft(part)))
    
    ft = fft(tar);
    [ma, f_tar] = max(ft(1:l/2));
    
    ft = fft(part);
    [ma, f_dzg] = max(ft(1:l/2));
   
    new_part = part .* sin(2*pi*(f_tar - f_dzg) * Nl / FS);
    
    new_dzg(l_all+1:l_all+l) = new_part;
    l_all = l_all + l;
    
    subplot(1,3,3)
    plot(abs(fft(new_part)))
    
    ft = fft(new_part);
    [ma, f_new] = max(ft(1:l/2));
    
    [f_tar, f_dzg, f_new]
end

%subplot(2,2,3)
%plot(new_dzg)

%subplot(2,2,4)
%plot(abs(fft(new_dzg)))

sound(new_dzg,FS)