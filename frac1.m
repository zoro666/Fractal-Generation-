function[B] = frac1(L,M,P,num,~,~,~)

I=zeros(L,M);
Imax=0;
xmin=-3;
xmax=3;
ymin=0;
ymax=9;
x=0;
y=0;

x1=0;
x2=0;
y1=0;
y2=0;
for loop=1:num

    r=rand();
    if r<0
        r=0;
    end
    if r>1
        r=1;
    end
   sum = P(1);
   k=1;
   while (sum<r)
      k=k+1 ;
      sum = sum + P(k);
   end
    [x,y] = wfn(x,y,k);
   x1=min(x,x1);
   x2=max(x,x2);
   y1=min(y,y1);
   y2=max(y,y2);
   
   if (x>xmin)&&(x<xmax)&&(y>ymin)&&(y<ymax)
      l= ceil(L*(x-xmin)/(xmax-xmin));
      m= ceil(M*(y-ymin)/(ymax-ymin));
      I(l,m)=I(l,m)+1;
      Imax=max(I(l,m),Imax);
   end
   
   
   
end

I = uint8(I>1)*255;
B=I;
end

%imtool(I)