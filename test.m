% 最炫民族风
% reference: http://page.renren.com/601087941/note/846515291?ref=minifeed&sfet=2012&fin=0&ff_id=601087941&feed=page_blog&tagid=846515291&statID=page_601087941_2&level=1
fs = 44100; % sample rate 
dt = 1/fs; 

T16 = 0.125; 

t16 = [0:dt:T16]; 
[temp k] = size(t16); 

t1 = linspace(0,16*T16,16*k);
t34 = linspace(0, 12*T16, 12*k);
t58 = linspace(0, 10*T16, 10*k);
t2 = linspace(0,8*T16,8*k);
t38 = linspace(0,6*T16,6*k);
t4 = linspace(0,4*T16,4*k); 
t316 = linspace(0,3*T16,3*k); 
t716 = linspace(0,7*T16,7*k); 
t8 = linspace(0,2*T16,2*k); 

[temp i] = size(t4); 
[temp j] = size(t8); 

% Modification functions 
mod1 = sin(pi*t1/t1(end));
mod34 = sin(pi*t34/t34(end));
mod58 = sin(pi*t58/t58(end));
mod38 = sin(pi*t38/t38(end));
mod716 = sin(pi*t716/t716(end));
mod2 = sin(pi*t2/t2(end)); 
mod4 = sin(pi*t4/t4(end)); 
mod8 = sin(pi*t8/t8(end)); 
mod316 = sin(pi*t316/t316(end)); 
mod16 = sin(pi*t16/t16(end)); 

f0 = 2*146.8; % reference frequency 
f0 = 220*2^(4/12); % reference freq bD

ScaleTable = [2/3 3/4 5/6 15/16 ... 
1 9/8 5/4 4/3 3/2 5/3 9/5 15/8 ... 
2 9/4 5/2 8/3 3 10/3 15/4 4 ... 
1/2 9/16 5/8]; 

% 1 note
la04 = mod1.*cos(2*pi*ScaleTable(3)*f0*t1); 

% 1/2 notes
do0d = mod2.*cos(2*pi*ScaleTable(21)*f0*t2); 
re0d = mod2.*cos(2*pi*ScaleTable(22)*f0*t2); 
mi0d = mod2.*cos(2*pi*ScaleTable(23)*f0*t2); 

fa0d = mod2.*cos(2*pi*ScaleTable(1)*f0*t2); 
so0d = mod2.*cos(2*pi*ScaleTable(2)*f0*t2); 
la0d = mod2.*cos(2*pi*ScaleTable(3)*f0*t2); 
ti0d = mod2.*cos(2*pi*ScaleTable(4)*f0*t2); 
do1d = mod2.*cos(2*pi*ScaleTable(5)*f0*t2); 
re1d = mod2.*cos(2*pi*ScaleTable(6)*f0*t2); 
mi1d = mod2.*cos(2*pi*ScaleTable(7)*f0*t2); 
fa1d = mod2.*cos(2*pi*ScaleTable(8)*f0*t2); 
so1d = mod2.*cos(2*pi*ScaleTable(9)*f0*t2); 
la1d = mod2.*cos(2*pi*ScaleTable(10)*f0*t2); 
tb1d = mod2.*cos(2*pi*ScaleTable(11)*f0*t2); 
ti1d = mod2.*cos(2*pi*ScaleTable(12)*f0*t2); 
do2d = mod2.*cos(2*pi*ScaleTable(13)*f0*t2); 
re2d = mod2.*cos(2*pi*ScaleTable(14)*f0*t2); 
mi2d = mod2.*cos(2*pi*ScaleTable(15)*f0*t2); 
fa2d = mod2.*cos(2*pi*ScaleTable(16)*f0*t2); 
so2d = mod2.*cos(2*pi*ScaleTable(17)*f0*t2); 
la2d = mod2.*cos(2*pi*ScaleTable(18)*f0*t2); 
ti2d = mod2.*cos(2*pi*ScaleTable(19)*f0*t2); 
do3d = mod2.*cos(2*pi*ScaleTable(20)*f0*t2); 

