%%
%deðiþkenler tanýmlandý
fid=fopen('notalar.txt');%notalar.txt actýk
Notalar=fscanf(fid,'%c');
oktavdegeri=1;
[nota,b,c]=textread('Notalar.txt','%s %s %s'); %notalar.txt okuyoruz
fs=11000;%örnekleme frekansý
ds=round(fs/100);%duraklama suresý
go=round(fs/10);%gecýkme suresý
notalar=zeros(1,fs);%1 den fs ye kadar 0 dan dizi olusturduk
a=zeros(1,length(notalar));%1 den notalarýn uzunluguna kadar 0lardan dizi olusturduk
durak=zeros(1,ds);%durma süresi boyutunda sýfýrdan oluþturduk.
oktav=str2num(cell2mat(b)); 
%%
%oktav ve nota bilgisini vererek frek fonksiyonundan frekans bilgisini döndürüyoruz. 
%frekans ve vuruþ bilgisini göndererek note fonksiyonuna her notanýn
%sinyalini oluþturup bu sinyalleri de duraklama süresi ile birlikte
%birleþtirerek notalar matrisine atýyoruz.

for i=1:(length(nota))
       vurus((i),1)=str2num(cell2mat(c(i,1)));
       frekans((i),1)=frek(nota((i),1),oktav((i),oktavdegeri));
       [x,t]=note(frekans((i),1),vurus((i),1));
       notalar=[notalar durak x];
end
plot(notalar)
%%
%notalar sinyal dizininin herbir elemanýnýn %30'u alýnarak gecikme süresi kadar ötelenerek echolandý eklendi.
notalarecho=zeros(1,(length(notalar)));%echo ekleme iþlemleri asagýda devam ediyor
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
 % ekoyu normalize ederek genliði 1'e çekiyoruz.
  normalizenotalarecho=zeros(1,(length(notalar)));
 normalizenotalarecho=notalarecho/max(abs(notalarecho));
sound(normalizenotalarecho)
plot(normalizenotalarecho)
