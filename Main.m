clc
clear 
close all
%% defualt dimensions
number=10;
m=11;

%% Input number and targets
if (number<=0 || number>11)
   disp('Error inserting parameter n');
   exit;
end
disp('---Read number and target---');
[num,targets]=input_Num(number,m);
fprintf('%d number read. \n',number);

%% Network and feedforward
disp('---Run network---');
net=runRecognition(num,targets,number);

%% input
[x,map]=imread('.\num\2\22.bmp');
s=im2bw(x,map,0.4);
g=s';
v=reshape(g,m*m,1);
%v=num(:,hlt);
%s=reshape(v,10,10);
%s=s';
figure;
imshow(s);title('input');
output=sim(net,v);
output=compet(output);
answer=find(compet(output)==1);
figure;
v=num(:,answer);
s=reshape(v,m,m);
s=s';
imshow(s);title('input simulate ');

%% Noise input

noiseInp=round(1+(number-1)*rand(1));    %An arbitrary number of noises
noiseV=num(:,noiseInp)+randn(m*m,1)*0.2;
figure;
s=reshape(noiseV,m,m);
s=s';
imshow(s);title('Noise input');
output2=sim(net,noiseV);
output2=compet(output2);
answer2=find(compet(output2)==1);
figure;
noiseV=num(:,answer2);
s=reshape(noiseV,m,m);
s=s';
imshow(s);title('Noise input simulate');