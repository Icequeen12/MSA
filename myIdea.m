
function[M,trasy]=myIdea(seq1,seq2,kara,nagroda,przerwa,poczatek,koniec)

if (length(seq1)>length(seq2))
    A=seq2;
    B=seq1;
else
    A=seq1;
    B=seq2;
end

iloscW=length(B)+1;
iloscK=length(A)+1;

M=zeros(iloscW,iloscK);
back = zeros(iloscW,iloscK);



M(1,:)=(0:-przerwa:-length(A)*przerwa);
M(:,1)=(0:-przerwa:-length(B)*przerwa);

back(1,2:iloscK)=70;
back(2:iloscW,1)=7;


for i=2:iloscW
    for j=2:iloscK
      
        kolumna=M(i-1,j)-przerwa;
        wers=M(i,j-1)-przerwa;
        przekatna=M(i-1,j-1);
        
        if(A(j-1)==B(i-1))
            przekatna=przekatna+nagroda;
        else 
            przekatna=przekatna-kara;
        end
        
        
        wynik = max([kolumna,wers,przekatna]);
        
        if (wynik ==kolumna)
            back(i,j)=back(i,j)+7;
        end
        if (wynik==wers)
            back(i,j)=back(i,j)+70;
        end
        
        if(wynik==przekatna)
            back(i,j)=back(i,j)+700;
        end
        M(i,j)=wynik;
    end
end
    
maxA = max(M(iloscW,:));
maxB = max(M(:,iloscK));
maxOverall = max([maxA maxB]);
[rowA colA] = find(M == maxOverall);

s1='';
s2='';
mPkt='';
linie='';
wynik=0;

row=rowA(end);
col=colA(end);

    s1=strcat(s1,A(col:length(A)));
    s2=strcat(s2,B(row:length(A)));
    
    s1=fliplr(s1);
    s2=fliplr(s2);

[trasy] =trasa(row,col,s1,s2,mPkt,linie,back,A,B,kara,nagroda,przerwa,poczatek,koniec,wynik);

for i=1:length(rowA)-1
if(length(rowA)~=1)
row=rowA(end-i);
col=colA(end-i);

s1='';
s2='';

    s1=strcat(s1,A(col:length(A)));
    s2=strcat(s2,B(row:length(A)));
    
    s1=fliplr(s1);
    s2=fliplr(s2);
    

[t2]=trasa(row,col,s1,s2,mPkt,linie,back,A,B,kara,nagroda,przerwa,poczatek,koniec,wynik);
trasy=[trasy;t2];
end
end

trasy=trasy';
end