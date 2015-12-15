function [x,t]=note (F,dur) 
t=0:1/1000:dur;
x=sin(2*pi*F*t);%girilen bilgilerin çýkýþlarýný sinüs sinyali döndürüldü.