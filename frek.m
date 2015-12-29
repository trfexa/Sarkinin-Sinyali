function [frekans]=frek(nota,oktav,oktavdegeri)%frekans d�nd�rmektedir.
notalar={'Do','C#','Re','Eb','Mi','Fa','F#','Sol','G#','La','Bb','Si'}; %Notalar�m�z diziye ekledik.
n=strcmp(notalar,nota); %Fonksiyona g�nderdi�imiz notay� dizi i�erisinde arat�r ve budu�u indekse 1 atar
m=find(n,1);%n dizisinde 1 de�erinin indeksini d�nd�r�r.
 if(nargin==0)
disp ('veri giri�i yap�n�z');
        elseif (nargin==1)
 
            if(m==13)
               frekans=0;
            else
                
              
        frekans=16.35*(2^(4+oktavdegeri))*(2^((m-1)/12));%frekans fonksiyonu
       end
    
    elseif (nargin==2)
       
          if(m==13)
               frekans=0;
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