% 1/4 notes 
do0f = mod4.*cos(2*pi*ScaleTable(21)*f0*t4); 
re0f = mod4.*cos(2*pi*ScaleTable(22)*f0*t4); 
mi0f = mod4.*cos(2*pi*ScaleTable(23)*f0*t4); 

fa0f = mod4.*cos(2*pi*ScaleTable(1)*f0*t4); 
so0f = mod4.*cos(2*pi*ScaleTable(2)*f0*t4); 
la0f = mod4.*cos(2*pi*ScaleTable(3)*f0*t4); 
ti0f = mod4.*cos(2*pi*ScaleTable(4)*f0*t4); 
do1f = mod4.*cos(2*pi*ScaleTable(5)*f0*t4); 
re1f = mod4.*cos(2*pi*ScaleTable(6)*f0*t4); 
mi1f = mod4.*cos(2*pi*ScaleTable(7)*f0*t4); 
fa1f = mod4.*cos(2*pi*ScaleTable(8)*f0*t4); 
so1f = mod4.*cos(2*pi*ScaleTable(9)*f0*t4); 
la1f = mod4.*cos(2*pi*ScaleTable(10)*f0*t4); 
tb1f = mod4.*cos(2*pi*ScaleTable(11)*f0*t4); 
ti1f = mod4.*cos(2*pi*ScaleTable(12)*f0*t4); 
do2f = mod4.*cos(2*pi*ScaleTable(13)*f0*t4); 
re2f = mod4.*cos(2*pi*ScaleTable(14)*f0*t4); 
mi2f = mod4.*cos(2*pi*ScaleTable(15)*f0*t4); 
fa2f = mod4.*cos(2*pi*ScaleTable(16)*f0*t4); 
so2f = mod4.*cos(2*pi*ScaleTable(17)*f0*t4); 
la2f = mod4.*cos(2*pi*ScaleTable(18)*f0*t4); 
ti2f = mod4.*cos(2*pi*ScaleTable(19)*f0*t4); 
do3f = mod4.*cos(2*pi*ScaleTable(20)*f0*t4); 
blkf = zeros(1,i); 

% 1/8 notes 
fa0e = mod8.*cos(2*pi*ScaleTable(1)*f0*t8); 
so0e = mod8.*cos(2*pi*ScaleTable(2)*f0*t8); 
la0e = mod8.*cos(2*pi*ScaleTable(3)*f0*t8); 
ti0e = mod8.*cos(2*pi*ScaleTable(4)*f0*t8); 
do1e = mod8.*cos(2*pi*ScaleTable(5)*f0*t8); 
re1e = mod8.*cos(2*pi*ScaleTable(6)*f0*t8); 
mi1e = mod8.*cos(2*pi*ScaleTable(7)*f0*t8); 
fa1e = mod8.*cos(2*pi*ScaleTable(8)*f0*t8); 
so1e = mod8.*cos(2*pi*ScaleTable(9)*f0*t8); 
la1e = mod8.*cos(2*pi*ScaleTable(10)*f0*t8); 
tb1e = mod8.*cos(2*pi*ScaleTable(11)*f0*t8); 
ti1e = mod8.*cos(2*pi*ScaleTable(12)*f0*t8); 
do2e = mod8.*cos(2*pi*ScaleTable(13)*f0*t8); 
re2e = mod8.*cos(2*pi*ScaleTable(14)*f0*t8); 
mi2e = mod8.*cos(2*pi*ScaleTable(15)*f0*t8); 
fa2e = mod8.*cos(2*pi*ScaleTable(16)*f0*t8); 
so2e = mod8.*cos(2*pi*ScaleTable(17)*f0*t8); 
la2e = mod8.*cos(2*pi*ScaleTable(18)*f0*t8); 
ti2e = mod8.*cos(2*pi*ScaleTable(19)*f0*t8); 
do3e = mod8.*cos(2*pi*ScaleTable(20)*f0*t8); 
blke = zeros(1,j); 

