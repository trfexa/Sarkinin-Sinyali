function [frekans]=frek(nota,oktav) %Girilen nota ve oktava göre frekans döndürülüyor.
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'}; %Notalarýmýz bir dizi içerisinde yazýldý.
n=strcmp(notalar,nota); %Fonksiyona gönderdiðimiz notayý dizi içerisinde aratýr ve buduðu indekse 1 atar
m=find(n,1);%n dizisinde 1 deðerinin indeksini döndürür.

if (nargin==0)
    
    disp ('Lütfen veri giriþi yapýnýz: ')
    
else if (nargin==1)
        if(m==13)
            frekans=0;
        else
           frekans=floor(16.35*(2^4)*(2^((m-1)/12))); % Frekans fonksiyonu oluþturuldu. 
           
        end
    else 
        if (m==13) 
            frekans=0;
        else frekans=floor(16.35*(2^oktav)*(2^((m-1)/12))); % Frekans fonksiyonu oluþturuldu.
        end
        
    end
end