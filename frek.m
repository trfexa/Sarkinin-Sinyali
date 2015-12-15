function [F]=frek(n,o)%frekans d�nd�rmektedir.
nota={'do','c#','re','eb','mi','fa','f#','sol','g#','la','bb','si'}; %notolardan olu�an bir dizi yazd�k.
n=strcmp(nota,n); %Dizenin i�ine aktar�,indekside 1 art�r�r.
m=find(n,1);%n dizisinde 1 de�erinin indeksini d�nd�r�r.
F=round(16.35*(2^o)*(2^((m-1)/12)));%frekans fonksiyonu olu�turuldu.