% 1/16 notes 
fa0s = mod16.*cos(2*pi*ScaleTable(1)*f0*t16); 
so0s = mod16.*cos(2*pi*ScaleTable(2)*f0*t16); 
la0s = mod16.*cos(2*pi*ScaleTable(3)*f0*t16); 
ti0s = mod16.*cos(2*pi*ScaleTable(4)*f0*t16); 
do1s = mod16.*cos(2*pi*ScaleTable(5)*f0*t16); 
re1s = mod16.*cos(2*pi*ScaleTable(6)*f0*t16); 
mi1s = mod16.*cos(2*pi*ScaleTable(7)*f0*t16); 
fa1s = mod16.*cos(2*pi*ScaleTable(8)*f0*t16); 
so1s = mod16.*cos(2*pi*ScaleTable(9)*f0*t16); 
la1s = mod16.*cos(2*pi*ScaleTable(10)*f0*t16); 
tb1s = mod16.*cos(2*pi*ScaleTable(11)*f0*t16); 
ti1s = mod16.*cos(2*pi*ScaleTable(12)*f0*t16); 
do2s = mod16.*cos(2*pi*ScaleTable(13)*f0*t16); 
re2s = mod16.*cos(2*pi*ScaleTable(14)*f0*t16); 
mi2s = mod16.*cos(2*pi*ScaleTable(15)*f0*t16); 
fa2s = mod16.*cos(2*pi*ScaleTable(16)*f0*t16); 
so2s = mod16.*cos(2*pi*ScaleTable(17)*f0*t16); 
la2s = mod16.*cos(2*pi*ScaleTable(18)*f0*t16); 
ti2s = mod16.*cos(2*pi*ScaleTable(19)*f0*t16); 
do3s = mod16.*cos(2*pi*ScaleTable(20)*f0*t16); 
blks = zeros(1,k); 

% Blank Block 
blkblock = [blkf blkf blkf blkf blkf blkf blkf blkf... 
blkf blkf blkf blkf blkf blkf blkf blkf]; 

% Base Melody 
cello = [do1f do1f so0f so0f la0f la0f mi0f mi0f... 
fa0f fa0f do0f do0f fa0f fa0f so0f so0f]; 

% So-FUCKING-Long Melody 
bD1 = [mi1f la0e la0e do1f mi1f re1e re1s mi1s re1e do1e re1e do1e ...
la0f mi1f la0e la0e do1f mi1f so1e re1s mi1s re1e do1e re1e do1e ti0e ...
so0e mi1f la0e la0e do1f mi1f re1e re1s mi1s re1e do1e re1e do1e la0e ...
so0e mi1f la0e la0e do1f mi1f so1e mi1e blkf ...
la0f la0e so0e la0f la0e do1e do1f re1e do1e la0d ... 苍茫的天涯是我的爱
do1f do1e so0e do1e re1e mi1e so1e so1e mi1e re1f mi1d ...绵绵的青山脚下花正开
la1e la1e la1e so1e mi1e mi1f do1e la0e la0e la0e mi1e re1d ...什么样的节奏是最呀最摇摆
mi1e mi1e so1e mi1e re1e mi1e re1e do1e la0f so0f la0d ...什么样的歌声才是最开怀
la0f la0e so0e la0f la0e do1e do1f re1e do1e la0d ... 弯弯的河水从天上来
do1f do1e so0e do1e re1e mi1e so1e so1e mi1e re1f mi1d ...流向那万紫千红一片海
la1e la1e la1e so1e mi1e mi1f do1e la0e la0e la0e mi1e re1d ...哗啦啦的歌谣使我们的期待
mi1e mi1e so1e mi1e re1e mi1e re1e do1e la0f so0f la0d ...一路边走边唱才是最自在
mi1e mi1e so1e mi1e mi1e so1e so1e la1e do2e la1e so1f la1d ...我们要唱就要唱得最痛快
];

