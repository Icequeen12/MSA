function[C]= wykres(A,B,okno,treshold)

if length(A) > length(B)
  roz=length(A)-length(B);
  for i=1:roz
      B = [B 'z'];
  end
end

if length(A) < length(B)
  roz=length(B)-length(A);
  for i=1:roz
      A = [A 'z'];
  end
    
end


C=zeros(length(A),length(B));

for i=1:length(A)
    for j=1:length(B)
        if B(j)==A(i)
            C(i,j)=1;
        end
    end
end

for i=-(length(A)-1):length(A)-1
    x=diag(C,i);
if ( length(x)>=okno)
    for j=1:length(x)-okno+1
        x1=sum(x(j:okno+j-1));
        if(x1<treshold)
            if(x(j)==1)
               x(j)=-1;
            end
        end
    end
    for j=length(x)-okno+2:length(x)
            if(x(j)==1)
               x(j)=-1;
            end
    end
else 
     for j=1:length(x)
            if(x(j)==1)
               x(j)=-1;
            end
    end
end
C=C+diag(x,i);
end 

C=flipud(C);
end