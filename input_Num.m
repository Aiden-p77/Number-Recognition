function [num,targets]=input_Num(number,m)
    a=m*m;
    num=zeros(a,number);
    targets=zeros(number,number);
    for i=1:number
       targets(i,i)=1; 
    end
    
    %1
    if (number>=1)        
        [x,map]=imread('.\num\1\10.bmp');
        bw=im2bw(x,map,0.4);
        bw=bw';
        num(:,1)=reshape(bw,a,1);
    end
    %2
    if (number >=2)
        [x,map]=imread('.\num\2\20.bmp');
        bw=im2bw(x,map,0.4);
        bw=bw';
        num(:,2)=reshape(bw,a,1);
    end
    %3
    if (number>=3)
        [x,map]=imread('.\num\3\30.bmp');
        bw=im2bw(x,map,0.4);
        bw=bw';
        num(:,3)=reshape(bw,a,1);
    end
    %4
    if (number>=4)
        [x,map]=imread('.\num\4\40.bmp');
        bw=im2bw(x,map,0.4);
        bw=bw';
        num(:,4)=reshape(bw,a,1);
    end
    %5
    if (number>=5)
        [x,map]=imread('.\num\5\50.bmp');
        bw=im2bw(x,map,0.4);
        bw=bw';
        num(:,5)=reshape(bw,a,1);
    end
    %6
    if (number>=6)
        [x,map]=imread('.\num\6\60.bmp');
        bw=im2bw(x,map,0.4);
        bw=bw';
        num(:,6)=reshape(bw,a,1); 
    end
    %7
    if (number>=7)
        [x,map]=imread('.\num\7\70.bmp');
        bw=im2bw(x,map,0.4);
        bw=bw';
        num(:,7)=reshape(bw,a,1); 
    end
    %8
    if (number>=8)
        [x,map]=imread('.\num\8\80.bmp');
        bw=im2bw(x,map,0.4);
        bw=bw';
        num(:,8)=reshape(bw,a,1); 
    end
    %9
    if (number>=9)
        [x,map]=imread('.\num\9\90.bmp');
        bw=im2bw(x,map,0.4);
        bw=bw';
        num(:,9)=reshape(bw,a,1);
    end
    %0
    if (number==10)
        [x,map]=imread('.\num\0\00.bmp');
        bw=im2bw(x,map,0.4);
        bw=bw';
        num(:,10)=reshape(bw,a,1);
    end
end