bD2 = [la0s do1s re1s mi1s re1s do1s la0s do1s];
bD3 = [do2e do2s do2s la1e la1s la1s so1e so1s so1s mi1e mi1s mi1s ...
re1e mi1s re1s do1e la0s so0s la0s so0s do1s re1s mi1s so1s la1s ...
re2s do2d];

f0 = 220*2^(7/12); % reference freq E

% 1 note
la04 = mod1.*cos(2*pi*ScaleTable(3)*f0*t1); 
la14 = mod1.*cos(2*pi*ScaleTable(10)*f0*t1);
ti14 = mod1.*cos(2*pi*ScaleTable(11)*f0*t1); 

% 3/4 notes
mi134 = mod34.*cos(2*pi*ScaleTable(7)*f0*t34); 

% 7/16 notes
mi1716 = mod716.*cos(2*pi*ScaleTable(7)*f0*t716); 

% 5/8 notes
la158 = mod58.*cos(2*pi*ScaleTable(10)*f0*t58); 

% 3/8 note
do138 = mod38.*cos(2*pi*ScaleTable(5)*f0*t38); 
re138 = mod38.*cos(2*pi*ScaleTable(6)*f0*t38); 

% 1/2 notes
do0d = mod2.*cos(2*pi*ScaleTable(21)*f0*t2); 
re0d = mod2.*cos(2*pi*ScaleTable(22)*f0*t2); 
mi0d = mod2.*cos(2*pi*ScaleTable(23)*f0*t2); 

fa0d = mod2.*cos(2*pi*ScaleTable(1)*f0*t2); 
so0d = mod2.*cos(2*pi*ScaleTable(2)*f0*t2); 
la0d = mod2.*cos(2*pi*ScaleTable(3)*f0*t2); 
ti0d = mod2.*cos(2*pi*ScaleTable(4)*f0*t2); 
do1d = mod2.*cos(2*pi*ScaleTable(5)*f0*t2); 
re1d = mod2.*cos(2*pi*ScaleTable(6)*f0*t2); 
mi1d = mod2.*cos(2*pi*ScaleTable(7)*f0*t2); 
fa1d = mod2.*cos(2*pi*ScaleTable(8)*f0*t2); 
so1d = mod2.*cos(2*pi*ScaleTable(9)*f0*t2); 
la1d = mod2.*cos(2*pi*ScaleTable(10)*f0*t2); 
tb1d = mod2.*cos(2*pi*ScaleTable(11)*f0*t2); 
ti1d = mod2.*cos(2*pi*ScaleTable(12)*f0*t2); 
do2d = mod2.*cos(2*pi*ScaleTable(13)*f0*t2); 
re2d = mod2.*cos(2*pi*ScaleTable(14)*f0*t2); 
mi2d = mod2.*cos(2*pi*ScaleTable(15)*f0*t2); 
fa2d = mod2.*cos(2*pi*ScaleTable(16)*f0*t2); 
so2d = mod2.*cos(2*pi*ScaleTable(17)*f0*t2); 
la2d = mod2.*cos(2*pi*ScaleTable(18)*f0*t2); 
ti2d = mod2.*cos(2*pi*ScaleTable(19)*f0*t2); 
do3d = mod2.*cos(2*pi*ScaleTable(20)*f0*t2); 

% 3/16 notes
so0316 = mod316.*cos(2*pi*ScaleTable(2)*f0*t316); 
la0316 = mod316.*cos(2*pi*ScaleTable(3)*f0*t316); 
do1316 = mod316.*cos(2*pi*ScaleTable(5)*f0*t316);
re1316 = mod316.*cos(2*pi*ScaleTable(6)*f0*t316);
mi1316 = mod316.*cos(2*pi*ScaleTable(7)*f0*t316);
la1316 = mod316.*cos(2*pi*ScaleTable(10)*f0*t316); 

% 1/4 notes 
do0f = mod4.*cos(2*pi*ScaleTable(21)*f0*t4); 
re0f = mod4.*cos(2*pi*ScaleTable(22)*f0*t4); 
mi0f = mod4.*cos(2*pi*ScaleTable(23)*f0*t4); 

