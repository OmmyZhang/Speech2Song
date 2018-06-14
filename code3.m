len = 200000

[y fs] = audioread('lwd.m4a');
lwd = y((length(y)-len+1):length(y),1);

[y fs] = audioread('jj.m4a');
jj = 4 * y((length(y)-len+1):length(y),1); 

subplot(4,2,1);
plot(lwd);
subplot(4,2,2);
plot(abs(fft(lwd)));

subplot(4,2,3);
plot(jj);
subplot(4,2,4);
plot(abs(fft(jj)));

N = 1:len;

new_lwd = lwd' .* cos(2*pi*0 * N / fs); %平移到0（不变）
subplot(4,2,5);
plot(new_lwd);
subplot(4,2,6);
plot(abs(fft(new_lwd)));


new_jj = jj' .* cos(2*pi*24000 * N / fs); % 平移到2400Hz（中央）
subplot(4,2,7);
plot(new_jj);
subplot(4,2,8);
plot(abs(fft(new_jj)));


figure(2);
superposition = new_lwd + new_jj; % 叠加
subplot(2,1,1)
plot(superposition)
subplot(2,1,2)
plot(abs(fft(superposition)))

figure(3);
pft = fft(superposition);

lwd_f = pft .* ( (N < len/4) + (N > len*3/4) ); %截取
subplot(2,2,1)
plot(abs(lwd_f))
subplot(2,2,2)
plot(real(ifft(lwd_f)))

jj_f = pft .* (N > len/4) .* (N < len*3/4);
subplot(2,2,3)
plot(abs(jj_f))
subplot(2,2,4)
plot(real(ifft(jj_f)) .* cos(2*pi*2400*N/fs)) %移回




