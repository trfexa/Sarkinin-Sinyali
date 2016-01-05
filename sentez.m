%%
%de�i�kenler tan�mland�
fid=fopen('notalar.txt');%notalar.txt act�k
Notalar=fscanf(fid,'%c');
oktavdegeri=1;
[nota,b,c]=textread('Notalar.txt','%s %s %s'); %notalar.txt okuyoruz
fs=11000;%�rnekleme frekans�
ds=round(fs/100);%duraklama sures�
go=round(fs/10);%gec�kme sures�
notalar=zeros(1,fs);%1 den fs ye kadar 0 dan dizi olusturduk
a=zeros(1,length(notalar));%1 den notalar�n uzunluguna kadar 0lardan dizi olusturduk
durak=zeros(1,ds);%durma s�resi boyutunda s�f�rdan olu�turduk.
oktav=str2num(cell2mat(b)); 
%%
%oktav ve nota bilgisini vererek frek fonksiyonundan frekans bilgisini d�nd�r�yoruz. 
%frekans ve vuru� bilgisini g�ndererek note fonksiyonuna her notan�n
%sinyalini olu�turup bu sinyalleri de duraklama s�resi ile birlikte
%birle�tirerek notalar matrisine at�yoruz.

for i=1:(length(nota))
       vurus((i),1)=str2num(cell2mat(c(i,1)));
       frekans((i),1)=frek(nota((i),1),oktav((i),oktavdegeri));
       [x,t]=note(frekans((i),1),vurus((i),1));
       notalar=[notalar durak x];
end
plot(notalar)
%%
%notalar sinyal dizininin herbir eleman�n�n %30'u al�narak gecikme s�resi kadar �telenerek echoland� eklendi.
notalarecho=zeros(1,(length(notalar)));%echo ekleme i�lemleri asag�da devam ediyor
 for i=1:(length(notalar)) 
     f=(go+i);
     if f<(length(notalar)) 
     notalarecho(i)=notalar(i)*0.3+notalar(f);
     else
      notalarecho(i)=notalar(i)*0.3+0; 
     end
 end
 plot(notalarecho)
 %%
 % ekoyu normalize ederek genli�i 1'e �ekiyoruz.
  normalizenotalarecho=zeros(1,(length(notalar)));
 normalizenotalarecho=notalarecho/max(abs(notalarecho));
sound(normalizenotalarecho)
plot(normalizenotalarecho)
