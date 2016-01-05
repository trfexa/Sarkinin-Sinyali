function [frekans]=frek(nota,oktav,oktavdegeri)%frekans döndürmektedir.
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'}; %Notalarýmýz diziye ekledik.
n=strcmp(notalar,nota); %Fonksiyona gönderdiðimiz notayý dizi içerisinde aratýr ve buduðu indekse 1 atar
m=find(n,1);%n dizisinde 1 deðerinin indeksini döndürür.
 if(nargin==0)%hicbir deger girilmediyse 
disp ('veri giriþi yapýnýz');%veri giriþi yoksa hata mesajý veriri
        elseif (nargin==1)
            if(m==13)
               frekans=0;
            else             
        frekans=16.35*(2^(4+oktavdegeri))*(2^((m-1)/12));%frekans fonksiyonu yazýldý.
            end    
    elseif (nargin==2)      
          if(m==13)
               frekans=0;% sus geldiði zaman geri dönmesi saðlanýyor.
        else
            frekans=16.35*(2^(oktav))*(2^((m-1)/12));
          end
    else
        if(m==13)
               frekans=0;
        else
            frekans=16.35*(2^(oktav+oktavdegeri))*(2^((m-1)/12));
        end
    end
end 