fa0f = mod4.*cos(2*pi*ScaleTable(1)*f0*t4); 
so0f = mod4.*cos(2*pi*ScaleTable(2)*f0*t4); 
la0f = mod4.*cos(2*pi*ScaleTable(3)*f0*t4); 
ti0f = mod4.*cos(2*pi*ScaleTable(4)*f0*t4); 
do1f = mod4.*cos(2*pi*ScaleTable(5)*f0*t4); 
re1f = mod4.*cos(2*pi*ScaleTable(6)*f0*t4); 
mi1f = mod4.*cos(2*pi*ScaleTable(7)*f0*t4); 
fa1f = mod4.*cos(2*pi*ScaleTable(8)*f0*t4); 
so1f = mod4.*cos(2*pi*ScaleTable(9)*f0*t4); 
la1f = mod4.*cos(2*pi*ScaleTable(10)*f0*t4); 
tb1f = mod4.*cos(2*pi*ScaleTable(11)*f0*t4); 
ti1f = mod4.*cos(2*pi*ScaleTable(12)*f0*t4); 
do2f = mod4.*cos(2*pi*ScaleTable(13)*f0*t4); 
re2f = mod4.*cos(2*pi*ScaleTable(14)*f0*t4); 
mi2f = mod4.*cos(2*pi*ScaleTable(15)*f0*t4); 
fa2f = mod4.*cos(2*pi*ScaleTable(16)*f0*t4); 
so2f = mod4.*cos(2*pi*ScaleTable(17)*f0*t4); 
la2f = mod4.*cos(2*pi*ScaleTable(18)*f0*t4); 
ti2f = mod4.*cos(2*pi*ScaleTable(19)*f0*t4); 
do3f = mod4.*cos(2*pi*ScaleTable(20)*f0*t4); 
blkf = zeros(1,i); 

% 1/8 notes 
do0e = mod8.*cos(2*pi*ScaleTable(21)*f0*t8); 
re0e = mod8.*cos(2*pi*ScaleTable(22)*f0*t8); 
mi0e = mod8.*cos(2*pi*ScaleTable(23)*f0*t8);

fa0e = mod8.*cos(2*pi*ScaleTable(1)*f0*t8); 
so0e = mod8.*cos(2*pi*ScaleTable(2)*f0*t8); 
la0e = mod8.*cos(2*pi*ScaleTable(3)*f0*t8); 
ti0e = mod8.*cos(2*pi*ScaleTable(4)*f0*t8); 
do1e = mod8.*cos(2*pi*ScaleTable(5)*f0*t8); 
re1e = mod8.*cos(2*pi*ScaleTable(6)*f0*t8); 
mi1e = mod8.*cos(2*pi*ScaleTable(7)*f0*t8); 
fa1e = mod8.*cos(2*pi*ScaleTable(8)*f0*t8); 
so1e = mod8.*cos(2*pi*ScaleTable(9)*f0*t8); 
la1e = mod8.*cos(2*pi*ScaleTable(10)*f0*t8); 
tb1e = mod8.*cos(2*pi*ScaleTable(11)*f0*t8); 
ti1e = mod8.*cos(2*pi*ScaleTable(12)*f0*t8); 
do2e = mod8.*cos(2*pi*ScaleTable(13)*f0*t8); 
re2e = mod8.*cos(2*pi*ScaleTable(14)*f0*t8); 
mi2e = mod8.*cos(2*pi*ScaleTable(15)*f0*t8); 
fa2e = mod8.*cos(2*pi*ScaleTable(16)*f0*t8); 
so2e = mod8.*cos(2*pi*ScaleTable(17)*f0*t8); 
la2e = mod8.*cos(2*pi*ScaleTable(18)*f0*t8); 
ti2e = mod8.*cos(2*pi*ScaleTable(19)*f0*t8); 
do3e = mod8.*cos(2*pi*ScaleTable(20)*f0*t8); 
blke = zeros(1,j); 

