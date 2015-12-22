function [frekans]=frek(nota,oktav) %Girilen nota ve oktava g�re frekans d�nd�r�l�yor.
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'}; %Notalar�m�z bir dizi i�erisinde yaz�ld�.
n=strcmp(notalar,nota); %Fonksiyona g�nderdi�imiz notay� dizi i�erisinde arat�r ve budu�u indekse 1 atar
m=find(n,1);%n dizisinde 1 de�erinin indeksini d�nd�r�r.

if (nargin==0)
    
    disp ('L�tfen veri giri�i yap�n�z: ')
    
else if (nargin==1)
        if(m==13)
            frekans=0;
        else
           frekans=floor(16.35*(2^4)*(2^((m-1)/12))); % Frekans fonksiyonu olu�turuldu. 
           
        end
    else 
        if (m==13) 
            frekans=0;
        else frekans=floor(16.35*(2^oktav)*(2^((m-1)/12))); % Frekans fonksiyonu olu�turuldu.
        end
        
    end
end