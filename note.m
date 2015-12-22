function [x,t] = note(f,vurus) %fonksiyonu tanimliyoruz.girilicek argumanlari tanýmladýk
fs=8192;%örnekleme frekansý
t = 0:1/fs:vurus; %0 dan dur a kadar 1/(100*ff) kadar artýyor
%xx,tt]=note(1,3);
%plot(tt,xx)
%grafigi cizdirmek icin ustteki kodu command window'a yazariz

    elemanS = length(tt); %% Eleman sayýsý
    
    attack = linspace(0,1.5,(elemanS*2/8));
    
    decay = linspace(1.5-(0.5/(elemanS/8)),1,(elemanS/8));
    
    sustain = ones(1,(elemanS/2));
    
    relase = linspace(1-(1/(elemanS/8)),0,(elemanS/8));
    
    zarf = [attack, decay, sustain, relase];

    x = zarf .* sin(2*pi*f*t + zarf); %% zarflý sinüs