% 1/16 notes 
do0s = mod16.*cos(2*pi*ScaleTable(21)*f0*t16); 
re0s = mod16.*cos(2*pi*ScaleTable(22)*f0*t16); 
mi0s = mod16.*cos(2*pi*ScaleTable(23)*f0*t16); 

fa0s = mod16.*cos(2*pi*ScaleTable(1)*f0*t16); 
so0s = mod16.*cos(2*pi*ScaleTable(2)*f0*t16); 
la0s = mod16.*cos(2*pi*ScaleTable(3)*f0*t16); 
ti0s = mod16.*cos(2*pi*ScaleTable(4)*f0*t16); 
do1s = mod16.*cos(2*pi*ScaleTable(5)*f0*t16); 
re1s = mod16.*cos(2*pi*ScaleTable(6)*f0*t16); 
mi1s = mod16.*cos(2*pi*ScaleTable(7)*f0*t16); 
fa1s = mod16.*cos(2*pi*ScaleTable(8)*f0*t16); 
so1s = mod16.*cos(2*pi*ScaleTable(9)*f0*t16); 
la1s = mod16.*cos(2*pi*ScaleTable(10)*f0*t16); 
tb1s = mod16.*cos(2*pi*ScaleTable(11)*f0*t16); 
ti1s = mod16.*cos(2*pi*ScaleTable(12)*f0*t16); 
do2s = mod16.*cos(2*pi*ScaleTable(13)*f0*t16); 
re2s = mod16.*cos(2*pi*ScaleTable(14)*f0*t16); 
mi2s = mod16.*cos(2*pi*ScaleTable(15)*f0*t16); 
fa2s = mod16.*cos(2*pi*ScaleTable(16)*f0*t16); 
so2s = mod16.*cos(2*pi*ScaleTable(17)*f0*t16); 
la2s = mod16.*cos(2*pi*ScaleTable(18)*f0*t16); 
ti2s = mod16.*cos(2*pi*ScaleTable(19)*f0*t16); 
do3s = mod16.*cos(2*pi*ScaleTable(20)*f0*t16); 
blks = zeros(1,k); 

% So-FUCKING-Long Melody 
E1 = [la0f la0e so0e la0f do1f re1e mi1s re1s do1e re1e mi1d ...你是我天边最美的云彩
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
];

E2 = [la14 ... 态
la1316 la1s la1e la1e la1316 so1s mi1e re1e re1316 re1s ....
mi1316 so1s mi1316 re1s do1316 la0s ... 呀啦啦啦喔了呗伊啦嗦了喔了呗啦
la0f la0e so0e la0f la0e do1e re1e so1s re1s do1e re1e mi1d ... 我听见你心中动人的天籁
la1e so1e mi1e re1e so1e mi1e re1e do1e do1d ...登上天外云霄的舞台
];
E3 = [la14 ... 态
];
E4 = [blkf do1e re1e mi134 so1e mi1e la158 do1e so1e mi1e re138 re1s re1s ...
re1e re1e do1e re1e mi1716 mi1s mi1e re1s do1s ti0e do1s re1s mi134 ...
so1e mi1e do2f la1d la1e do1e re1f so1d la1f ti14];
E5 = [la14 blkf blkf mi1e so1e mi1e so1e ...
mi1f la0316 la0s do1f la0e mi1s la0s do1316 do1s re1e do1s re1s mi1d ...我听见你心中那动人的天籁
mi1f la1316 la1s so1f re1316 re1s mi1d mi1s re1s do1s la0s ...忽如一夜春风袭来满地桃花开
mi0s re0s mi0s so0s do1f la0316 la0s re1f ... 我忍不住去采
so0316 so0s mi0f so0316 so0s do1d ...我忍不住去摘
la0f do1316 la0s mi1316 mi1s re1316 mi1s la14... 我敞开胸怀为你等待。令台令台台
];

zxmzf = [bD1 E1 E2 bD2 bD1 E1 E3 bD3 E4 E1 E5 E1 E3];
%zxmzf = [E4];
s = zxmzf/max(zxmzf); 
sound(s,fs); 